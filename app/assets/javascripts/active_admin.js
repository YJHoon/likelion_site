//= require active_admin/base
//= require activeadmin/quill_editor/quill
//= require activeadmin/quill_editor_input
//= require activeadmin_addons/all
//= require active_material
//= require imageviewer



$(function () {
  $.ajaxSetup({
    headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }
  });

  var viewer = ImageViewer();
  $('.imageviewer').click(function () {
      var imgSrc = this.src
      viewer.show(imgSrc);
  });
});
