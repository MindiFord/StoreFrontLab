using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StoreFront.UI.MVC.Models;
using StoreFront.DATA;

namespace StoreFront.UI.MVC.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        public ActionResult Index()
        {
            // Create local version of cart from session (global)
            var shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            if (shoppingCart == null || shoppingCart.Count == 0)
            {
                shoppingCart = new Dictionary<int, CartItemViewModel>();
                ViewBag.Message = "There are no item in your cart.";
            }
            else
            {
                ViewBag.Message = null;
            }

            return View(shoppingCart);
        } // End SC Index

        public ActionResult RemoveFromCart(int id)
        {
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            shoppingCart.Remove(id);

            if (shoppingCart.Count == 0)
            {
                Session["cart"] = null;
            }

            return RedirectToAction("Index");

        }

        public ActionResult UpdateCart(int productID, int qty)
        {
            if (qty == 0)
            {
                RemoveFromCart(productID);

                return RedirectToAction("Index");
            }

            // Get cart from session and assign to local dictionary
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            // Update qty in LOCAL storage
            shoppingCart[productID].Qty = qty;

            // Return LOCAL cart to session (GLOBAL)
            Session["cart"] = shoppingCart;

            // Add message for when they update cart and there are no longer items in it
            if (shoppingCart.Count == 0)
            {
                ViewBag.Message = "There are no items in your cart";
            }

            // Need to RedirectToAction so login in Index action will run
            return RedirectToAction("Index");

        }

    }
}