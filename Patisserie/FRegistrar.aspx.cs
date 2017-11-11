using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Patisserie
{
	public partial class FRegistrar : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["PatisserieConnection"].ToString();
		SqlConnection con;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void ButtonIngresar_Click(object sender, EventArgs e)
		{
			String user = TextBoxUser.Text;
			String email = TextBoxEmail.Text;
			String password = TextBoxPassword.Text;
			String passwordR = TextBoxPasswordR.Text;

			if (user == "" || password == "" || email == "" || passwordR == "")
			{
				LabelMensaje.Text = "Ingrese Datos";
			}
			else if (password != passwordR) LabelMensaje.Text = "Contraseñas son diferentes";
			else if (user != "" || password != "" || email != "" || passwordR == "" && password == passwordR)
			{
				Cliente c = new Cliente(user, password);
				string sql = @"SELECT * FROM t_user WHERE account=@account ";

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


					SqlDataReader reader = cmd.ExecuteReader();
					while (reader.Read())
					{
						c.Exists = true;
					}
					reader.Close();
					cmd.Dispose();

				}


				if (c.Exists)
				{
					LabelMensaje.Text = "Usuario ya existe";
					TextBoxEmail.Text = "";
					TextBoxUser.Text = "";
					TextBoxPassword.Text = "";
					TextBoxPasswordR.Text = "";
					con.Close();
				}
				else
				{


					string insert = @"insert into t_user(account,password)" +
					" values(@account,@password)";

					using (SqlCommand cmd = con.CreateCommand())
					{
						cmd.CommandText = insert;
						cmd.CommandType = System.Data.CommandType.Text;

						SqlParameter param1 = new SqlParameter("account", System.Data.SqlDbType.Text);
						param1.Value = c.Account;
						cmd.Parameters.Add(param1);

						SqlParameter param2 = new SqlParameter("password", System.Data.SqlDbType.Text);
						param2.Value = c.Password;
						cmd.Parameters.Add(param2);

						//
						//SqlParameter param3 = new SqlParameter("email", System.Data.SqlDbType.Text);
						//param3.Value = c.Email;
						//cmd.Parameters.Add(param3);

						cmd.ExecuteNonQuery();

					}
					con.Close();
					//
					Server.Transfer("FIniciarS.aspx");


				}
			}


		}
	}
}