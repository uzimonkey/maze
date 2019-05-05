#include "stb_image.h"
#include <stdlib.h>

int maze_w, maze_h;
unsigned char *maze;

void die(const char *message) {
  fprintf(stderr, "%s\n", message);
  exit(EXIT_FAILURE);
}

int main(int argc, char *argv[]) {
  printf("Loading image %s...\n", argv[1]);
  maze = stbi_load(argv[1], &maze_w, &maze_h, NULL, 3);
  if(maze == NULL)
    die(stbi_failure_reason());
}
