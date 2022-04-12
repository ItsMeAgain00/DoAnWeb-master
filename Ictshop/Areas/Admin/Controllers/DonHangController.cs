using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Ictshop.Models;

namespace Ictshop.Areas.Admin.Controllers
{
    public class DonHangController : Controller
    {
        // GET: Admin/DonHang
        private Qlbanhang db = new Qlbanhang();
        public List<GioHang> LayGioHang()
        {
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang == null)
            {
                //Nếu giỏ hàng chưa tồn tại thì mình tiến hành khởi tao list giỏ hàng (sessionGioHang)
                lstGioHang = new List<GioHang>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }
        public ActionResult Index()
        {
            return View(db.Donhangs.ToList());
        }
        public ActionResult XuLyIndex(int id)
        {
            var ct = db.Chitietdonhangs.Where(n => n.Madon == id).ToList();
            return View(ct);
        }
        public ActionResult XuLy (int id)
        {
            Donhang dh = db.Donhangs.SingleOrDefault(n => n.Madon == id);
            Sanpham sp = new Sanpham();
            List<Chitietdonhang> ct = db.Chitietdonhangs.ToList();
            foreach (var i in ct)
            {
                if(i.Madon == dh.Madon)
                {
                    sp = db.Sanphams.Single(n => n.Masp == i.Masp);
                    sp.Soluong -= i.Soluong;
                    db.SaveChanges();
                }
            }
            dh.Tinhtrang = 1;
            db.SaveChanges();
            return RedirectToAction("Index", "DonHang");
        }

    }
}