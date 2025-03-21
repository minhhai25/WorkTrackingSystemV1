﻿using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WorkTrackingSystem.Common;
using WorkTrackingSystem.Models;
using X.PagedList.Extensions;

namespace WorkTrackingSystem.Areas.AdminSystem.Controllers
{
    [Area("AdminSystem")]
    public class DepartmentsController : BaseController
    {
        private readonly WorkTrackingSystemContext _context;

        public DepartmentsController(WorkTrackingSystemContext context)
        {
            _context = context;
        }

        // GET: AdminSystem/Departments
        public async Task<IActionResult> Index()
        {
           
            return View(await _context.Departments.Where(d=>d.IsActive==true).ToListAsync());
        }
      

        // GET: AdminSystem/Departments/Details/5
        public async Task<IActionResult> Details(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var department = await _context.Departments
                .FirstOrDefaultAsync(m => m.Id == id);
            if (department == null)
            {
                return NotFound();
            }
			if (Request.Headers["X-Requested-With"] == "XMLHttpRequest")
			{
				return PartialView("_Details", department);
			}

			return View(department);
        }

        // GET: AdminSystem/Departments/Create
        public IActionResult Create()
        {
			if (Request.Headers["X-Requested-With"] == "XMLHttpRequest")
			{
				return PartialView("_Create");
			}
			return View();
        }

        // POST: AdminSystem/Departments/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Code,Name,Description,IsDelete,IsActive,CreateDate,UpdateDate,CreateBy,UpdateBy")] Department department)
        {
            if (ModelState.IsValid)
            {
                _context.Add(department);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
			if (Request.Headers["X-Requested-With"] == "XMLHttpRequest")
			{
				return PartialView("_Create", department);
			}
			return View(department);
        }

        // GET: AdminSystem/Departments/Edit/5
        public async Task<IActionResult> Edit(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var department = await _context.Departments.FindAsync(id);
            if (department == null)
            {
                return NotFound();
            }
			if (Request.Headers["X-Requested-With"] == "XMLHttpRequest")
			{
				return PartialView("_Edit", department);
			}
			return View(department);
        }

        // POST: AdminSystem/Departments/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(long id, [Bind("Id,Code,Name,Description,IsDelete,IsActive,CreateDate,UpdateDate,CreateBy,UpdateBy")] Department department)
        {
            if (id != department.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(department);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DepartmentExists(department.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(department);
        }

        // GET: AdminSystem/Departments/Delete/5
        public async Task<IActionResult> Delete(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var department = await _context.Departments
                .FirstOrDefaultAsync(m => m.Id == id);
            if (department == null)
            {
                return NotFound();
            }
			if (Request.Headers["X-Requested-With"] == "XMLHttpRequest")
			{
				return PartialView("_Delete", department);
			}
			return View(department);
        }

        // POST: AdminSystem/Departments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(long id)
        {
            var department = await _context.Departments.FindAsync(id);
            if (department != null)
            {
                department.IsDelete = true;
                department.IsActive = false;
                _context.Departments.Update(department);
                //_context.Departments.Remove(department);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DepartmentExists(long id)
        {
            return _context.Departments.Any(e => e.Id == id);
        }
    }
}
