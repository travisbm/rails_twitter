$('#newTweet').on('click', function () {
  $.ajax({
    url: '/tweets',
    dataType: 'JSON',
    method: "POST",
    data: {
      tweet: {
        message: $('#tweet_message').val(),
      }
    },
    success: function (response) {
      $('#tweet_message').val('');
      $('.tweets').append('<h3>Tweet Posted!</h3>');
    }
  });
});
