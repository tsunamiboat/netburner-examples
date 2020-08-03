#include <predef.h>
#include <stdio.h>
#include <ctype.h>
#include <startnet.h>
#include <autoupdate.h>
#include <dhcpclient.h>
#include <sim.h> //System Identification Module - Structures containing registers mapped to the appropriate memory addresses


extern "C" {
void UserMain(void * pd);
}

const char * AppName="Quaternion Rotation Math Off-loader";


//Define a quaternion as 4 floats in order
typedef struct{
	float cos;
	float sinX;
	float sinY;
	float sinZ;
} quaternion;

//Chip select memory address definitions
#define BASEADDRESS 0x02000000
#define WAIT_STATES 0x8

//Register Mask and Offset Definitions
//Address Register
#define CSAR_BA_MASK  0xFFFF0000
#define CSAR_BA_OFFSET    15
//Mask Register
#define CSMR_BAM_OFFSET   15
#define CSMR_WP_OFFSET     8
#define CSMR_V_OFFSET      0
//Control Register
#define CSCR_SWS_OFFSET   26
#define CSCR_SWSEN_OFFSET 23
#define CSCR_EXTS_OFFSET  22
#define CSCR_ASET_OFFSET  20
#define CSCR_RDAH_OFFSET  18
#define CSCR_WRAH_OFFSET  16
#define CSCR_WS_OFFSET    10
#define CSCR_BLS_OFFSET    9
#define CSCR_AA_OFFSET     8
#define CSCR_PS_OFFSET     6
#define CSCR_BEM_OFFSET    5
#define CSCR_BSTR_OFFSET   4
#define CSCR_BSTW_OFFSET   3

bool bCSInit;

void initChipSelect( bool en )
{
	sim2.cs[1].cscr = (WAIT_STATES << CSCR_WS_OFFSET) | (0x1 << CSCR_AA_OFFSET); // Set the number of wait states between writes/reads and enable automatic acknowledgment
	sim2.cs[1].csar = (BASEADDRESS & CSAR_BA_MASK);
	sim2.cs[1].csmr = en ? (0x1 << CSMR_V_OFFSET): ~(0x1 << CSMR_V_OFFSET); //Set mask size to 64KB (default) and enable or disable chip select
																			//With this, any address 0x02000000 to 0x0200FFFF will trigger the external select
	bCSInit = en;
}

void writeVector( quaternion vector)
{
	if (!bCSInit) initChipSelect(true);
	*(quaternion *)(BASEADDRESS) = vector;
}

void writeRotation( quaternion rotate )
{
	if (!bCSInit) initChipSelect(true);
	*(quaternion *)(BASEADDRESS+4) = rotate;
}

quaternion outputQuaternion( void )
{
	if (!bCSInit) initChipSelect(true);
	return *(quaternion *) (BASEADDRESS+8);
}



void UserMain(void * pd) {
	InitializeStack();
	GetDHCPAddressIfNecessary(); //NetBurner devices have a networking task built-in to most apps. This simply starts that task.
	OSChangePrio(MAIN_PRIO);
	EnableAutoUpdate(); /*This listens for TCP network updates. Should a PC send a request to update the app, the NetBurner is listening
                          This makes turn around programming/prototyping time quite short, and the feature rarely gets disabled, however
    					  it would probably be wise to disable on a production device. */

	iprintf("Application %s started\n", AppName);

	quaternion vector, rotate, result;

	//Start with a vector (1,0,0)
	vector.cos = 0;
	vector.sinX = 1;
	vector.sinY = 0;
	vector.sinZ = 0;
	//Rotate about Y axis (0,1,0) clockwise by 90 degrees
	rotate.cos = 2^(1/2)/2;
	rotate.sinX = 0;
	rotate.sinY = 2^(1/2)/2;
	rotate.sinZ = 0;

	while (1) {
		writeVector(vector);
		writeRotation(rotate);
		result = outputQuaternion();

		iprintf("Output quaternion is %f, %f, %f, %f", result.cos, result.sinX, result.sinY, result.sinZ);

		OSTimeDly(TICKS_PER_SECOND);
	}
}
