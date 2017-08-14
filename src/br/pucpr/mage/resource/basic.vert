#version 330

//Matriz de transformação World
uniform mat4 uWorld;

//Matrizes de transformação da camera
uniform mat4 uView;         //Posicionamento
uniform mat4 uProjection;   //Abertura

//Atributos do vértice: posição e cor
//São variáveis de entrada do shader, portanto, devem ser associadas a buffers pelo java
in vec3 aPosition;

void main(){
    //Transforma a posição do triangulo coordenadas do modelo para coordenadas de projeção
    gl_Position = uProjection * uView * uWorld * vec4(aPosition, 1.0);
}