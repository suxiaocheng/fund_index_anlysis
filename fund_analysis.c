#include <stdio.h>
#include "debug.h"

int main(int argc, char **argv)
{
	init_log_file(NULL);
	debug("start to analysis\n");
	
	
	close_log_file();
	return 0;
}
