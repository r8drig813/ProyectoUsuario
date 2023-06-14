package com.example.proyecto_iweb.models.beans;

public class Credencial {

    private String correo;
    private String contraseniaHashed;
    private int idUsuario;

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseniaHashed() {
        return contraseniaHashed;
    }

    public void setContraseniaHashed(String contraseniaHashed) {
        this.contraseniaHashed = contraseniaHashed;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
}
