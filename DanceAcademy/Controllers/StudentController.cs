using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DanceAcademy.Models;
namespace DanceAcademy.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        DanceAcademyEntities1 obj_student = new DanceAcademyEntities1();

        public ActionResult ViewStudent()
        {
            return View(obj_student.StudentTables.ToList());
        }

        // GET: Student/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Student/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Student/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "Id")] StudentTable AddStudent)
        {

            if (!ModelState.IsValid)
                return View();
            obj_student.StudentTables.Add(AddStudent);
            obj_student.SaveChanges();

            return RedirectToAction("ViewStudent");

        }

        // GET: Student/Edit/5
        public ActionResult Edit(int id)
        {
            var studentToEdit = (from m in obj_student.StudentTables where m.id == id select m).First();
            return View(studentToEdit);
        }

        // POST: Student/Edit/5
        [HttpPost]
        public ActionResult Edit(StaffTable studentToEdit)
        {

            var orignalRecord = (from m in obj_student.StudentTables where m.id == studentToEdit.ID select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            obj_student.Entry(orignalRecord).CurrentValues.SetValues(studentToEdit);

            obj_student.SaveChanges();
            return RedirectToAction("ViewStudent");
        }

        // GET: Student/Delete/5
        public ActionResult Delete(StaffTable studentToDelete)
        {
            var d = obj_student.StudentTables.Where(x => x.id == studentToDelete.ID).FirstOrDefault();
            obj_student.StudentTables.Remove(d);
            obj_student.SaveChanges();
            return RedirectToAction("ViewStudent");
        }

        // POST: Student/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
