<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INICIO2.aspx.cs" Inherits="WEB_AVICOLA.INICIO2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Pollo Dorado S.A.</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #FFF8F0;
            color: #5A3921;
        }

        .header {
            background: linear-gradient(to right, #FFC340);
            padding: 30px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            position: relative;
        }

        .logo {
            font-size: 36px;
            font-weight: bold;
            color: white;
            margin-bottom: 5px;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.3);
        }

        .nav-button {
            display: inline-block;
            margin: 10px 10px;
            padding: 12px 25px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 30px;
            transition: all 0.3s;
            background-color: #B96E48;
            border: none;
            cursor: pointer;
            font-size: 14px;
        }

        .nav-button:hover {
            background-color: #FFC340;
            color: #8D4925;
            transform: translateY(-2px);
        }

        .login-button {
            background-color: #B96E48 !important;
            color: white !important;
        }

        .login-button:hover {
            background-color: #FF9800 !important;
            color: white !important;
        }

        .logo-superior {
            position: absolute;
            left: 20px;
            top: 5px;
            height: 150px;
        }

        .imagen-central {
            width: 99.9vw;
            height: 492px;
            display: block;
            margin: 0;
        }

        .titulo-bienvenida {
            position: absolute;
            top: 320px;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(185, 110, 72, 0.3);
            color: white;
            text-align: center;
            padding: 35px 55px;
            border-radius: 15px;
            font-family: 'Segoe UI', sans-serif;
            z-index: 10;
        }

        .titulo-bienvenida h1, .titulo-bienvenida h3 {
            margin: 0;
            font-size: 25px;
            color: white;
        }

        .titulo-bienvenida h2 {
            margin: 0;
            font-size: 50px;
            color: white;
            text-shadow:
                -5px -5px 0 #B96E48,
                 5px -5px 0 #B96E48,
                -5px  5px 0 #B96E48,
                 5px  5px 0 #B96E48;
        }

        .contenido-transparente {
            position: absolute;
            top: 200px;
            left: 140px;  
            right: 120px; 
            background-color: rgba(185, 110, 72, 0.50);
            color: white;
            text-align: center;
            padding: 30px 40px;
            border-radius: 15px;
            font-family: 'Segoe UI', sans-serif;
            z-index: 10;
            font-size: 50px;
            line-height: 1.5;
        }

        .contenido-transparente p {
            font-size: 34px;
            color: white;
            margin-top: 5px;
            text-shadow:
            -1px -1px 0 #b96348,
            1px -1px 0 #b96348,
            -1px  1px 0 #b96348,
            1px  1px 0 #b96348;
        }

        .vision-texto {
             font-size: 19px;
             color: white;
             margin-top: 5px;
             text-shadow:
             -1px -1px 0 #b96348,
              1px -1px 0 #b96348,
             -1px  1px 0 #b96348,
              1px  1px 0 #b96348;
             max-height: 225px;
        }

         .contactenos-box {
            background-color: rgba(185, 110, 72, 0.3);
            color: white;
            padding: 30px 40px;
            border-radius: 15px;
            font-family: 'Segoe UI', sans-serif;
            z-index: 10;
         }

    .contactenos-texto {
        font-size: 19px;
        color: white;
        line-height: 1.8;
        text-shadow:
            -1px -1px 0 #b96348,
            1px -1px 0 #b96348,
            -1px 1px 0 #b96348,
            1px 1px 0 #b96348;
    }

    .contactenos-input {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border: 1px solid #B96E48;
        border-radius: 4px;
        background-color: rgba(255, 255, 255, 0.8);
        font-family: 'Segoe UI', sans-serif;
        font-size: 16px;
    }

    .contactenos-input:focus {
        outline: none;
        border-color: #FFC340;
        background-color: white;
    }

            .content {
                position: relative;
                width: 100%;
                height: 492px;
            }

            body, html {
                margin: 0;
                padding: 0;
                overflow: hidden; 
            }

            .recuadro-izquierdo {
                position: absolute;
                top: 165px;
                left: 100px;
                width: 500px;
                height: 450px;
                background-color: rgba(185, 99, 72, 0.50);
                box-shadow: 0 0 10px rgba(0,0,0,0.2);
                z-index: 10;
                overflow: hidden;
                padding: 20px;
                box-sizing: border-box;
            }


            .recuadro-derecho {
                position: absolute;
                top: 160px;
                right: 100px;
                width: 500px;
                height: 475px;
                background-color: rgba(185, 99, 72, 0.50);
                box-shadow: 0 0 10px rgba(0,0,0,0.2);
                z-index: 10;
                overflow: hidden;
                padding: 20px;
                box-sizing: border-box;
            }

            .titulo-formulario {
                font-size: 24px;
                color: white;
                text-align: center;
                margin-bottom: 10px;
            }

            .formulario-contacto {
                display: flex;
                flex-direction: column;
                gap: 8px;
            }

            .campo label {
                color: white;
                font-size: 16px;
                margin-bottom: 3px;
                display: block;
            }

            .input-contacto {
                width: 100%;
                font-size: 14px;
                background-color: #FFC340;
                border: none;
                padding: 6px;
                border-radius: 4px;
                box-sizing: border-box;
            }


            .mensaje-contacto {
                height: 60px;
                resize: both;
            }

            .boton-formulario {
                text-align: center;
                margin-top: 5px;
            }

            .btn-contacto {
                font-size: 14px;
                background-color: #b96348;
                color: white;
                border: none;
                padding: 8px 20px;
                border-radius: 4px;
                font-weight: bold;
                cursor: pointer;
            }

            .recuadro-Conocenos {
                position: absolute;
                top: 165px;
                left: 50px;
                width: 1265px;
                height: 450px;
                background-color: rgba(185, 99, 72, 0.50);
                box-shadow: 0 0 10px rgba(0,0,0,0.2);
                z-index: 10;
                overflow: hidden;
                padding: 20px;
                box-sizing: border-box;
            }

            .recuadro-Conocenos h2 {
                margin-top: 0;
                font-size: 30px;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                color: white;
                padding-bottom: 10px;
                text-align: center;
            }
            </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <img src="Imagenes/Logo_izquierdo2.png" alt="Logo" class="logo-superior" />
            
            <div style="position: absolute; top: 55px; right: 20px; display: flex; align-items: center; gap: 10px;">
                <img src="Imagenes/Icono_Registro2.png" alt="Registro" style="height: 40px;" />
            <asp:Button ID="btnIngresar" runat="server" Text="INGRESAR" CssClass="nav-button login-button" />
            </div>

            <div style="margin-top: 30px;">
                <asp:Button ID="btnMision" runat="server" Text="MISIÓN" CssClass="nav-button" OnClick="btnMision_Click" />
                <asp:Button ID="btnVision" runat="server" Text="VISIÓN" CssClass="nav-button" OnClick="btnVision_Click" />
                <asp:Button ID="btnContactenos" runat="server" Text="CONTÁCTENOS" CssClass="nav-button" />
                <asp:Button ID="btnConocenos" runat="server" Text="CONÓCENOS" CssClass="nav-button" />
            </div>
        </div>

        <div class="content">
            <img src="Imagenes/Imagen_Central2.png" alt="Imagen Central" class="imagen-central" />
        </div>

        <asp:Panel ID="pnlBienvenida" runat="server">
            <div class="titulo-bienvenida">
                <h1>BIENVENIDOS A </h1>
                <h2>POLLO DORADO S.A.</h2>
                <h3>LOS MEJORES POLLOS</h3>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlMision" runat="server" Visible="false">
            <div class="contenido-transparente">
                <h1 style="font-size: 35px; margin-bottom: 30px; color: white; text-shadow: -1px -1px 0 #b96348, 1px -1px 0 #b96348, -1px 1px 0 #b96348, 1px 1px 0 #b96348;">Nuestra Misión</h1>
                <p class="vision-texto">
                    Proveer pollo de engorde de la más alta calidad, criado de manera sostenible y responsable,<br />
                    para satisfacer las necesidades de nuestros clientes y contribuir al bienestar de la comunidad,<br />
                    garantizando estándares de sanidad, inocuidad y bienestar animal.
                </p>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlVision" runat="server" Visible="false">
            <div class="contenido-transparente">
                <h1 style="font-size: 35px; margin-bottom: 30px; color: white; text-shadow: -1px -1px 0 #b96348, 1px -1px 0 #b96348, -1px 1px 0 #b96348, 1px 1px 0 #b96348;">Nuestra Visión</h1>
                <p class="vision-texto">
                    Ser reconocidos como líderes en la industria avícola a nivel nacional, innovando en<br />
                    prácticas de crianza, manteniendo nuestro compromiso con la calidad, la sostenibilidad<br />
                    y el desarrollo de nuestra comunidad.
                </p>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlContactenos1" runat="server" Visible="false">
            <div class="imagen-contactenos">
                <div class="recuadro-izquierdo">
                    <div style="position: relative; top: -25px;">
                        <h2 style="color: white; font-size: 30px; text-align: center;">Información</h2>
                        <p style="color: white; font-size: 18px;">
                            Por favor ingrese los datos de su consulta y con gusto le responderemos.
                        </p>

                        <div style="display: flex; align-items: center; margin-bottom: 10px;">
                            <img src="Imagenes/Telefono2.png" alt="Teléfono" style="height: 40px; margin-right: 10px;">
                            <div>
                                <strong style="color: white;">Call Center</strong><br />
                                <span style="color: white;">Centro de información</span><br />
                                <span style="color: white;">7762-1234</span>
                            </div>
                        </div>

                        <div style="display: flex; align-items: center; margin-bottom: 10px;">
                            <img src="Imagenes/Gmail2.png" alt="Email" style="height: 40px; margin-right: 10px;">
                            <div>
                                <strong style="color: white;">Email</strong><br />
                                <span style="color: white;">pollodoradosa@gmail.es.gt</span>
                            </div>
                        </div>

                        <div style="display: flex; align-items: center; margin-bottom: 10px;">
                            <img src="Imagenes/Ubicacion2.png" alt="Ubicación" style="height: 40px; margin-right: 10px;">
                            <div>
                                <strong style="color: white;">Ubicación</strong><br />
                                <span style="color: white;">7av. 13–46 zona 7, Sololá, Guatemala</span>
                            </div>
                        </div>

                        <div style="display: flex; align-items: center;">
                            <img src="Imagenes/chat_online2.png" alt="Chat" style="height: 40px; margin-right: 10px;">
                            <div>
                                <strong style="color: white;">Chat en línea</strong><br />
                                <span style="color: white;">Lunes a Viernes de 7:00 a 16:00 horas</span><br />
                                <span style="color: white;">5151–1680</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="recuadro-derecho">
                    <h2 class="titulo-formulario">Contáctenos</h2>

                    <div class="formulario-contacto">
                        <div class="campo">
                            <label for="txtNombre">Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="input-contacto" />
                        </div>

                        <div class="campo">
                            <label for="txtEmail">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-contacto" />
                        </div>

                        <div class="campo">
                            <label for="txtTelefono">Teléfono</label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="input-contacto" />
                        </div>

                        <div class="campo">
                            <label for="txtTipo_de_contacto">Tipo de contacto</label>
                            <asp:TextBox ID="txtTipo_de_contacto" runat="server" CssClass="input-contacto" />
                        </div>

                        <div class="campo">
                            <label for="txtMensaje">Mensaje</label>
                            <asp:TextBox ID="txtMensaje" runat="server" TextMode="MultiLine" Rows="3" CssClass="input-contacto mensaje-contacto" />
                        </div>

                        <div class="boton-formulario">
                            <asp:Button ID="btnEnviar" runat="server" Text="ENVIAR" CssClass="btn-contacto" />
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
                <!-- Contenido de Conócenos -->
                <asp:Panel ID="pnlConocenos" runat="server" Visible="false" CssClass="recuadro-Conocenos">
                    <h2 style="margin-top: 0; font-family: Arial, sans-serif; color: white; text-align: center;">Conócenos</h2>
                    <div style="color: white; font-family: Arial, sans-serif; font-size: 19px; line-height: 1.6;">
                        Don John Walter Connor, conocido como don Johnny, inició en 1960 una pequeña granja de pollos con Q8,000 provenientes de una póliza educativa.<br />
                        Comenzó criando 400 pollos semanales en una casa alquilada cerca de Villa Canales, Guatemala, importando aves y alimento desde EE. UU.<br />
                        En 1964 fundó la Incubadora Oak Crest con socios, para incubar huevos fértiles.<br />
                        En 1965, su madre le donó una finca en El Búcaro, donde construyó galeras, una planta procesadora y una bodega para alimento.<br />
                        Con un préstamo hipotecario, amplió su operación con nuevas instalaciones y equipo automatizado.<br />
                        En 1967 inauguró la Planta Procesadora con capacidad de 3,500 pollos diarios.<br />
                        En 1968 finalizó la Granja de Nueva Aldea para 170,000 aves.<br />
                        Tras una crisis en los años 60, adquirió tierras en el Valle del Motagua para cultivar granos.<br />
                        En 1980 obtuvo financiamiento del Banco Centroamericano para duplicar la capacidad de producción.<br />
                        Entre 1980 y 1982 amplió con nuevas granjas, congeladoras y maquinaria moderna, procesando hasta 6,000 pollos diarios.
                    </div>
                </asp:Panel>
    </form>
</body>
</html>