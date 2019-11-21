import "bootstrap";
import $ from "jquery";
// IMPORT

import { openNav, closeNav } from "plugins/sidelog.js";
import { collapse } from "plugins/collapsible.js";


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

$("#userMenuBtn").click(openNav);
$("#closeUserBtn").click(closeNav);
collapse();


