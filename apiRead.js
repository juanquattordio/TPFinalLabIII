// info obtenida de https://desarrolloweb.com/articulos/crear-api-rest-json-server.html
// ejecutar en terminal json-server --watch articulos.json
$(document).ready(function () {
    getProducts();

    function getProducts() {
        $.ajax({
            url: 'http://localhost:3000/articulos',
            success: function (respuesta) {
                var listaProductos = $("#lista-productos");
                $.each(respuesta, function (index, elemento) {
                    listaProductos.append(
                        '<div class="product-card">'
                        + '<div class="d-flex w-100 justify-content-end"> <a href="shopAPI.aspx" id="little-cross"><img src="imagenes/cross.png" alt=""></a></div>'
                        + '<div class="product-image">'
                        + '<img class="img-fluid" src="' + elemento.foto + '"></img>'
                        + '</div>'
                        + '<div class="product-info">'
                        + '<h5>' + elemento.nombre + '</h5>'
                        + '<h6>' + elemento.precio + '</h6>'
                        + '</div>'
                        + '<button class="Comprar btn btn-success ml-auto mr-4">Comprar</button>'
                        + '</div>'
                    );
                });
            },
            error: function () {
                console.log("No se ha podido obtener la información");
            },
            complete: function (xhr, status) {
                $(".Comprar").on("click", function () {
                    window.scrollTo(0, 0);
                    $(this).parentsUntil("section").siblings().hide();
                    $("section").css("max-width", "100%").addClass("border2 flex-column d-flex align-items-center");
                    $(".product-info").addClass("p-2 d-flex flex-column align-items-center");
                    $(this).removeClass("ml-auto mr-4");
                    $(this).parentsUntil("section").addClass("d-flex align-items-center w-100");
                    $("#little-cross img").css("display", "inline");
                });
            }
        });
    }
})



