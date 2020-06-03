using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DanceAcademy.Models;
namespace DanceAcademy.Controllers
{
    public class StaffController : Controller
    {
        // GET: Staff

        DanceAcademyEntities obj_staff = new DanceAcademyEntities();

        public ActionResult ViewStaff()
        {
            return View(obj_staff.StaffTables.ToList());
        }

        // GET: Staff/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Staff/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Staff/Create
       
            [HttpPost]
        public ActionResult Create([Bind(Exclude = "Id")] StaffTable AddStaff)
        {


            if (!ModelState.IsValid)
                return View();
            obj_staff.StaffTables.Add(AddStaff);
            obj_staff.SaveChanges();
            
            return RedirectToAction("ViewStaff");



        }

    

    // GET: Staff/Edit/5
    public ActionResult Edit(int id)
        {
            var staffToEdit = (from m in obj_staff.StaffTables where m.ID == id select m).First();
            return View(staffToEdit);
        }

        // POST: Staff/Edit/5
        [HttpPost]
        public ActionResult Edit(StaffTable staffToEdit)
        {
            var orignalRecord = (from m in obj_staff.StaffTables where m.ID == staffToEdit.ID select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            obj_staff.Entry(orignalRecord).CurrentValues.SetValues(staffToEdit);

            obj_staff.SaveChanges();
            return RedirectToAction("ViewStaff");

        }

        // GET: Staff/Delete/5
        public ActionResult Delete(StaffTable staffToDelete)
        {
            var d = obj_staff.StaffTables.Where(x => x.ID == staffToDelete.ID).FirstOrDefault();
            obj_staff.StaffTables.Remove(d);
            obj_staff.SaveChanges();
            return RedirectToAction("ViewStaff");
        }

        // POST: Staff/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            return View();
        }
    }
}
