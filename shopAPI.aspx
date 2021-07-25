<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopAPI.aspx.cs" Inherits="formularioContacto.shopAPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial scale=1.0" />
   <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Archivo CSS y JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="StyleSheet" href="style.css">
    <title>ManCity</title>
</head>
<body class="shop">
    <script src="apiRead.js"></script>
     <%--Codigo para importar Navbar desde archivo - Fuente: https://bibliotecacss.com/es/menus/reutilizar-navbar.html--%>
    <div id="nav-placeholder"> </div>
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script>$.get("navBar.html", function (data) {
        $("#nav-placeholder").replaceWith(data);
    });</script>

    <div style="margin: 65px">
        <section id="lista-productos" class="product container d-lg-flex flex-wrap">
        </section>
    </div>

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

    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>

</body>
</html>
