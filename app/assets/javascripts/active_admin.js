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

  for(i = 1;i < 11; i++) {
    $('#recruit_ask'+ i +'_q_input').hide();
    $('#recruit_ask' + i + '_choices_input').hide();
  }

  for(i = 1; i < 11; i++) {
    $('#recruit_ask'+ i +'_type').on('change', function(){
        var val = $(this).val();
        var id = $(this).data("id");

        if (val == "text") {
          $('#recruit_ask'+ id +'_choices_input').hide();
          $('#recruit_ask'+ id +'_q_input').show();
        }
        else if (val == "choice") {
          $('#recruit_ask'+ id +'_q_input').show();
          $('#recruit_ask'+ id +'_choices_input').show();
        }
        else if (val == "multi_choice") {
          $('#recruit_ask'+ id +'_q_input').show();
          $('#recruit_ask'+ id +'_choices_input').show();
        }
        else if (val == "file") {
          $('#recruit_ask'+ id +'_choices_input').hide();
          $('#recruit_ask'+ id +'_q_input').show();
        }
    });
  };


});


function show_ask_types(ask_count) {
  one = 1;
  for(i = 1; i < 11; i++) {
    $('#recruit_ask'+ i +'_type_input').hide();
  }
  for(i = 0; i < Number(ask_count) + Number(one); i++) {
    $('#recruit_ask'+ i +'_type_input').show();
  }
}