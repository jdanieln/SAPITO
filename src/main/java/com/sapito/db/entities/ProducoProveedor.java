/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author chef
 */
@Entity
@Table(name = "ProductoProveedor")
public class ProducoProveedor implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @NotNull
    @Column(name = "UNIDAD")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String unidad;
    
    @NotNull
    @Column(name = "COSTO")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String costo;
    
    @NotNull
    @Column(name = "STATUS")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String status;
    
    
    
    @JoinColumn(name = "ID_PROVEEDOR")
    @ManyToOne
    private Proveedor proveedor;
    
    @JoinColumn(name = "ID_PRODUCTO")
    @ManyToOne
    private Producto producto;

    @JoinColumn(name = "ID_PRODUCTOSENORDEN")
    @ManyToOne
    private ProducoProveedor productoComprado;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the proveedor
     */
    public Proveedor getProveedor() {
        return proveedor;
    }

    /**
     * @param proveedor the proveedor to set
     */
    public void setProveedor(Proveedor proveedor) {
        this.proveedor = proveedor;
    }

    /**
     * @return the producto
     */
    public Producto getProducto() {
        return producto;
    }

    /**
     * @param producto the producto to set
     */
    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    /**
     * @return the unidad
     */
    public String getUnidad() {
        return unidad;
    }

    /**
     * @param unidad the unidad to set
     */
    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    /**
     * @return the costo
     */
    public String getCosto() {
        return costo;
    }

    /**
     * @param costo the costo to set
     */
    public void setCosto(String costo) {
        this.costo = costo;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the productocomprado
     */
    public ProducoProveedor getProductocomprado() {
        return productoComprado;
    }

    /**
     * @param productocomprado the productocomprado to set
     */
    public void setProductocomprado(ProducoProveedor productocomprado) {
        this.productoComprado = productocomprado;
    }

}
