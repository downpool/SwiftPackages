//
//  projects.cpp
//  projects
//
//  Created by donghyeon choi on 11/27/23.
//

#include <os/log.h>

#include <DriverKit/IOUserServer.h>
#include <DriverKit/IOLib.h>

#include "projects.h"

kern_return_t
IMPL(projects, Start)
{
    kern_return_t ret;
    ret = Start(provider, SUPERDISPATCH);
    os_log(OS_LOG_DEFAULT, "Hello World");
    return ret;
}
