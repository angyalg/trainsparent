$(document).ready(function() {
  $('.answer').click(function() {
    if ($(this).data('correct')) {
      $(this).removeClass('btn-primary');
      $(this).addClass('btn-success');
      var submitButton = $($(this).parent().parent().find(".question-next-button")[0]);
      submitButton.removeClass('disabled');
      submitButton.addClass('enabled');
    } else {
      $(this).removeClass('btn-primary');
      $(this).addClass('btn-danger');
    }
  })
})
