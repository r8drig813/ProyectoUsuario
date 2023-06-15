package com.example.proyecto_iweb.models.daos;

import com.example.proyecto_iweb.models.beans.Cuentas;

import java.sql.*;
import java.util.ArrayList;

public class CuentasDaos {
 /*-------------------USUARIOS----------------------------*/
    public ArrayList<Cuentas> listarCuentas(){
        ArrayList<Cuentas> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from cuentas";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while(resultSet.next()){
                Cuentas cuentas = new Cuentas();
                cuentas.setIdCuentas(resultSet.getInt(1));
                cuentas.setNombre(resultSet.getString(2));
                cuentas.setApellido(resultSet.getString(3));
                cuentas.setNickname(resultSet.getString(4));
                cuentas.setDireccion(resultSet.getString(5));
                cuentas.setCorreo(resultSet.getString(6));
                cuentas.setFoto(resultSet.getString(8));
                cuentas.setDescripcion(resultSet.getString(9));
                cuentas.setDesabilitado(resultSet.getBoolean(10));
                lista.add(cuentas);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }

    public ArrayList<Cuentas> listarCuentasEmpleados(){
        ArrayList<Cuentas> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from cuentas where Roles_idRoles = '2';";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while(resultSet.next()){
                Cuentas cuentas = new Cuentas();
                cuentas.setIdCuentas(resultSet.getInt(1));
                cuentas.setNombre(resultSet.getString(2));
                cuentas.setApellido(resultSet.getString(3));
                cuentas.setNickname(resultSet.getString(4));
                cuentas.setDireccion(resultSet.getString(5));
                cuentas.setCorreo(resultSet.getString(6));
                cuentas.setFoto(resultSet.getString(8));
                cuentas.setDescripcion(resultSet.getString(9));
                cuentas.setDesabilitado(resultSet.getBoolean(10));
                lista.add(cuentas);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }

    public ArrayList<Cuentas> listarCuentasUsuarios(){
        ArrayList<Cuentas> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from cuentas where Roles_idRoles = '3'";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while(resultSet.next()){
                Cuentas cuentas = new Cuentas();
                cuentas.setIdCuentas(resultSet.getInt(1));
                cuentas.setNombre(resultSet.getString(2));
                cuentas.setApellido(resultSet.getString(3));
                cuentas.setNickname(resultSet.getString(4));
                cuentas.setDireccion(resultSet.getString(5));
                cuentas.setCorreo(resultSet.getString(6));
                cuentas.setFoto(resultSet.getString(8));
                cuentas.setDescripcion(resultSet.getString(9));
                cuentas.setDesabilitado(resultSet.getBoolean(10));
                lista.add(cuentas);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }

    public Cuentas listar(String id) {
        Cuentas cuentas = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from cuenta where idCuenta = ?";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, id);

            try (ResultSet rs = preparedStatement.executeQuery()) {
                if (rs.next()) {
                    cuentas = new Cuentas();
                    cuentas.setIdCuentas(rs.getInt(1));
                    cuentas.setNombre(rs.getString(2));
                    cuentas.setApellido(rs.getString(3));
                    cuentas.setNickname(rs.getString(4));
                    cuentas.setDireccion(rs.getString(5));
                    cuentas.setCorreo(rs.getString(6));
                    cuentas.setDescripcion(rs.getString(8));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return cuentas;
    }

    public void actualizar(Cuentas cuentas) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/mydb";
        String sql = "UPDATE cuentas SET descripcion = ?,direccion = ?,correo = ?, contrasenia = ? WHERE idCuentas = ?";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1, cuentas.getDescripcion());
            pstmt.setString(2, cuentas.getDireccion());
            pstmt.setString(3,cuentas.getCorreo());
            pstmt.setString(4,cuentas.getCorreo());
            pstmt.setInt(5, cuentas.getIdCuentas());

            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /*public ArrayList<Cuentas> perfil(){
        ArrayList<Cuentas> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "SELECT * FROM cuentas where idCuentas = 100 and Roles_idRoles = 3";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while(resultSet.next()){
                Cuentas cuentas = new Cuentas();
                cuentas.setIdCuentas(resultSet.getInt(1));
                cuentas.setNombre(resultSet.getString(2));
                cuentas.setApellido(resultSet.getString(3));
                cuentas.setNickname(resultSet.getString(4));
                cuentas.setDirecion(resultSet.getString(5));
                cuentas.setCorreo(resultSet.getString(6));
                cuentas.setContrasenia(resultSet.getString(7));
                cuentas.setFoto(resultSet.getBlob(8));
                cuentas.setDescripcion(resultSet.getString(9));
                cuentas.setDesabilitado(resultSet.getBoolean(10));
                lista.add(cuentas);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }*/




}

