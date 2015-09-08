<%-- 
    Document   : index
    Created on : 27/08/2015, 11:10:50 PM
    Author     : AndresV
--%>

<%@page import="com.estampate.corteI.hibernate.Artista"%>
<%@page import="com.estampate.corteI.hibernate.EstampaCamiseta"%>
<%@page import="com.estampate.corteI.hibernate.LugarEstampaCamiseta"%>
<%@page import="com.estampate.corteI.hibernate.TamanoEstampa"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.estampate.corteI.hibernate.TemaEstampa"%>
<%@page import="java.util.List"%>
<%@page import="com.estampate.corteI.DAO.datosGeneralesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  HttpSession objSesion = request.getSession(false);
  String usuario = (String) (objSesion.getAttribute("idUsuaio"));
  //TRAIGO EL ARTISTA DEL QUE VOY A BUSCAR LAS ESTAMPAS
  int idArtista = Integer.parseInt(usuario);
  datosGeneralesDAO infoUser = new datosGeneralesDAO();
  Artista ar = infoUser.getArtista(idArtista);
  //BUSCO LAS ESTAMPAS
  datosGeneralesDAO estampasImg = new datosGeneralesDAO();
  List<EstampaCamiseta> estampa = new ArrayList<EstampaCamiseta>();
  estampa = estampasImg.getEstampas(ar);
  
  String deServlet = (String) objSesion.getAttribute("servlet");
  boolean servlet;
  servlet = deServlet!=null;
  if(servlet){
    out.println("<script>alert('Estampa Guardada con exito');</script>");
    objSesion.setAttribute("servlet",null);
  }
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--LLAMOloooo LOS SCRIPT DE JS QUE NECESITO EN ESTE CASO FUNCIONES Y LA LIBRERIA DE JQUERY-->
    
      <script type="text/javascript" src="../js/libs/jquery.js"></script>
      <script type="text/javascript" src="../js/funciones.js"></script>
      <link rel="stylesheet" href="../js/libs/bootstrap-3.3.5-dist/css/bootstrap.min.css" />
  
    <title>Estampate!!!!</title>
    <style type="text/css">
      li:hover{
        background:#81F7D8;
        border-left-style:  solid;
        border-right-style:  solid;
        border-left-width: 1px;
        border-right-width: 1px;
      }
      img{
        margin: 5px 5px 5px 5px;
      }
      .contenedor{
        display: block;
        width: 181px;
        float: left;
      }
    </style>
    <script type="text/javascript">
      $(document).ready(function (){
          $("#btnVerCat").click(function (){
            $("#adminDisenio").hide();
            $("#subirEstampa").hide();
            $("#verCatalogo").show();
          });
          $("#btnSubDis").click(function (){
            $("#adminDisenio").hide();
            $("#verCatalogo").hide();
            $("#subirEstampa").show();
          });
          $("#btnAdmiDis").click(function (){
            $("#adminDisenio").show();
            $("#verCatalogo").hide();
            $("#subirEstampa").hide();
          });
      });
    </script>
  </head>
  <body>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Estampate</a>
        </div>
        <div class="collapse navbar-collapse" >
          <a href="index.jsp"><button type="button" class="btn btn-default navbar-btn" id="btnSession">Volver</button></a>
          <a href="../index.jsp"><button type="button" class="btn btn-default navbar-btn" id="btnSession">Cerrar Sesion</button></a>
        </div>
      </div>
    </nav>
    <!--FORMULARIO DE REGISTRO-->
    <div class="container-fluid" id="registro" >
      <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
          <div class="row">
            <div class="col-xs-4"><button type="button" class="btn btn-default navbar-btn" id="btnVerCat">Ver Catalogo</button></div>
            <div class="col-xs-4"><button type="button" class="btn btn-default navbar-btn" id="btnSubDis">Subir nuevo diseño</button></div>
            <div class="col-xs-4"><button type="button" class="btn btn-default navbar-btn" id="btnAdmiDis">Administrar Diseños</button></div>
          </div>
        </div>
        <div class="col-xs-4"></div>
      </div>
      <div class="row">
        <div class="col xs 8" id="adminDisenio">

        </div>
        <div class="col xs 8" id="subirEstampa" style="display:none">
          <form class="form-horizontal" action="../guardarEstampa" method="post" role="form" enctype="multipart/form-data" >
            <div class="form-group">
              <label class="col-lg-2 control-label"  class="col-lg-2 control-label" for="nombre">Nombre:</label>
              <div class="col-lg-4">
                <input type="hidden" value="<%out.print(usuario);%>" name="idArtista" />
                <input type="text" name="nombre" id="nombre" class="form-control" required  />
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label"  for="temaEstampa">Tema estampa :</label>
              <div class="col-lg-4">
                <select class="form-control" name="temaEstampa" required>
                  <%
                    datosGeneralesDAO estampas = new datosGeneralesDAO();
                    List<TemaEstampa> temasEstampas = new ArrayList<TemaEstampa>();
                    temasEstampas = estampas.getTemasEstampas();
                    for (TemaEstampa est : temasEstampas) {
                      out.println("<option value='" + est.getIdTemaEstampa() + "'>" + est.getTipoTema() + "</option>");
                    }
                  %>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label"  for="precio">Precio</label>
              <div class="col-lg-4">
                <input type="number" name="precio" id="precio" required class="form-control" min="1" max="9999999999" />
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label"  for="precio">Tamaño</label>
              <div class="col-lg-4">
                <select class="form-control" name="tamanoEstampa" required>
                  <%
                    datosGeneralesDAO tamanos = new datosGeneralesDAO();
                    List<TamanoEstampa> tamanoEstampa = new ArrayList<TamanoEstampa>();
                    tamanoEstampa = tamanos.getTamanios();
                    for (TamanoEstampa tamp : tamanoEstampa) {
                      out.println("<option value='" + tamp.getIdTamanoEstampa() + "'>" + tamp.getEspecificacionTamano() + "</option>");
                    }
                  %>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label"  for="ubicacion">Lugar de la estampa</label>
              <div class="col-lg-4">
                <select class="form-control" name="ubicacion" required>
                  <%
                    datosGeneralesDAO lugar = new datosGeneralesDAO();
                    List<LugarEstampaCamiseta> lugarEstampa = new ArrayList<LugarEstampaCamiseta>();
                    lugarEstampa = lugar.getLugares();
                    for (LugarEstampaCamiseta lug : lugarEstampa) {
                      out.println("<option value='" + lug.getIdLugarEstampaCamiseta() + "'>" + lug.getEspecificacionLugar() + "</option>");
                    }
                  %>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label"  for="cedula">Imagaen</label>
              <div class="col-lg-4">
                <input type="file" name="estampa" id="estampa" accept="image/png" class="form-control" />
              </div>
            </div>

            <div class="form-group">
              <div class="col-lg-7">
                <input type="submit" name="Guardar" id="guardar" class="btn btn-success" />
              </div>
            </div>
          </form>
        </div>
        <div class="col xs 8" id="verCatalogo" style="display:none">
          <%
            for (EstampaCamiseta est : estampa) {
              out.print("<div class='contenedor'>");
              out.print("<img src='../" + est.getImagenes() + "' alt='' width='140' height='100' />");
              out.print("<br>");
              out.print("<span>Nombre: " + est.getDescripcion() + "</span>");
              out.print("<br>");
              out.print("<span>Precio " + est.getPrecio() + "</span>");
              out.print("</div>");
            }
          %>

        </div>
      </div>
    </div>
  </body>
</html>
