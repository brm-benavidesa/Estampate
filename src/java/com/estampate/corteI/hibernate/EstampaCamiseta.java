package com.estampate.corteI.hibernate;
// Generated 2/09/2015 10:57:56 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EstampaCamiseta generated by hbm2java
 */
public class EstampaCamiseta  implements java.io.Serializable {


     private Integer idEstampaCamiseta;
     private Artista artista;
     private RatingEstampa ratingEstampa;
     private TamanoEstampa tamanoEstampa;
     private TemaEstampa temaEstampa;
     private String descripcion;
     private String imagenes;
     private String ubicacion;
     private int precio;
     private int idLugarEstampa;
     private Set<FacturaDetalle> facturaDetalles = new HashSet<FacturaDetalle>(0);
     private Set<Camiseta> camisetas = new HashSet<Camiseta>(0);

    public EstampaCamiseta() {
    }

	
    public EstampaCamiseta(Artista artista, RatingEstampa ratingEstampa, TamanoEstampa tamanoEstampa, TemaEstampa temaEstampa, String descripcion, String imagenes, String ubicacion, int precio, int idLugarEstampa) {
        this.artista = artista;
        this.ratingEstampa = ratingEstampa;
        this.tamanoEstampa = tamanoEstampa;
        this.temaEstampa = temaEstampa;
        this.descripcion = descripcion;
        this.imagenes = imagenes;
        this.ubicacion = ubicacion;
        this.precio = precio;
        this.idLugarEstampa = idLugarEstampa;
    }
    public EstampaCamiseta(Artista artista, RatingEstampa ratingEstampa, TamanoEstampa tamanoEstampa, TemaEstampa temaEstampa, String descripcion, String imagenes, String ubicacion, int precio, int idLugarEstampa, Set<FacturaDetalle> facturaDetalles, Set<Camiseta> camisetas) {
       this.artista = artista;
       this.ratingEstampa = ratingEstampa;
       this.tamanoEstampa = tamanoEstampa;
       this.temaEstampa = temaEstampa;
       this.descripcion = descripcion;
       this.imagenes = imagenes;
       this.ubicacion = ubicacion;
       this.precio = precio;
       this.idLugarEstampa = idLugarEstampa;
       this.facturaDetalles = facturaDetalles;
       this.camisetas = camisetas;
    }
   
    public Integer getIdEstampaCamiseta() {
        return this.idEstampaCamiseta;
    }
    
    public void setIdEstampaCamiseta(Integer idEstampaCamiseta) {
        this.idEstampaCamiseta = idEstampaCamiseta;
    }
    public Artista getArtista() {
        return this.artista;
    }
    
    public void setArtista(Artista artista) {
        this.artista = artista;
    }
    public RatingEstampa getRatingEstampa() {
        return this.ratingEstampa;
    }
    
    public void setRatingEstampa(RatingEstampa ratingEstampa) {
        this.ratingEstampa = ratingEstampa;
    }
    public TamanoEstampa getTamanoEstampa() {
        return this.tamanoEstampa;
    }
    
    public void setTamanoEstampa(TamanoEstampa tamanoEstampa) {
        this.tamanoEstampa = tamanoEstampa;
    }
    public TemaEstampa getTemaEstampa() {
        return this.temaEstampa;
    }
    
    public void setTemaEstampa(TemaEstampa temaEstampa) {
        this.temaEstampa = temaEstampa;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getImagenes() {
        return this.imagenes;
    }
    
    public void setImagenes(String imagenes) {
        this.imagenes = imagenes;
    }
    public String getUbicacion() {
        return this.ubicacion;
    }
    
    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }
    public int getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(int precio) {
        this.precio = precio;
    }
    public int getIdLugarEstampa() {
        return this.idLugarEstampa;
    }
    
    public void setIdLugarEstampa(int idLugarEstampa) {
        this.idLugarEstampa = idLugarEstampa;
    }
    public Set<FacturaDetalle> getFacturaDetalles() {
        return this.facturaDetalles;
    }
    
    public void setFacturaDetalles(Set<FacturaDetalle> facturaDetalles) {
        this.facturaDetalles = facturaDetalles;
    }
    public Set<Camiseta> getCamisetas() {
        return this.camisetas;
    }
    
    public void setCamisetas(Set<Camiseta> camisetas) {
        this.camisetas = camisetas;
    }




}


