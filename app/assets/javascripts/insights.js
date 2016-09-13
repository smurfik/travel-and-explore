$(document).ready(function() {

  $('#new_insight').on('ajax:success', function(e, data) {
    var li = document.createElement('li');
    li.innerHTML = data.username + ' ' + data.insight.body;
    $('ul.insights').prepend(li);
    $('#insight-error').text('');
    $('#insight_body').val('');
  }).on('ajax:error', function(e, data) {
    $('#insight-error').text(data.responseJSON.error);
  });

});
