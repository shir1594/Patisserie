using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Patisserie
{
	public partial class FIniciarS : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["PatisserieConnection"].ToString();
		SqlConnection con;

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void ButtonIngresar_Click(object sender, EventArgs e)
		{
			String user = TextBoxUser.Text;
			String password = TextBoxPassword.Text;

			if (user == "" || password == "")
			{
				LabelMensaje.Text = "Ingrese Datos";
			}
			else
			{
				Cliente c = new Cliente(user, password);
				string sql = @"SELECT * FROM t_user WHERE account=@account AND" +
				" password=@password";

				con = new SqlConnection(strcon);
				con.Open();
				using (SqlCommand cmd = con.CreateCommand())
				{
					cmd.CommandText = sql;
					cmd.CommandType = System.Data.CommandType.Text;

					SqlParameter param1 = new SqlParameter("account",
						System.Data.SqlDbType.VarChar);
					param1.Value = c.Account;
					cmd.Parameters.Add(param1);

					SqlParameter param2 = new SqlParameter("password",
						System.Data.SqlDbType.VarChar);
					param2.Value = c.Password;
					cmd.Parameters.Add(param2);
					SqlDataReader reader = cmd.ExecuteReader();
					while (reader.Read())
					{
						c.Exists = true;
					}
					reader.Close();
					cmd.Dispose();

				}
				con.Close();

				if (c.Exists)
				{
					Server.Transfer("FTransferencia.aspx");
                    //
                }
				else
				{
					LabelMensaje.Text = "Usuario o Contraseña Incorrectos";
				}
			}

		}

		protected void LinkButtonRegistrar_Click(object sender, EventArgs e)
		{
			Server.Transfer("FRegistrar.aspx");
		}
	}
}