#version 300 es
//fog
layout(location = 0) in vec4 position;
layout(location = 1) in vec4 color;
layout(location = 2) in vec3 normal;
layout(location = 3) in vec2 texCoordIn;
out vec4 v_color;
out vec3 v_normal;
out vec2 v_texcoord;
out vec3 v_position;

uniform mat4 modelViewProjectionMatrix;
uniform mat4 modelViewMatrix;
uniform mat3 normalMatrix;
uniform bool passThrough;
uniform bool shadeInFrag;

void main()
{
    v_color = color;
    v_normal = normal;
    v_texcoord = texCoordIn;
    v_position = (modelViewMatrix * position).xyz;
    
    gl_Position = modelViewProjectionMatrix * position;
}
