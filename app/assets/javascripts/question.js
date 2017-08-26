$(document).ready(function() {
  $('.answer').click(function() {
    var correctAnswer = answers[$(this).data('question')][$(this).index() - 1]["correct"];
    if (correctAnswer) {
      $(this).removeClass('btn-primary');
      $(this).addClass('btn-success');
    } else {
      $(this).removeClass('btn-primary');
      $(this).addClass('btn-danger');
    }
  })
})
