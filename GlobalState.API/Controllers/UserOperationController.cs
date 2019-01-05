using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GlobalState.API.Services;
using Microsoft.AspNetCore.Mvc;

namespace GlobalState.API.Controllers
{
    public class UserOperationController : Controller
    {
        private readonly IUserOperationServices _operationServices;

        public UserOperationController(IUserOperationServices operationServices)
        {
            _operationServices = operationServices;
        }

        public IActionResult Index()
        {
            return View();
        }
    }
}