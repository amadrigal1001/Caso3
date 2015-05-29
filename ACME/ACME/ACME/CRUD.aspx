<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CURD_FORM.aspx.cs" Inherits="CRUD_ACME.CURD_FORM" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ACME</title>
    <link href="ACMEStyle.css" rel="stylesheet" />


<style>
   h2{border-color :#faebd7 }
    .auto-style13 {
        width: auto;
        height: 100%;
    }
    .newStyle1 {
        text-transform: none;
        color: #000000;
        font-style: normal;
        font-weight: bold;
        font-size: 28px;
        font-family: Consolas;
    }
    .auto-style14 {
        width: 218px;
        height: 107px;
    }
</style>

</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFFFFF">
    <div id= "content" >
        <div id="cabecera" class="auto-style13" title="Cabecera" style="color: #FFFFFF; background-color: #FFFFFF; border: thin double #3399FF">
            <br />
            <img alt="LogoACME" class="auto-style14" src="Logo_app/logoACME.jpg" />&nbsp; <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SERVICIO DE ATENCIÓN AL CLIENTE </span>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
        <div id= "conten2" style="color: #000000; margin-left: 0px; background-color: #CCCCCC; font-family: Consolas; font-weight: bold;" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h2 style="border-top: thin groove #009900; border-bottom: thin groove #009900; border-color: #3399FF; background-position: 12px 2px; background-image: none; position: static; top: 45px; left: 406px; width: 1100px; font-family: Consolas; font-size: x-large; font-weight: bold; color: #333333; border-top-style: groove; border-bottom-style: groove; border-left-width: thin; border-right-width: thin; border-left-style: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Creación de Tabla Llamada</h2>
            <br />
            Seleccione la identificacíon del Cliente:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="idClienteBox" runat="server" Height="16px" Width="133px">
            </asp:DropDownList>
            &nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            Seleccione la identificacíon del Empleado:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="idEmpleadoBox" runat="server" Height="16px" Width="135px">
            </asp:DropDownList>
            <br />
            <br />
            Seleccione la identificacíon del Producto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="idProductoBox" runat="server" Height="16px" Width="134px">
            </asp:DropDownList>
            <br />
            <br />
            Seleccione la identificacíon del Problema:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="idProblemaBox" runat="server" Height="16px" Width="135px">
            </asp:DropDownList>
            <br />
            <br />
            Seleccione la identificacíon de la Solución:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="idSolucionBox" runat="server" Height="16px" Width="133px">
            </asp:DropDownList>
            <br />
            <br />
            Seleccione la fecha de la llamada:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="fechaField" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;*aaaa-mm-dd*&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;
            <br />
            Seleccione el seguimiento de la llamada:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="followCreate" runat="server" Width="105px">
                <asp:ListItem Value="0">FALSE</asp:ListItem>
                <asp:ListItem Value="1">TRUE</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Seleccione el estado de resolución:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="estadoCreate" runat="server">
                <asp:ListItem Value="0">FALSE</asp:ListItem>
                <asp:ListItem Value="1">TRUE</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btCreate" runat="server" OnClick="create_Click" Tex="CREATE" Text="CREAR LLAMADA" ValidationGroup="g1" BackColor="White" BorderColor="#3399FF" BorderStyle="Solid" Height="24px" Width="125px" />
            <br />
            <br />
            <br />
            <h2 style="border-top: thin groove #009900; border-bottom: thin groove #009900; border-color: #3399FF; background-position: 12px 2px; background-image: none; position: static; top: 45px; left: 406px; width: 1100px; font-family: Consolas; font-size: x-large; font-weight: bold; color: #333333; border-top-style: groove; border-bottom-style: groove; border-left-width: thin; border-right-width: thin; border-left-style: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Actualización de Tabla Llamada</h2>
            <br />
            Seleccione la identificación de la llamada:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="idLlamadaBox" runat="server" Width="120px">
            </asp:DropDownList>
            <br />
            <br />
            Introduzca la nueva fecha:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="fechaLlamadaField" runat="server" Height="16px" Width="111px"></asp:TextBox>
            &nbsp; *aaaa-mm-dd*<br />
            <br />
            Introduzca el nuevo seguimiento de la llamada:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="followUpdate" runat="server" Width="121px">
                <asp:ListItem Value="0">FALSE</asp:ListItem>
                <asp:ListItem Value="1">TRUE</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Introduzca el nuevo estado de resolucón la llamada:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="estadoUpdate" runat="server" Height="16px" Width="122px">
                <asp:ListItem Value="0">FALSE</asp:ListItem>
                <asp:ListItem Value="1">TRUE</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btUpdate" runat="server" OnClick="update_Click" Text="ACTUALIZAR" ValidationGroup="g1"  BackColor="White" BorderColor="#3399FF" BorderStyle="Solid" Height="27px" Width="124px" />
            <br />
            <br />
            <br />
            <h2 style="border-top: thin groove #009900; border-bottom: thin groove #009900; border-color: #3399FF; background-position: 12px 2px; background-image: none; position: static; top: 45px; left: 406px; width: 1100px; font-family: Consolas; font-size: x-large; font-weight: bold; color: #333333; border-top-style: groove; border-bottom-style: groove; border-left-width: thin; border-right-width: thin; border-left-style: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eliminar Llamada</h2>
            <br />
            Seleccione el ID de llamada que desea eliminar:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="idLlamadaAux" runat="server" Height="16px" Width="107px">
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btDelete" runat="server" OnClick="delete_Click" Text="ELIMINAR" ValidationGroup="g1"  BackColor="White" BorderColor="#3399FF" BorderStyle="Solid"/>
            <br />
            <br />
            <br />
            <h2 style="border-top: thin groove #009900; border-bottom: thin groove #009900; border-color: #3399FF; background-position: 12px 2px; background-image: none; position: static; top: 45px; left: 406px; width: 1100px; font-family: Consolas; font-size: x-large; font-weight: bold; color: #333333; border-top-style: groove; border-bottom-style: groove; border-left-width: thin; border-right-width: thin; border-left-style: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Realizar Consultas </h2>
            <br />
            Seleccione el ID de llamada que desea cosultar:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="idLlamadaRead" runat="server" Width="87px">
            </asp:DropDownList>
            &nbsp;<br />
            <br />
            <asp:TextBox ID="dataBox" runat="server" Height="174px" TextMode="MultiLine" Width="447px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btRead" runat="server" OnClick="read_Click" Text="REALIZAR CONSULTA" ValidationGroup="g1"  BackColor="White" BorderColor="#3399FF" BorderStyle="Solid" Width="159px" />
            &nbsp;</div>
        </div>
        </form>
</body>
</html>


<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 479px;
            height: 1072px;
            margin-right: 129px;
        }
    </style>
