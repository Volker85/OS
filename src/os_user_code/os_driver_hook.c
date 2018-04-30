#include "os_firstinc.h"
/*
RQ: drivers shall be easy to be included
RQ: kernel shall be independent of the driver support for the particular system (minimal need drivers only)
The subsystem shall define the interface name for the outside, and which name the driver shall use to provide the functionality to the subsystem
*/
/* read the unix / linux / windows driver model, how do others solve this issue */
/*#warn "os_driver_hook.c not yet implemented"*/