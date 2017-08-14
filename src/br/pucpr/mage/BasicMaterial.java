package br.pucpr.mage;

public class BasicMaterial implements Material {

    private Shader shader = Shader.loadProgram("/br/pucpr/mage/resource/basic");
    @Override
    public void setShader(Shader shader) {
        this.shader = shader;
    }

    @Override
    public Shader getShader() {
        return shader;
    }

    @Override
    public void apply() {
    }
}
