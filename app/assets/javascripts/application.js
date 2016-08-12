// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require tether
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


/**
 * Created by Kupletsky Sergey on 05.11.14.
 *
 * Material Design Responsive Table
 * Tested on Win8.1 with browsers: Chrome 37, Firefox 32, Opera 25, IE 11, Safari 5.1.7
 * You can use this table in Bootstrap (v3) projects. Material Design Responsive Table CSS-style will override basic bootstrap style.
 * JS used only for table constructor: you don't need it in your project
 */
 // @import 'bootstrap';
 // @import 'bootstrap.min.js';



$(document).on('turbolinks:load', function() {
  console.log("JS loaded");
  var $events = $('.events');
  var $divs = $events.find('.for-search');
  $('#likes').on('click', function() {
    var button = this;
    $divs.sort(function(a, b) {
      if($(button).text() === "Most Likes") {
        return $(a).data('likes') < $(b).data('likes');
      } else {
        return $(a).data('likes') > $(b).data('likes');
      }
    }).each(function() {
      $(this).appendTo($events);
    });
  });
  $('#recent').on('click', function() {
    var button = this;
    $divs.sort(function(a, b) {
      if($(button).text() === "Most Recent Event") {
        return $(a).data('added') > $(b).data('added');
      } else {
        return $(a).data('added') < $(b).data('added');
      }
    }).each(function() {
      $(this).appendTo($events);
    });
  });

  $('#search').on('keyup', function() {
    var input = this;
    $divs.each(function() {
      var searchString = $(input).val().toLowerCase();
      var textToMatch = $(this).data('searchstring').toLowerCase();

      if(textToMatch.match(searchString)) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });
});

