using ACME;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CRUD_ACME
{
    public partial class CURD_FORM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadItem(idLlamadaBox, "Llamada");
                loadItem(idLlamadaAux, "Llamada");
                loadItem(idClienteBox, "Cliente");
                loadItem(idEmpleadoBox, "Empleado");
                loadItem(idProductoBox, "Producto");
                loadItem(idProblemaBox, "Problema");
                loadItem(idSolucionBox, "Solucion");
                loadItem(idLlamadaRead, "Llamada");
            }
        }

        protected void loadItem(DropDownList box, String key)
        {
            if (key.Equals("Llamada"))
            {
                using (ACMEEntities ACME = new ACMEEntities())
                {
                    var data = from d in ACME.LLAMADASGETALL1()
                               orderby d.ID_LLAMADA
                               select new
                               {
                                   id_Llamada = d.ID_LLAMADA
                               };
                    box.DataTextField = "id_Llamada";
                    box.DataValueField = "id_Llamada";
                    box.DataSource = data;
                    box.DataBind();
                    
                }
            }
            else if (key.Equals("Cliente"))
            {
                using (ACMEEntities ACME = new ACMEEntities())
                {
                    var data = from d in ACME.GET_ID_CLIENTE1()
                               orderby d.ID_CLIENTE
                               select new
                               {
                                   id_Cliente = d.ID_CLIENTE
                               };
                    box.DataTextField = "id_Cliente";
                    box.DataValueField = "id_Cliente";
                    box.DataSource = data;
                    box.DataBind();
                    
                }
            }
            else if (key.Equals("Empleado"))
            {
                using (ACMEEntities ACME = new ACMEEntities())
                {
                    var data = from d in ACME.GET_ID_EMPLEADO1()
                               orderby d.ID_EMPLEADO
                               select new
                               {
                                   id_Empleado = d.ID_EMPLEADO
                               };
                    box.DataTextField = "id_Empleado";
                    box.DataValueField = "id_Empleado";
                    box.DataSource = data;
                    box.DataBind();
                }
            }
            else if (key.Equals("Producto"))
            {
                using (ACMEEntities ACME = new ACMEEntities())
                {
                    var data = from d in ACME.GET_ID_PRODUCTO()
                               orderby d.ID_PRODUCTO
                               select new
                               {
                                   id_Producto = d.ID_PRODUCTO
                               };
                    box.DataTextField = "id_Producto";
                    box.DataValueField = "id_Producto";
                    box.DataSource = data;
                    box.DataBind();
                }
            }
            else if (key.Equals("Problema"))
            {
                using (ACMEEntities ACME = new ACMEEntities())
                {
                    var data = from d in ACME.GET_ID_PROBLEMA()
                               orderby d.ID_PROBLEMA
                               select new
                               {
                                   id_Problema = d.ID_PROBLEMA
                               };
                    box.DataTextField = "id_Problema";
                    box.DataValueField = "id_Problema";
                    box.DataSource = data;
                    box.DataBind();
                    
                }
            }
            else if (key.Equals("Solucion"))
            {
                using (ACMEEntities ACME = new ACMEEntities())
                {
                    var data = from d in ACME.GET_ID_SOLUCION()
                               orderby d.ID_SOLUCION
                               select new
                               {
                                   id_Solucion = d.ID_SOLUCION
                               };
                    box.DataTextField = "id_Solucion";
                    box.DataValueField = "id_Solucion";
                    box.DataSource = data;
                    box.DataBind();
                    
                }
            }
        }

        protected void update_Click(Object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("server=w948cbqf4a.database.windows.net,1433;database=ACME;uid=admin_server;pwd=Weasel789");
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = "EXECUTE CASO2.LLAMADA_UPDATE @ID_LLAMADA, @FECHA_LLAMADA, @FOLLOW_UP, @ESTADO_RESOLUCION_LLAMADA";
            cmd.Parameters.Add("@ID_LLAMADA", SqlDbType.Int).Value = Convert.ToInt32(idLlamadaBox.SelectedValue);
            cmd.Parameters.Add("@FECHA_LLAMADA", SqlDbType.DateTime).Value = Convert.ToDateTime(fechaLlamadaField.Text); ;
            cmd.Parameters.Add("@FOLLOW_UP", SqlDbType.SmallInt).Value = Convert.ToInt16(followUpdate.SelectedValue); ;
            cmd.Parameters.Add("@ESTADO_RESOLUCION_LLAMADA", SqlDbType.SmallInt).Value = Convert.ToInt16(estadoUpdate.SelectedValue);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            loadItem(idLlamadaBox, "Llamada");
            fechaLlamadaField.Text = "";
        }

        protected void delete_Click(Object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("server=w948cbqf4a.database.windows.net,1433;database=ACME;uid=admin_server;pwd=Weasel789");
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = "EXECUTE CASO2.LLAMADA_DELETE @ID_LLAMADA";
            cmd.Parameters.Add("@ID_LLAMADA", SqlDbType.Int).Value = Convert.ToInt32(idLlamadaAux.SelectedValue);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            loadItem(idLlamadaBox, "Llamada");
            loadItem(idLlamadaAux, "Llamada");
            loadItem(idLlamadaRead, "Llamada");
        }

        protected void create_Click(Object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("server=w948cbqf4a.database.windows.net,1433;database=ACME;uid=admin_server;pwd=Weasel789");
            SqlCommand cmd = connection.CreateCommand();
            Object last = idLlamadaBox.Items.OfType<ListItem>().LastOrDefault();
            int aux = Int32.Parse(Convert.ToString(last));
            aux = aux + 1;
            cmd.CommandText = "EXECUTE CASO2.Llamada_Create @iD_LLAMADA, @iD_CLIENTE, @iD_EMPLEADO, @iD_PRODUCTO, @iD_PROBLEMA, @iD_SOLUCION, @Fecha_Llamada, @Follow_up, @E_Resolucion_Llamada";
            cmd.Parameters.Add("@iD_LLAMADA", SqlDbType.Int).Value = aux;
            cmd.Parameters.Add("@iD_CLIENTE", SqlDbType.Int).Value = Convert.ToInt32(idClienteBox.SelectedValue);
            cmd.Parameters.Add("@iD_EMPLEADO", SqlDbType.Int).Value = Convert.ToInt32(idEmpleadoBox.SelectedValue);
            cmd.Parameters.Add("@iD_PRODUCTO", SqlDbType.Int).Value = Convert.ToInt32(idProductoBox.SelectedValue);
            cmd.Parameters.Add("@iD_PROBLEMA", SqlDbType.Int).Value = Convert.ToInt32(idProblemaBox.SelectedValue);
            cmd.Parameters.Add("@iD_SOLUCION", SqlDbType.Int).Value = Convert.ToInt32(idSolucionBox.SelectedValue);
            cmd.Parameters.Add("@Fecha_Llamada", SqlDbType.DateTime).Value = Convert.ToDateTime(fechaField.Text);
            cmd.Parameters.Add("@Follow_up", SqlDbType.SmallInt).Value = Convert.ToInt16(followCreate.SelectedValue);
            cmd.Parameters.Add("@E_Resolucion_Llamada", SqlDbType.SmallInt).Value = Convert.ToInt16(estadoCreate.SelectedValue);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            loadItem(idLlamadaBox, "Llamada");
            loadItem(idLlamadaAux, "Llamada");
            loadItem(idLlamadaRead, "Llamada");
            loadItem(idClienteBox, "Cliente");
            loadItem(idEmpleadoBox, "Empleado");
            loadItem(idProductoBox, "Producto");
            loadItem(idProblemaBox, "Problema");
            loadItem(idSolucionBox, "Solucion");
            fechaField.Text = "";
        }

        protected void read_Click(Object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("server=w948cbqf4a.database.windows.net,1433;database=ACME;uid=admin_server;pwd=Weasel789");
            String result;

            using (connection)
            {
                SqlCommand command = new SqlCommand(
                  "SELECT ID_LLAMADA, ID_CLIENTE, ID_EMPLEADO, ID_PRODUCTO, ID_PROBLEMA, ID_SOLUCION, FECHA_LLAMADA, FOLLOW_UP, ESTADO_RESOLUCION_LLAMADA FROM CASO2.LLAMADA WHERE ID_LLAMADA =" + idLlamadaRead.SelectedValue,
                  connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        result = string.Concat("ID_LLAMADA\t", Convert.ToString(reader.GetInt32(0)),"\n", 
                            "ID_CLIENTE\t", Convert.ToString(reader.GetInt32(1)), "\n",
                            "ID_EMPLEADO\t", Convert.ToString(reader.GetInt32(2)), "\n",
                            "ID_PRODUCTO\t", Convert.ToString(reader.GetInt32(3)), "\n",
                            "ID_PROBLEMA\t", Convert.ToString(reader.GetInt32(4)), "\n",
                            "ID_SOLUCION\t", Convert.ToString(reader.GetInt32(5)), "\n",
                            "FECHA_LLAMADA\t", Convert.ToString(reader.GetDateTime(6)), "\n",
                            "FOLLOW_UP\t", Convert.ToString(reader.GetInt16(7)), "\n",
                            "ESTADO\t\t", Convert.ToString(reader.GetInt16(8)));
                        dataBox.Text = result;
                        
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
    }
}