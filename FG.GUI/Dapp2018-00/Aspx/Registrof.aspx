<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrof.aspx.cs" Inherits="Dapp2018_00.Aspx.Registrof" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="../Content/css/login/estilo1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 500px;
            height: 410px;
        }
    </style>
</head>
<body style="margin-left:-30px; margin-top:-50px; background-image:url('/Imagenes/giphys.gif'); width: 1500px; height:800px">

    
         <h2 style="margin-left:-300px; margin-top:50px">
             &nbsp;</h2>
          <h2 style="margin-left:0px; margin-top:50px">
              <strong>
            &nbsp;Registro del Alumno</strong></h2>
         <h2 style="margin-left:-300px; margin-top:50px">
             <strong>
            &nbsp;</strong></h2>

    <div class="container well contenedor">
        <form runat="server">
        <div class="row">
            <div class="col-xs-12">
                <h2>Paso 2: Registro Final !</h2>
            </div>
          
        </div>
            <div class="form-group">
                 <asp:Label ID="lb" runat="server" Text="Nombre"  CssClass="control-label col-sm-2"></asp:Label>
                  <div class="col-sm-10">
                     <asp:TextBox ID="Usu" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vusuario" runat="server" ControlToValidate="Usu" Display="Dynamic" ErrorMessage="Clave Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>

                 <br />
                 <br />    </div>
   <div class="form-group">
            <asp:Label ID="lbpass" runat="server" Text="Clave" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                  <asp:TextBox ID="Cla" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vclave" runat="server" ControlToValidate="Cla" Display="Dynamic" ErrorMessage="Clave Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
             </div>
       <asp:Label ID="nombrec" runat="server" Visible="False"></asp:Label><br />
       <asp:Label ID="TipoU" runat="server" Text="Alumno" Visible="False"></asp:Label>

       <asp:Label ID="lregistro" runat="server" ForeColor="#000099" style="margin-left:155px"></asp:Label>
       
       <div class="form-group">
              <asp:Button ID="bingresar" runat="server" Text="Ingresar a Perfil" CssClass="form-control btn btn-primary" OnClick="bingresar_Click"  />
                         
              </div>   </div>
  </form>
       
</div>
  <img src="../Imagenes/pile_of_angry_birds_by_gav_imp-d4b2xol.png" style="width:422px;margin-left:780px; margin-top:-350px" class="auto-style1"  />
</body>
</html>