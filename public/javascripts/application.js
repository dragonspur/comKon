// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$.ajaxSetup({
  beforeSend: function(xhr) {
    xhr.setRequestHeader("Accept", "text/javascript");
  }
});


$(document).ready(function(){
//$("#event_starts_at").datepicker({ altField: 'input#date', altFormat: 'yy-mm-dd' });
$("#event_starts_at").datetimepicker({ dateFormat: 'yy-mm-dd' });
$("#event_ends_at").datetimepicker({ dateFormat: 'yy-mm-dd' });

 });
