$(function(){
  $('.staff-fields__body').autosize({append: "\n"});
});

var data = {'data-format': 'yyyy-MM-dd hh:mm:ss' };
$(function(){
  $('.datepicker').attr(data);
  $('.datepicker').datetimepicker();
});