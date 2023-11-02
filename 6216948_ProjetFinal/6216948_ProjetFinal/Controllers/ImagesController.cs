using _6216948_ProjetFinal.Data;
using _6216948_ProjetFinal.ViewModels;
using Humanizer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Drawing;


namespace _6216948_ProjetFinal.Controllers
{
    public class ImagesController : Controller
    {
        public readonly TP1_BD_6216948Context _context;

        public ImagesController(TP1_BD_6216948Context context)
        {
            _context = context;
        }


        // GET: ImagesController
        public async Task<IActionResult> Index()
        {
            if (_context.Images == null)
            {
                return Problem("Entity set 'Images' is null.");
            }


            List<ImageViewModel> ivn = await _context.Images
                .Select(x => new ImageViewModel
                {
                   image = x,ImageUrl=x.FichierImage==null?null : $"data:image/png;base64,{Convert.ToBase64String(x.FichierImage)}"
                })
                .ToListAsync();


            return View(ivn);
        }



        [HttpGet]
        public async Task<ActionResult> Create()
        {
            return View();
        }


        //POST: ImagesController/Create
        [HttpPost]
       [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(ImageUploadVM ImageVM)
        {
           
                if (ImageVM.FormFile != null && ImageVM.FormFile.Length >= 0)
                {
                    MemoryStream stream = new MemoryStream();
                    await ImageVM.FormFile.CopyToAsync(stream);
                    byte[] fichierImage = stream.ToArray();


                    ImageVM.Image.FichierImage = fichierImage;
                }
                _context.Add(ImageVM.Image);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");

        }








    }
}
