/**
* writer.c - a utility for writing text to a file.
*/

#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>
//#include <ctype.h>

int main( int argc, char **argv) {
	if (argc != 3) {
		syslog(LOG_ERR, "Did not specify two arguments! Specified %d!", argc);
		printf("Usage: writer <write file> <write str>\n");
		return 1;
	}
	openlog(NULL, 0, LOG_USER);
    FILE *fp = fopen(argv[1],"w");
    if ( fp != NULL ) {
		fputs(argv[2], fp);	
		fclose(fp);
	} else {
		syslog(LOG_ERR, "Could not open %s!", argv[1]);
	}
    return 0;
}
