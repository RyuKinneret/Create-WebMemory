package pe.example.entity;

import java.math.BigDecimal;
import java.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class Auto {

    private Integer auto_id;
    private String marca;
    private String modelo;
    private String color;
    private BigDecimal precio;
    @DateTimeFormat(pattern = "yyyy-MM-dd", iso = ISO.DATE)
    private LocalDate fecha_ingreso;
    private Integer año_fabricacion;
    private Integer kilometraje;
    private String estado;
    private String tipo_combustible;

    public Auto() {}

    public Auto(Integer auto_id, String marca, String modelo, String color, BigDecimal precio, LocalDate fecha_ingreso, 
                Integer año_fabricacion, Integer kilometraje, String estado, String tipo_combustible) {
        this.auto_id = auto_id;
        this.marca = marca;
        this.modelo = modelo;
        this.color = color;
        this.precio = precio;
        this.fecha_ingreso = fecha_ingreso;
        this.año_fabricacion = año_fabricacion;
        this.kilometraje = kilometraje;
        this.estado = estado;
        this.tipo_combustible = tipo_combustible;
    }

    // Getters y Setters
    public Integer getAuto_id() {
        return auto_id;
    }

    public void setAuto_id(Integer auto_id) {
        this.auto_id = auto_id;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public LocalDate getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(LocalDate fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public Integer getAño_fabricacion() {
        return año_fabricacion;
    }

    public void setAño_fabricacion(Integer año_fabricacion) {
        this.año_fabricacion = año_fabricacion;
    }

    public Integer getKilometraje() {
        return kilometraje;
    }

    public void setKilometraje(Integer kilometraje) {
        this.kilometraje = kilometraje;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTipo_combustible() {
        return tipo_combustible;
    }

    public void setTipo_combustible(String tipo_combustible) {
        this.tipo_combustible = tipo_combustible;
    }
}

