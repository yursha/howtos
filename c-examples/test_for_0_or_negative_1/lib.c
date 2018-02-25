#include "lib.h"

int test_me(int value) {
  if (value != 0) {
    return 0xFF;
  }
  if (value == -1) {
    return 0xFFF;
  }
  return 0xFFFF;
}
