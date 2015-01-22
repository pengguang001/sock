/* -*- c-basic-offset: 8; -*-
 *
 * Copyright (c) 1993 W. Richard Stevens.  All rights reserved.
 * Permission to use or modify this software and its documentation only for
 * educational purposes and without fee is hereby granted, provided that
 * the above copyright notice appear in all copies.  The author makes no
 * representations about the suitability of this software for any purpose.
 * It is provided "as is" without express or implied warranty.
 */

#include	"sock.h"
#include	<ctype.h>

void
pattern(char *ptr, int len)
{
	char	c;

	/* david */
	FILE* fp = fopen(write_file, "rb");
	if (fp) {
		writelen = fread(ptr, 1, len, fp);
		if (verbose) fprintf(stderr, "%d bytes from %s\n", writelen, write_file);
		fclose(fp);
		return;
	}

	c = 0;
	while(len-- > 0)  {
		while(isprint((c & 0x7F)) == 0)
			c++;	/* skip over nonprinting characters */
		*ptr++ = (c++ & 0x7F);
	}
}
