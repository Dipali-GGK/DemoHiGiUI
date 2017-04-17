using Higi_UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Results;


namespace Higi_UI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class PatientController : ApiController
    {
        [HttpPost]
        public async Task SendNotification(User user)
        {
            if (!string.IsNullOrEmpty(user.UserId))
            {
                string result = string.Empty;
                HttpClient cons = new HttpClient();
                cons.BaseAddress = new Uri("http://localhost:50185/");
                cons.DefaultRequestHeaders.Accept.Clear();
                cons.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage res = await cons.GetAsync("api/User/UpdateHealthData/" + user);
                res.EnsureSuccessStatusCode();
                if (res.IsSuccessStatusCode)
                {
                    result = "Message placed in Queue";
                }

               // return Json(new { success = true, message = result },JsonRequestBehavior.AllowGet);
            }
        }

        

        //send patient data to middleware on demand
        [HttpGet]
        public User GetPatient(string user)
        {
            List<User> PatientData = new List<Models.User>();
            PatientData.Add(new User() { UserId = "1", Messgae = "Dipali" });
            PatientData.Add(new User() { UserId = "2", Messgae = "Amitava" });
            PatientData.Add(new User() { UserId = "3", Messgae = "Deepak" });
            User userDetails = null;
            if (user!=null && !string.IsNullOrEmpty(user) && PatientData.Any(p => p.UserId == user))
            {
                userDetails = new User();
                userDetails = PatientData.Where(p => p.UserId == user).FirstOrDefault();
            }
            return userDetails;
        }
    }
}
