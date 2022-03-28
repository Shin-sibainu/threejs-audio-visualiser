void main() 
{
     vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    // //elevation
    // float elevation = sin(modelPosition.x * uFrequency.x + uTime) * 0.1;
    // elevation += sin(modelPosition.y * uFrequency.y + uTime) * 0.1;

    // modelPosition.z += elevation;

    // modelPosition.z += sin(modelPosition.x); 

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;
    gl_Position = projectionPosition;
}