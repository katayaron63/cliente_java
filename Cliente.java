/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author catalinazurita
 * PUNTO 6: Entidad (modelo) del objeto
 */
public class Cliente {

    private int id_cliente;
    private String nombre;
    private String apellido;
    private String correo;
    private String telefono;

    //constructor por defecto
    public Cliente() {
        this.id_cliente = 0;
        this.nombre = "Sin Nombre";
        this.apellido = "Sin Apellido";
        this.correo = "Sin Correo";
        this.telefono = "Sin Telefono";
    }

    //sobre carga del constructor con parametros
    public Cliente(int _id_cliente, String _nombre, String _apellido, String _correo, String _telefono) {
        this.id_cliente = _id_cliente;
        this.nombre = _nombre;
        this.apellido = _apellido;
        this.correo = _correo;
        this.telefono = _telefono;
    }

    //sobre carga del constructor con Objeto por parametro
    public Cliente(Cliente _cliente) {
        this.id_cliente = _cliente.getID_cliente();
        this.nombre = _cliente.getNombre();
        this.apellido = _cliente.getApellido();
        this.correo = _cliente.getCorreo();
        this.telefono = _cliente.getTelefono();
    }

    public int getID_cliente() {
        return id_cliente;
    }

    public void setID_cliente(int _entrada) {
        this.id_cliente = _entrada;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String _entrada) {
        this.nombre = _entrada;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String _entrada) {
        this.apellido = _entrada;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String _entrada) {
        this.correo = _entrada;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String _entrada) {
        this.telefono = _entrada;
    }

}
