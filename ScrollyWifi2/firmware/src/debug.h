/* 
 * File:   debug.h
 * Author: mjb
 *
 * Created on November 23, 2015, 10:09 AM
 */

#ifndef DEBUG_H
#define	DEBUG_H
#if defined(SYS_ASSERT) && defined (SYS_ASSERT_CUSTOM)
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
//#include "system_definitions.h"

void DebugAssert ( bool test, char *message );

#endif

#endif	/* DEBUG_H */

