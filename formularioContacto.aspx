<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formularioContacto.aspx.cs" Inherits="formularioContacto.WebForm1" MaintainScrollPositionOnPostback="true" %>

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
                    <h1 class="content-heading">HACETE SOCIO</h1>
                    <p class="py-4">
                        Ser socio del City es una pasión. Por eso, te damos la posibilidad de formar parte
                        del club
                        convirtiéndote en Socio Adherente. Como tal, podés visitar entrenamientos, practicar deportes,
                        atenderte en el Centro Médico, participar de actividades culturales y acceder a descuentos y
                        beneficios.
                    </p>
                </div>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/9dKBHeHIcH8?rel=0&autoplay=1"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen class="d-none d-xl-block"></iframe>
                <img class="img-fluid d-xl-none"
                    src="https://cde.peru.com//ima/0/0/8/0/5/805764/924x530/manchester-city.jpg">
            </div>
            <div class="col-12 col-md-6" id="formContact">
                <div class="grid flex-center">
                    <h1 class="content-heading">Completa con tus datos</h1>
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
                                <label class="col-form-label">Telefono: </label>
                                <asp:TextBox ID="Telefono" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Debe ser mayor de 18 años" MinimumValue="18" MaximumValue="99" Type="Integer" ControlToValidate="Edad" Display="None" ></asp:RangeValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Edad no válida" MinimumValue="0" MaximumValue="99" Type="Integer" ControlToValidate="Edad" Display="None" ></asp:RangeValidator>
                            </div>
                        </div>
                        <label class="col-form-label">País: </label>
                        <asp:DropDownList ID="Paises" runat="server" CssClass="form-control" OnSelectedIndexChanged="Paises_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Text="Argentina" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Italia" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                        <label class="col-form-label">Provincia: </label>
                        <asp:DropDownList ID="Provincias" runat="server" CssClass="form-control" AutoPostBack="true">
                        <asp:ListItem Text="Santa Fe" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Codoba" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Lazio" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Veneto" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                        
                        <label class="col-form-label mt-2">Email (*): </label>
                        <asp:TextBox ID="Email" TextMode="Email" placeholder="sergio.agüero@gmail.com" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Falta email" ControlToValidate="Email" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="No es una dirección válida" ControlToValidate="Email" ValidationExpression="\S+@\S+\.\S{2,3}"></asp:RegularExpressionValidator>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Error: " ShowMessageBox="True" ShowSummary="False" />
                        <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_click" CssClass="btn btn-info my-3"/>
                    </form>
                    <asp:Label ID="Mensaje" runat="server" Visible="False" class="btn btn-success my-3" >Solicitud enviada exitosamente</asp:Label>
                    <asp:Label ID="MensajeError" runat="server" Visible="False" class="btn btn-danger my-3" >Fallo en envío de solicitud</asp:Label>
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
    
</body>
</html>
