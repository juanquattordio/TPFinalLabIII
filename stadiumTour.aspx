<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stadiumTour.aspx.cs" Inherits="formularioContacto.stadiumTour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial scale=1.0" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <!-- Archivo CSS y JS -->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="StyleSheet" href="style.css" />
    <title>ManCity</title>
</head>
<body>
    <%--Codigo para importar Navbar desde archivo - Fuente: https://bibliotecacss.com/es/menus/reutilizar-navbar.html--%>
    <div id="nav-placeholder"></div>
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script>$.get("navBar.html", function (data) {
            $("#nav-placeholder").replaceWith(data);
        });</script>

    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-12 col-md-6">
                <div>
                    <h1 class="content-heading">MANCHESTER CITY <br />STADIUM TOUR</h1>
                    <p class="py-4">
                        El Tour al Estadio del Manchester City Club te llevará a descubrir el funcionamiento interno del Estadio,
                        mostrando a los visitantes ciertas áreas que normalmente están fuera del alcance del público.
                        El nuevo tour por el estadio del Manchester City es la experiencia más interactiva sobre la Premier League.
                        Usando la tecnología punta, los sueños se hacen realidad mientras tú y tus seres queridos os sentáis e 
                        interactúais con Pep Guardiola en la sala de prensa. Sumérgete en la historia de la ciudad a través de 
                        nuestrp nuevo cine en 360 ​​grados y sorpréndete con la impresionante experiencia audiovisual en el 
                        vestuario del primer equipo. ¡Hay una sorpresa a cada paso! Guiados por expertos entre las 
                        bambalinas del estadio, cada área cobrará vida con historias, hechos y anécdotas interesantes. 
                        Esto es mucho más que un recorrido por el estadio, ¡es una experiencia única y mágica de la ciudad!
                    </p>
                </div>
                <div id="CarouselStadium" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="imagenes/ManchesterCityStadium1.JPG" class="d-block w-100" alt="..." />
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/ManchesterCityStadium2.JPG" class="d-block w-100" alt="..." />
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/ManchesterCityStadium3.JPG" class="d-block w-100" alt="..." />
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#CarouselStadium" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#CarouselStadium" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <div class="col-12 col-md-6" id="formStadium">
                <div class="grid flex-center">
                    <h1 class="content-heading">Reserva tu turno</h1>
                </div>

                <div class=" grid py-4 panel ">
                    <form id="form1" runat="server" class="d-flex flex-column">
                        <label class="col-form-label">Nombre (*): </label>
                        <asp:TextBox ID="Nombre" runat="server" CssClass="form-control" placeholder="Sergio"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Falta nombre" ControlToValidate="Nombre" Display="None"></asp:RequiredFieldValidator>
                        <label class="col-form-label  mt-2">Apellido (*): </label>
                        <asp:TextBox ID="Apellido" runat="server" CssClass="form-control" placeholder="Agüero"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Falta apellido" ControlToValidate="Apellido" Display="None"></asp:RequiredFieldValidator>
                        <div class="d-flex my-2 align-items-center justify-content-between flex-wrap">
                            <div>
                                <label class="col-form-label">Visitantes (*): </label>
                                <asp:DropDownList ID="Visitantes" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div>
                                <label class="col-form-label">DNI/Pasaporte (*): </label>
                                <asp:TextBox ID="DNI" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Falta DNI" ControlToValidate="DNI" Display="None"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Edad (*): </label>
                                <asp:TextBox ID="Edad" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Falta edad" ControlToValidate="Edad" Display="None"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Debe ser mayor de 18 años" MinimumValue="18" MaximumValue="99" Type="Integer" ControlToValidate="Edad" Display="None"></asp:RangeValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Edad no válida" MinimumValue="0" MaximumValue="99" Type="Integer" ControlToValidate="Edad" Display="None"></asp:RangeValidator>
                            </div>
                        </div>

                        <label class="col-form-label mt-2">Email (*): </label>
                        <asp:TextBox ID="Email" TextMode="Email" placeholder="sergio.agüero@gmail.com" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Falta email" ControlToValidate="Email" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="No es una dirección válida" ControlToValidate="Email" ValidationExpression="\S+@\S+\.\S{2,3}"></asp:RegularExpressionValidator>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Error: " ShowMessageBox="True" ShowSummary="False" />
                        <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_click" CssClass="btn btn-info my-3" />
                    </form>
                    <asp:Label ID="Mensaje" runat="server" Visible="False" class="btn btn-success my-3">Solicitud enviada exitosamente</asp:Label>
                    <asp:Label ID="MensajeError" runat="server" Visible="False" class="btn btn-danger my-3">Fallo en envío de solicitud</asp:Label>
                </div>
            </div>
        </div>
    </div>

    <footer class="main-footer py-3">

        <ul>
            <li>Ponte en contacto con nosotros +54 (11) 161 444 1894 (Option 1, option 2, option 1)
            </li>
            <li>Manchester City FC Ltd 2021
            </li>
        </ul>
    </footer>
    ipt>
</body>
</html>
