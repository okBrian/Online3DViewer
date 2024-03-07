#ifndef SHADER_H
#define SHADER_H

#include <stdio.h>
#include <stdlib.h>

#include <glad/glad.h>
#include <logger.h>

struct ShaderProgram {
  GLuint id;
  char* vertPath;
  char* fragPath;
};
const char* parseShaderFile(const char* path);
int shaderInit(struct ShaderProgram* sp, char* vertexPath, char* fragmentPath);
void shaderShutdown(struct ShaderProgram* sp);


#endif