using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BloodBank_Team7.Models
{
    public class insert
    {
        private string cs = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;

        public string insert_donor(donors d)
        {
            string msg = "-1";
            SqlConnection con = new SqlConnection(cs);
            try
            {
                SqlCommand cmd = new SqlCommand("sp_insert_donor", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@d_email", SqlDbType.NVarChar, 50).Value = d.d_email;
                cmd.Parameters.Add("@d_password", SqlDbType.NVarChar, 50).Value = d.d_password;
                cmd.Parameters.Add("@d_cnic", SqlDbType.NVarChar, 50).Value = d.d_cnic;
                cmd.Parameters.Add("@d_name", SqlDbType.NVarChar, 50).Value = d.d_name;
                cmd.Parameters.Add("@d_age", SqlDbType.NVarChar, 50).Value = d.d_age;
                cmd.Parameters.Add("@d_hospital", SqlDbType.NVarChar, 50).Value = d.d_hosp_id;
                cmd.Parameters.Add("@d_contact", SqlDbType.NVarChar, 50).Value = d.d_contact;
                cmd.Parameters.Add("@d_blood", SqlDbType.NVarChar, 3).Value = d.d_bgroup;

                SqlParameter para = new SqlParameter();
                para.SqlDbType = SqlDbType.Int;
                para.Direction = ParameterDirection.Output;
                para.ParameterName = "@d_id";
                cmd.Parameters.Add(para);

                con.Open();
                cmd.ExecuteNonQuery();
                msg = para.Value.ToString();


            }
            catch (Exception)
            {

            }
            finally
            {
                con.Close();
            }

            return msg;
        }
        
    }
}