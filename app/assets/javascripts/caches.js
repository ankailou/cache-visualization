//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$.noConflict();
jQuery( document ).ready(function( $ ) {

  $("tr[data-link]").on('click', function() {
      window.location = this.data("link");
  });

});
