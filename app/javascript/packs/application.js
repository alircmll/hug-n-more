import "bootstrap";
import $ from "jquery";

// MENU 
// $(window).scroll(function() {
//   /* affix after scrolling 100px */
//   if ($(document).scrollTop() >= 500) {
//     $("#navMenu").addClass("bg-light");
//     $("#navMenu").removeClass("bg-transparent");
//   } else {
//     $("#navMenu").removeClass("bg-light");
//     $("#navMenu").addClass("bg-transparent");
//   }
// });

// USER SIDE LOGIN

function openNav() {
  document.getElementById("mySidenav").style.width = "340px";
  document.getElementById("main").style.marginLeft = "340px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
} 

$('#userMenuBtn').click(openNav);
$('#closeUserBtn').click(closeNav);