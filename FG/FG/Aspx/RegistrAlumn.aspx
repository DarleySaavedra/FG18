<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrAlumn.aspx.cs" Inherits="FG.Aspx.RegistrAlumn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="../Content/css/RegisAlum/estilo2.css" rel="stylesheet" />
   
    <!--Ventana Modal-->

 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    
    </head>
  

<body style="margin-left:-30px; margin-top:-50px; background-image:url('/Imagenes/giphys.gif'); width: 1500px; height:800px">

      
           <h2 style="margin-left:0px; margin-top:80px">
              <strong>
            &nbsp;Registro del Alumno</strong></h2>
         <h2 style="margin-left:-300px; margin-top:50px">
             <strong>
            &nbsp;</strong></h2>
    
    <div class="container well contenedor" style="margin-top:-75px">
        <div class="row">
            <div class="col-xs-12">
                <%--<h2>Paso 1: Datos Personales</h2>--%>
            </div>
        </div>
        <form runat="server">
            <div class="form-group">
                 <asp:Label ID="lb" runat="server" Text="Nombres"  CssClass="control-label col-sm-2"></asp:Label>
                  <div class="col-sm-10" >
                     <asp:TextBox ID="tbnombre" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vnom" runat="server" ControlToValidate="tbnombre" Display="Dynamic" ErrorMessage="Nombre Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br /> 
                  </div>


             <div class="form-group " >
                
            <asp:Label ID="lbpass" runat="server" Text="Apellidos" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10" ">
                  <asp:TextBox ID="tbapellido" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vape" runat="server" ControlToValidate="tbapellido" Display="Dynamic" ErrorMessage="Apellido Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
             </div>

         </div>

       <div class="form-group " >
                
            <asp:Label ID="Label4" runat="server" Text="Edad" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10" ">
                  <asp:TextBox ID="tbedad" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vedad" runat="server" ControlToValidate="tbedad" Display="Dynamic" ErrorMessage="Edad Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
             </div>

         </div>

                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Grado " CssClass="control-label col-sm-2"></asp:Label> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    <asp:DropDownList ID="dgrado" runat="server">
                        <asp:ListItem Value="-1">--Seleccionar--</asp:ListItem>
                        <asp:ListItem Value="3 Grado">3 Grado</asp:ListItem>
                        <asp:ListItem Value="4 Grado">4 Grado</asp:ListItem>
                        <asp:ListItem Value="5 Grado">5 Grado</asp:ListItem>
                        <asp:ListItem Value="6 Grado">6 Grado</asp:ListItem>
                        
                    </asp:DropDownList>
                    <br />
                </div>


         <div class="form-group">
             <br />
             <asp:Label ID="label" runat="server" Text="Sexo" CssClass="control-label col-sm-2"></asp:Label>
             <div class="col-sm-10">
                  <asp:RadioButton ID="radiom" runat="server"  Text="Masculino" GroupName="grup1" />
                 &nbsp;
                 <asp:RadioButton ID="radiof" runat="server" Text="Femenino" style="margin-left:5px" GroupName="grup1" />
                  <br />
                  <br />
             </div>
         </div>

         <div class="form-group" style="margin-top:5px">
                 <asp:Label ID="Label1" runat="server" Text="Ciudad"  CssClass="control-label col-sm-2"></asp:Label>
                  <div class="col-sm-10">
                     <asp:TextBox ID="tbdire" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vdir" runat="server" ControlToValidate="tbdire" Display="Dynamic" ErrorMessage="Direccion Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                   </div>

        </div>
                <div class="form-group">
                    <asp:Label ID="lable1" runat="server" Text="Departamento" CssClass="control-label col-sm-2"></asp:Label> 
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="ddepar" runat="server">
                        <asp:ListItem Value="-1">--Seleccionar--</asp:ListItem>
                        <asp:ListItem Value="Amazonas">Amazonas</asp:ListItem>
                        <asp:ListItem Value="Ancash">Ancash</asp:ListItem>
                        <asp:ListItem Value="Apurimac">Apurimac</asp:ListItem>
                        <asp:ListItem Value="Arequipa">Arequipa</asp:ListItem>
                        <asp:ListItem Value="Ayacucho">Ayacucho</asp:ListItem>
                        <asp:ListItem Value="Cajamarca">Cajamarca</asp:ListItem>
                        <asp:ListItem Value="Callao">Callao</asp:ListItem>
                        <asp:ListItem Value="Cusco">Cusco</asp:ListItem>
                        <asp:ListItem Value="Huancavelica">Huancavelica</asp:ListItem>
                        <asp:ListItem Value="Huánuco">Huánuco</asp:ListItem>
                        <asp:ListItem Value="Ica">Ica</asp:ListItem>
                        <asp:ListItem Value="Junín">Junín</asp:ListItem>
                        <asp:ListItem Value="La Libertad">La Libertad</asp:ListItem>
                        <asp:ListItem Value="Lambayeque">Lambayeque</asp:ListItem>
                        <asp:ListItem Value="Lima">Lima</asp:ListItem>
                        <asp:ListItem Value="Loreto">Loreto</asp:ListItem>
                        <asp:ListItem Value="Madre de Dios">Madre de Dios</asp:ListItem>
                        <asp:ListItem Value="Moquegua">Moquegua</asp:ListItem>
                        <asp:ListItem Value="Pasco">Pasco</asp:ListItem>
                        <asp:ListItem Value="Piura">Piura</asp:ListItem>
                        <asp:ListItem Value="Puno">Puno</asp:ListItem>
                        <asp:ListItem Value="San Martín">San Martín</asp:ListItem>
                        <asp:ListItem Value="Tacna">Tacna</asp:ListItem>
                        <asp:ListItem Value="Tumbes">Tumbes</asp:ListItem>
                        <asp:ListItem Value="Ucayali">Ucayali</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div>
              <div class="form-group">
                 <asp:Label ID="Label2" runat="server" Text="Telefono"  CssClass="control-label col-sm-2"></asp:Label>
                  <div class="col-sm-10">
                     <asp:TextBox ID="tbtel" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vtel" runat="server" ControlToValidate="tbtel" Display="Dynamic" ErrorMessage="Telefono Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                   </div></div>

             <div class="form-group" style="margin-top:4px">
                 <asp:Label ID="Label3" runat="server" Text="Colegio"  CssClass="control-label col-sm-2"></asp:Label>
                  <div class="col-sm-10">
                     <asp:TextBox ID="tbcol" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vcol" runat="server" ControlToValidate="tbcol" Display="Dynamic" ErrorMessage="Colegio Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                   </div>
                 
               
                 </div>
            </div>
            <asp:Label ID="lbregistro" runat="server" style="margin-left:170px" ForeColor="#003399"></asp:Label>
   
          <div class="form-group">
           <asp:button runat="server" text="REGISTRAR" CssClass="form-control btn btn-primary" ID="bregistrar" OnClick="Unnamed1_Click"  />
              </div>
  </form>
     
</div>
     -->
    <img src="../Imagenes/pile_of_angry_birds_by_gav_imp-d4b2xol.png" style="width:422px; margin-left:870px; margin-top:-780px"/>
</body>
</html>
