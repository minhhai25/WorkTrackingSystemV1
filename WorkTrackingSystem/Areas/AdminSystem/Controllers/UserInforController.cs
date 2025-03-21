﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WorkTrackingSystem.Common;
using WorkTrackingSystem.Models;

namespace WorkTrackingSystem.Areas.AdminSystem.Controllers
{
    [Area("AdminSystem")]
    public class UserInforController : BaseController
    {
        private readonly WorkTrackingSystemContext _context;

        public UserInforController(WorkTrackingSystemContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> UserInfor()
        {
            var userId = HttpContext.Session.GetString("AdminUserId");
            if (string.IsNullOrEmpty(userId))
            {
                return RedirectToAction("Index", "Login");
            }
            long id = long.Parse(userId);
            var user = await _context.Users.FirstOrDefaultAsync(u => u.Id == id);

            if (user == null || user.EmployeeId == null)
            {
                return NotFound("Không tìm thấy thông tin nhân viên.");
            }

            var employee = await _context.Employees
                .Include(e => e.Department)
                .Include(e => e.Position)
                .FirstOrDefaultAsync(e => e.Id == user.EmployeeId);

            if (employee == null)
            {
                return NotFound("Không tìm thấy thông tin nhân viên.");
            }

            return View(employee);
        }

        [HttpGet]
        public async Task<IActionResult> ChangePassword()
        {
            // Lấy UserId từ Session
            var userIdString = HttpContext.Session.GetString("AdminUserId");

            if (string.IsNullOrEmpty(userIdString) || !long.TryParse(userIdString, out long userId))
            {
                return RedirectToAction("Login", "Account"); // Chuyển hướng nếu chưa đăng nhập
            }

            var user = await _context.Users.FindAsync(userId);
            if (user == null)
            {
                return NotFound();
            }

            var model = new UserEditViewModel
            {
                Id = user.Id,
                UserName = user.UserName,
                //Email = user.Employee?.Email
            };

            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> ChangePassword(UserEditViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            var userIdString = HttpContext.Session.GetString("AdminUserId");
            if (string.IsNullOrEmpty(userIdString) || !long.TryParse(userIdString, out long userId))
            {
                return RedirectToAction("Login", "Account");
            }

            var user = await _context.Users.FindAsync(userId);
            if (user == null)
            {
                return NotFound();
            }

            // Cập nhật email
            //if (!string.IsNullOrEmpty(model.Email))
            //{
            //    user.Employee.Email = model.Email;
            //}

            // Nếu đổi mật khẩu

            
            if (!string.IsNullOrEmpty(model.CurrentPassword))
            {
                var CurrentPassword = SHA.GetSha256Hash(model.CurrentPassword);
                if (user.Password != CurrentPassword)
                {
                    ModelState.AddModelError(string.Empty, "Mật khẩu hiện tại không đúng.");
                    return View(model);
                }

                if (model.NewPassword != model.ConfirmPassword)
                {
                    ModelState.AddModelError(string.Empty, "Mật khẩu mới không khớp.");
                    return View(model);
                }
                if (!string.IsNullOrEmpty(model.NewPassword))
                    user.Password = SHA.GetSha256Hash(model.NewPassword);
            }

            user.UpdateDate = DateTime.Now;
            user.UpdateBy = HttpContext.Session.GetString("Adminl"); ;

            await _context.SaveChangesAsync();

            ViewData["Message"] = "Cập nhật thành công!";
            return View(model);
        }


    }
}
