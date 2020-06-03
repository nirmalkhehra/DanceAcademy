using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DanceAcademy.Models;
namespace DanceAcademy.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult SignIn()
        {
            return View();
        }

        public ActionResult SignInCheck(Login login)
        {

            SqlConnection connection = new SqlConnection();
            SqlCommand command = new SqlCommand();
            SqlDataReader dataReader;

            connection.ConnectionString = "Data Source=SYSTEM;Initial Catalog=DanceAcademy;Integrated Security=True";




            connection.Open();
            command.Connection = connection;
            command.CommandText = "select * from AdminTable where UserID='" + login.txtName + "' and Password='" + login.Password + "'";
           
            dataReader = command.ExecuteReader();

            if (dataReader.Read())
            {
                connection.Close();
                return View("Dashboard");
            }
            else
            {
                connection.Close();
                return View("ErrorMessage");
            }




            
        }



    }
}