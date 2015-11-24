#include <debug.h>
#include <stdbool.h>
#include "system_definitions.h"
#include "system/console/sys_console.h"
/* for SYS_ASSERT */
void DebugAssert ( bool test, char *message )
{
    if(!test)
    {
        DBPRINTF("%s",message);
        while(true);
    }
}


