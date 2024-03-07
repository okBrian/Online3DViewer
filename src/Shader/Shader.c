#include "Shader.h"

const char* parseShaderFile(const char* path) {
  char * buffer = 0;
  long length;
  FILE * f = fopen (path, "rb");

  if (f)
  {
    fseek (f, 0, SEEK_END);
    length = ftell (f);
    fseek (f, 0, SEEK_SET);
    buffer = malloc (length);
    if (buffer)
    {
      fread (buffer, 1, length, f);
    }
    fclose (f);
  }
  return buffer;
}

int shaderInit(struct ShaderProgram* sp, char* vertexPath, char* fragmentPath) {
  const char* vertBuffer = parseShaderFile(vertexPath);
  const char* fragBuffer = parseShaderFile(fragmentPath);
  LOG_TRACE("%s\n", vertBuffer);
  LOG_TRACE("%s\n", fragBuffer);

  GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertexShader, 1, &vertBuffer, NULL);
	glCompileShader(vertexShader);

	GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragmentShader, 1, &fragBuffer, NULL);
	glCompileShader(fragmentShader);

	sp->id = glCreateProgram();
	glAttachShader(sp->id, vertexShader);
	glAttachShader(sp->id, fragmentShader);
	glLinkProgram(sp->id);
  LOG_TRACE("%d\n", sp->id);

	glDeleteShader(vertexShader);
	glDeleteShader(fragmentShader);
  free((char*)vertBuffer);
  free((char*)fragBuffer); 

  return 0;
}

void shaderShutdown(struct ShaderProgram* sp) {
  free(sp);
}

