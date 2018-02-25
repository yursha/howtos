#include <unistd.h>

#include "stdio.h"

int printf(const char *format, ...) {
  const char msg[] = "Hello world hijacked!\n";
  write( STDOUT_FILENO, msg, sizeof( msg ) - 1 );
  return 0;
}
