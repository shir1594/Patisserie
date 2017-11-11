using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Patisserie
{
	public partial class FContacto : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["PatisserieConnection"].ToString();
		SqlConnection con;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void ButtonEnviar_Click(object sender, EventArgs e)
		{
			if (Request.Form["TextArea"] != "" && TextBoxEmail.Text != "")
			{
				Contacto p = new Contacto(Request.Form["TextArea"],
					TextBoxEmail.Text);

				con = new SqlConnection(strcon);

				string insert = @"insert into t_contactoo(mensaje,email)" +
					" values(@mensaje,@email)";
				con = new SqlConnection(strcon);
				con.Open();
				using (SqlCommand cmd = con.CreateCommand())
				{
					cmd.CommandText = insert;
					cmd.CommandType = System.Data.CommandType.Text;

					SqlParameter param1 = new SqlParameter("mensaje", System.Data.SqlDbType.Text);
					param1.Value = p.Mensaje;
					cmd.Parameters.Add(param1);

					SqlParameter param2 = new SqlParameter("email", System.Data.SqlDbType.Text);
					param2.Value = p.Email;
					cmd.Parameters.Add(param2);

					cmd.ExecuteNonQuery();

				}
				TextBoxEmail.Text = "";
				con.Close();
			}
			else
			{
				if (TextBoxEmail.Text == "")
					TextBoxEmail.Text = "Ingrese Email";
				else if (Request.Form["TextArea"] == "")
					TextBoxEmail.Text = "Ingrese Mensaje";
			}


		}
	}
}