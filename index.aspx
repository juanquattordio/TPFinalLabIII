<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="formularioContacto.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial scale=1.0" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Archivo CSS y JS -->
    
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="StyleSheet" href="style.css">
    <title>ManCity</title>
</head>
<body>
    <script src="apiRead.js"></script>
     <%--Codigo para importar Navbar desde archivo - Fuente: https://bibliotecacss.com/es/menus/reutilizar-navbar.html--%>
    <div id="nav-placeholder"> </div>
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script>$.get("navBar.html", function (data) {
        $("#nav-placeholder").replaceWith(data);
    });</script>

    <div class="d-flex seccionTienda">
        <div class="container-fluid d-flex background tienda"></div>
        <div class="container-fluid d-flex seccionBotones">
            <a href=shopAPI.aspx class=" btn btn-success ml-auto mr-4"> Ir a la tienda </a>
            <h2 class="text text-right ml-auto mr-4">20% off en la segunda prenda</h2>
        </div>
    </div>
    <!-- Ver por qué cuando achico la pantalla, verticalmente los elementos no son flex -->

    <section class="container-fluid">
        <hr>
        <h2 name="noticias">NOTICIAS</h2>
        <div class="row">
            <div class="col-12 col-lg-9 ">
                <div class="row">
                    <a class="col-12 col-md-4 articulo"
                       href="https://www.mancity.com/news/mens/crystal-palace-v-manchester-city-premier-league-match-report-63755463">
                        <img class="img-fluid imagenArticulo"
                             src="https://mediacdn.mancity.com/cf/media/5q3iossl/gettyimages-1315628724.jpg?width=352&height=198&mode=crop">
                        <h5 class="tituloAticulo">Aguero and Torres fire City to the brink of title glory</h5>
                        <p class="subtituloAticulo">Match Report</p>
                    </a>
                    <a class="col-12 col-md-4 articulo"
                       href="https://www.mancity.com/news/mens/manchester-city-v-psg-preview-second-leg-63755558">
                        <img class="img-fluid imagenArticulo"
                             src="https://mediacdn.mancity.com/cf/media/z1knkjv2/psg-13-group-cele.jpg?width=458&height=258&mode=crop">
                        <h5 class="tituloAticulo">City v PSG: Kick-off time, TV info and teams news</h5>
                        <h6 class="subtituloAticulo">Match Preview</h6>
                    </a>
                    <a class="col-12 col-md-4 articulo"
                       href="https://www.mancity.com/news/mens/city-v-chelsea-match-preview-63755737" ;>
                        <img class="img-fluid imagenArticulo"
                             src="https://mediacdn.mancity.com/cf/media/aqahfund/chelsea-3-foden.jpg?width=458&height=258&mode=crop">
                        <h5 class="tituloAticulo">City v Chelsea: Kick-off time, TV info and team news</h5>
                        <h6 class="subtituloAticulo">Match preview</h6>
                    </a>
                    <a class="col-12 col-md-3 articulo"
                       href="https://www.mancity.com/news/mens/ederson-fernandinho-team-meeting-7-may-63756004" ;>
                        <img class="img-fluid imagenArticulo"
                             src="https://mediacdn.mancity.com/cf/media/5qzjeorn/ederson-in-training.jpg?width=458&height=258&mode=crop">
                        <h5 class="tituloAticulo">Ederson hails Fernandinho’s season-changing team meeting</h5>
                        <h6 class="subtituloAticulo">Men's team</h6>
                    </a>
                    <a class="col-12 col-md-3 articulo" href="https://www.mancity.com/features/lchelsea-prog" ;>
                        <img class="img-fluid imagenArticulo"
                             src="https://mediacdn.mancity.com/cf/media/aseign23/cov.jpg?width=458&height=258&mode=crop">
                        <h5 class="tituloAticulo">City v Chelsea: FREE digital matchday programme</h5>
                        <h6 class="subtituloAticulo">Men's team</h6>
                    </a>
                    <a class="col-12 col-md-3 articulo"
                       href="https://www.mancity.com/news/mens/man-city-chelsea-pep-guardiola-premier-league-preview-7-may-63755977"
                       ;>
                        <img class="img-fluid imagenArticulo"
                             src="https://mediacdn.mancity.com/cf/media/znuday25/pep-guardiola-press-conference-september-2020.jpg?width=458&height=258&mode=crop">
                        <h5 class="tituloAticulo">
                            Pep Guardiola: Chelsea clash won't impact Champions League
                            final
                        </h5>
                        <h6 class="subtituloAticulo">Men's team</h6>
                    </a>
                    <a class="col-12 col-md-3 articulo"
                       href="https://www.mancity.com/citytv/mens/chelsea-pep-guardiola-press-conference-team-news-63755985">
                        <img class="img-fluid imagenArticulo"
                             src="https://mediacdn.mancity.com/cf/media/jtecwj1r/3-pep-guardiola-answers-questions-in-a-press-conference.jpg">
                        <h5 class="tituloAticulo">City v Chelsea: Kick-off time, TV info and team news</h5>
                        <h6 class="subtituloAticulo">Match preview</h6>
                    </a>
                </div>
                <div class="row justify-content-center">
                    <a href="https://www.mancity.com/news" target=”_blank” class="btn btn-info m-4">
                        Más
                        noticias
                    </a>
                </div>
            </div>
            <div class="d-flex container-fluid d-md-none mb-2"
                 style="background-color: #4DB9CC; opacity: 0.5; font-size: xx-small;">
                &nbsp
            </div>

            <aside class="col-12 col-xl-3 d-flex">
                <!--  no me hace mas grueso el borde -->
                <div class="container-fluid d-flex col-12 align-items-center justify-content-center flex-column">
                    <img class="container background tickets" src="imagenes/MCFC_fans.JPG"/>

                    <div class="container d-flex flex-column align-items-center position-absolute">
                        <h3> Time to next match </h3>
                        <div class="container">
                            <div class="row">
                                <div id="content" class="col-lg-12">
                                    <p class="d-none">Fecha de partido: <span id="new_date1"></span></p>
                                    <div id="countdown1"></div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="d-flex align-bottom ">
                        <a href="https://www.mancity.com/matchinfo" target=”_blank” class=" btn btn-info">
                            Buy
                            tickets
                            now
                        </a>
                    </div>

                </div>

            </aside>
        </div>
    </section>

    <footer class="main-footer py-3">

        <ul>
            <li>
                Ponte en contacto con nosotros +54 (11) 161 444 1894 (Option 1, option 2, option 1)
            </li>
            <li>
                Manchester City FC Ltd 2021
            </li>
        </ul>
    </footer>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <!--
    <script>
        $(function () {
            $(document).scroll(function () {
                var $nav = $("#mainNavbar");
                $nav.toggleClass("scrolled", $(this).scrollTop() > $nav.height());
            });
        });
    </script>
    -->
    <script src="js/countdown.js"></script>
</body>
</html>
