$(document).ready(function() {
  $('.answer').click(function() {
    var correctAnswer = answers[$(this).data('question')][$(this).index() - 1]["correct"];
    if (correctAnswer) {
      $(this).css("color", "green" );
    } else {
      $(this).css("color", "red" );
    }
  })
})
