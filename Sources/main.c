/*
 * Main Source File
 * 
 * For testing start appimage
 * 
 */

#include "appimage.h"

 /************************************************************
 *                       M  A  I  N                         *
 ************************************************************/
int main(int argc, char** argv)
{
	appCreate(1280, 720);
	appRun();
	shpExit();
	sprExit();
	appExit();
	return 0;
}
