package com.estampate.corteI.hibernate;
// Generated 2/09/2015 10:57:56 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * FormaPago generated by hbm2java
 */
public class FormaPago  implements java.io.Serializable {


     private Integer idFormaPago;
     private String descripcionFormaPago;
     private Set<Factura> facturas = new HashSet<Factura>(0);
     private Set<FacturaDetalle> facturaDetalles = new HashSet<FacturaDetalle>(0);

    public FormaPago() {
    }

	
    public FormaPago(String descripcionFormaPago) {
        this.descripcionFormaPago = descripcionFormaPago;
    }
    public FormaPago(String descripcionFormaPago, Set<Factura> facturas, Set<FacturaDetalle> facturaDetalles) {
       this.descripcionFormaPago = descripcionFormaPago;
       this.facturas = facturas;
       this.facturaDetalles = facturaDetalles;
    }
   
    public Integer getIdFormaPago() {
        return this.idFormaPago;
    }
    
    public void setIdFormaPago(Integer idFormaPago) {
        this.idFormaPago = idFormaPago;
    }
    public String getDescripcionFormaPago() {
        return this.descripcionFormaPago;
    }
    
    public void setDescripcionFormaPago(String descripcionFormaPago) {
        this.descripcionFormaPago = descripcionFormaPago;
    }
    public Set<Factura> getFacturas() {
        return this.facturas;
    }
    
    public void setFacturas(Set<Factura> facturas) {
        this.facturas = facturas;
    }
    public Set<FacturaDetalle> getFacturaDetalles() {
        return this.facturaDetalles;
    }
    
    public void setFacturaDetalles(Set<FacturaDetalle> facturaDetalles) {
        this.facturaDetalles = facturaDetalles;
    }




}


