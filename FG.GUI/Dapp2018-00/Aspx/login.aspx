<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dapp2018_00.Aspx.login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="../Content/css/login/estilo1.css" rel="stylesheet" />
</head>
<body style="margin-left:-30px; margin-top:-50px; background-image:url('/Imagenes/giphys.gif'); width: 1500px; height:800px">

    
         <h2 style="margin-left:-300px; margin-top:50px">
             &nbsp;</h2>
          <h2 style="margin-left:0px; margin-top:50px">
              <strong>
            &nbsp;Le damos la Bienvenida</strong></h2>
         <h2 style="margin-left:-300px; margin-top:50px">
             <strong>
            &nbsp;</strong></h2>

    <div class="container well contenedor">
        <div class="row">
            <div class="col-xs-12">
                <h2>Iniciar Sesion</h2>
            </div>
        </div>
        <form runat="server">
            <div class="form-group">
                 <asp:Label ID="lb" runat="server" Text="Nombre"  CssClass="control-label col-sm-2"></asp:Label>
                  <div class="col-sm-10">
                     <asp:TextBox ID="tbusu" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vusu" runat="server" ControlToValidate="tbusu" Display="Dynamic" ErrorMessage="Clave Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>

                 <br />
                 <br />

            </div>

         <div class="form-group">
            <asp:Label ID="lbpass" runat="server" Text="Clave" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                  <asp:TextBox ID="tbpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vpass" runat="server" ControlToValidate="tbpass" Display="Dynamic" ErrorMessage="Clave Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
             </div>
             <asp:Label ID="lrepor" runat="server" Text="" style="margin-left:130px" ForeColor="Red"></asp:Label>
          <div class="form-group">
          <asp:Button ID="btingresar1" runat="server" Text="INGRESAR" CssClass="form-control btn btn-primary" OnClick="btingresar1_Click"  />
            <a href="RegistrAlumn.aspx" style="color:blue; margin-left:130px" >Crear una nueva cuenta</a>
              <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyFirstGameConnectionString %>" SelectCommand="ConsultarAlumno" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="tbusu" Name="usu" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="tbusu" Name="pass" PropertyName="Text" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>--%>
              </div>   
            
            </div>
  </form>
    
        
</div>
     <img alt="" class="auto-style1" src="../Imagenes/header.jpg"  style="width:500px;height:360px; margin-left:780px; margin-top:-350px" />&nbsp;&nbsp;</p>
  
</body>
</html>
