// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(function() {
  pageName = $('div.boxed').data('name');

  if (pageName == "submissions-index" || pageName == "home-my_homeworks") {
    $('#all').on('click', function(){
      $('.submission-card').show();
    });
    $('#great').on('click', function(){
      $('.normal').hide();
      $('.fun').hide();
      $('.great').show();
    });
    $('#fun').on('click', function(){
      $('.normal').hide();
      $('.fun').show();
      $('.great').hide();
    });
  };

  if (pageName == "home-index" || pageName == "assignments-index" || pageName == "assignments-show") {
    console.log('asd');
    $('#no_homework').on('click', function(e){
      console.log('good');
      e.preventDefault();
      toastr.info('현재 등록된 과제가 없거나 제출기한이 지났습니다.');
    });
  }

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