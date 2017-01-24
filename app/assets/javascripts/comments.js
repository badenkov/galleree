$(document).ready(function() {
  $('#new_comment').submit(function() {
    $('#comment_text').val($('#comment-text').html());
    $('#comment-text').html('');
  });
});