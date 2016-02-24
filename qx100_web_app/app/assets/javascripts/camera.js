$(document).ready(function() {
  get_exposure_mode();
  get_iso();
  get_f();
  get_shutter();

  $("#zoom_in").on('click',function(){
    $.ajax({
      url:"/cameras/zoom_in.json",
      success:function(data) {
        return data;
      }
    })

  })

  $("#zoom_out").on('click',function(){
    $.ajax({
      url:"/cameras/zoom_out.json",
      success:function(data) {
        return data;
      }
    })

  })

  $("#take_pic").on('click',function(){
    $.ajax({
      url:"/cameras/take_pic.json",
      success:function(data) {
        console.log(data);
        $("#images").html("<a href='"+data[0][0]+"' target='_new'>Click to Open Image</a>");
        return data;
      }
    })
  })

  $("#e_intelligent").on('click',function(){
    $.ajax({
      url:"/cameras/e_intelligent.json",
      success:function(data) {
        get_exposure_mode();
      }
    })
  })

  $("#e_superior").on('click',function(){
    $.ajax({
      url:"/cameras/e_superior.json",
      success:function(data) {
        get_exposure_mode();
      }
    })
  })

  $("#e_program").on('click',function(){
    $.ajax({
      url:"/cameras/e_program.json",
      success:function(data) {
        get_exposure_mode();
      }
    })
  })

  $("#e_aperture").on('click',function(){
    $.ajax({
      url:"/cameras/e_aperture.json",
      success:function(data) {
        get_exposure_mode();
      }
    })
  })

  $("#e_shutter").on('click',function(){
    $.ajax({
      url:"/cameras/e_shutter.json",
      success:function(data) {
        get_exposure_mode();
      }
    })
  })

  $(".set_iso").click(function(){
    console.log($(this).attr("value"));
    $.ajax({
      url:"/cameras/set_iso.json?iso="+$(this).attr("value"),
      success:function(data) {
        get_iso();
      }
    })
  })

  $(".set_f").click(function(){
    console.log($(this).attr("value"));
    $.ajax({
      url:"/cameras/set_f.json?f="+$(this).attr("value"),
      success:function(data) {
        get_f();
      }
    })
  })

  $(".set_s").click(function(){
    console.log($(this).attr("value"));
    $.ajax({
      url:"/cameras/set_shutter.json?s="+$(this).attr("value"),
      success:function(data) {
        get_shutter();
      }
    })
  })




})

function get_exposure_mode() {
  $.ajax({
    url:"/cameras/get_exposure_mode.json",
    success:function(data) {
      $("#exposure_mode").html(data[0]);

    }
  })
}

function get_iso() {
  $.ajax({
    url:"/cameras/get_iso.json",
    success:function(data) {
      $("#iso").html(data[0]);
    }
  })
}

function get_f() {
  $.ajax({
    url:"/cameras/get_f.json",
    success:function(data) {
      $("#aperture").html(data[0]);
    }
  })
}

function get_shutter() {
  $.ajax({
    url:"/cameras/get_shutter.json",
    success:function(data) {
      $("#shutter").html(data[0]);
    }
  })
}
