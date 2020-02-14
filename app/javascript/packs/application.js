// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
// require("summernote/summernote-bs4.min")
// require("summernote/lang/summernote-ko-KR")
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).on('turbolinks:load', function(){
  $('[data-provider="summernote"]').each(function(){
    $(this).summernote
      lang: 'ko-KR'
      height: 300
  });
});

$(function() {
  pageName = $('div.boxed').data('name');

  if (pageName == "submissions-new" || pageName == "submissions-edit" || pageName == "galleries-new") {
    console.log('hello');
    $('#image_upload_button').on('click', function(){
      console.log('??');
      $('#submission_file').trigger('click');
    });

    $('#submission_file').on('change', function(){
      readURL(this);
    });

    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#represent_image_display').attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
      };
    };
  };
});