using Higi_UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Higi_UI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class PatientController : ApiController
    {
        [HttpPost]
        public void SendNotification(User user)
        {
            if (!string.IsNullOrEmpty(user.UserId))
            {
                //ToDO call higi api to send notification
            }

        }

        //send patient data to middleware on demand
        [HttpGet]
        public string GetPatient(User user)
        {
            List<User> PatientData = new List<Models.User>();
            PatientData.Add(new User() { UserId = "1", Messgae = "Dipali" });
            PatientData.Add(new User() { UserId = "2", Messgae = "Amitava" });
            PatientData.Add(new User() { UserId = "3", Messgae = "Deepak" });
            string message = string.Empty;

            if (!string.IsNullOrEmpty(user.UserId) && PatientData.Any())
            {

                message = PatientData.Where(p => p.UserId == user.UserId).FirstOrDefault().ToString();
            }
            return message;
        }
    }
}