</head>
<body style="height: 1081px; width: 815px">
    <form id="form1" runat="server">
        ACME - CREATE<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label6" runat="server" Text="ID_CLIENTE"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:DropDownList ID="idClienteBox" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label7" runat="server" Text="ID_EMPLEADO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="idEmpleadoBox" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label8" runat="server" Text="ID_PRODUCTO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="idProductoBox" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label9" runat="server" Text="ID_PROBLEMA"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:DropDownList ID="idProblemaBox" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label10" runat="server" Text="ID_SOLUCIÓN"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:DropDownList ID="idSolucionBox" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label11" runat="server" Text="FECHA_LLAMADA"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="fechaField" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label12" runat="server" Text="FOLLOW_UP"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:DropDownList ID="followCreate" runat="server">
            <asp:ListItem Value="0">FALSE</asp:ListItem>
            <asp:ListItem Value="1">TRUE</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label13" runat="server" Text="ESTADO_RESOLUCIÓN_LLAMADA"></asp:Label>
&nbsp;&nbsp;&nbsp; 
        <asp:DropDownList ID="estadoCreate" runat="server">
            <asp:ListItem Value="0">FALSE</asp:ListItem>
            <asp:ListItem Value="1">TRUE</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btCreate" runat="server" ValidationGroup="g1" Tex="CREATE" OnClick ="create_Click" Text="CREATE"/>
        <br />
        <br />
        <br />
        ACME - UPDATE<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="ID_LLAMADA"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="idLlamadaBox" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="FECHA_LLAMADA"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="fechaLlamadaField" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="FOLLOW_UP"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="followUpdate" runat="server">
            <asp:ListItem Value="0">FALSE</asp:ListItem>
            <asp:ListItem Value="1">TRUE</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label4" runat="server" Text="ESTADO_RESOLUCION_LLAMADA"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="estadoUpdate" runat="server">
            <asp:ListItem Value="0">FALSE</asp:ListItem>
            <asp:ListItem Value="1">TRUE</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btUpdate" runat="server" ValidationGroup="g1" Text="UPDATE" OnClick ="update_Click"/>
        <br />
        <br />
        <br />
        ACME - DELETE<br />
        <br />
        ID_LLAMADA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="idLlamadaAux" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btDelete" runat="server" ValidationGroup="g1" Text="DELETE" OnClick ="delete_Click"/>
        <br />
        <br />
        <br />
        ACME - READ<br />
        <br />
        <asp:Label ID="Label14" runat="server" Text="ID_LLAMADA"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="idLlamadaRead" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:TextBox ID="dataBox" runat="server" Height="174px" Width="447px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btRead" runat="server" ValidationGroup="g1" Text="READ" OnClick="read_Click"/>
    </form>
</body>
</html>--%>
