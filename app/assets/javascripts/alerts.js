$(document).on('turbolinks:load', function () {
  console.log($(".alert"));
  $(".alert").delay(3000).fadeOut("slow");
});