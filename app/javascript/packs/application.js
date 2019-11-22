import "bootstrap";
import $ from "jquery";

// IMPORT VAR, LET, CONST
import { openNav, closeNav } from "plugins/sidelog.js";
import { collapse } from "plugins/collapsible.js";
// import { profile } from "plugins/sidelog.js";


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

// MENU
$("#userMenuBtn").click(openNav);
$("#closeUserBtn").click(closeNav);

// Collaspse ?
collapse();
// profile();

  $(document).ready(function(){
    var $Menu = $('.Img');
    $('.Img').mouseenter(function() {
          $('.PopUp').css('opacity', '1');
      $('.PopUp').css('margin-top', '20px');
      });
      $('.Img').mouseleave(function() {
          $('.PopUp').css('opacity', '0');
      $('.PopUp').css('margin-top', '0px');
      });
    $('.Img').on('click', function() {
      if($Menu.hasClass('Img')){
          $('.Img').addClass('click');
      $('.Img').removeClass('Img');
          $('.Profile').addClass('clickProfile');
          $('.Profile').removeClass('Profile');
          $('.clickPopUp').css('display', 'block');
          $('.PopUp').css('display', 'none');
      }else{
      $('.click').addClass('Img');
      $('.click').removeClass('click');
          $('.clickProfile').addClass('Profile');
          $('.clickProfile').removeClass('clickProfile');
                  $('.clickPopUp').css('display', 'none');
          $('.PopUp').css('display', 'block');
        }
      });
    });
