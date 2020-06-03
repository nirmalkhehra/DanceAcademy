using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DanceAcademy.Models;

namespace DanceAcademy.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Service()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Gallery()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }


        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public ActionResult feedBack(Contact contact)
        {

            SqlConnection connection = new SqlConnection();
            SqlCommand command = new SqlCommand();
            

            connection.ConnectionString = "Data Source=SYSTEM;Initial Catalog=DanceAcademy;Integrated Security=True";




            connection.Open();
            command.Connection = connection;
            
            command.CommandText = "insert into ContactTable(Name,Email,Phone,Message) values ('"+contact.txtName+"','"+contact.txtEmail+"','"+contact.txtPhone+"','"+contact.txtMessage+"')";

            command.ExecuteNonQuery();
            connection.Close();



            return View("view");
        }

    }
}