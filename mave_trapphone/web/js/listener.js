$(document).ready(function () {
  function toggleBodyVisibility(isVisible) {
    if (isVisible) {
      $("body").show();
    } else {
      $("body").hide();
    }
  }

  toggleBodyVisibility(false);

  window.addEventListener('message', function (eventData) {
    var messageData = eventData.data;
    if (messageData.type === "open") {
      if (messageData.status == true) {
        toggleBodyVisibility(true);
      } else {
        toggleBodyVisibility(false);
      }
    }
  });

  document.onkeyup = function (keyEvent) {
    if (keyEvent.which === 27) 
    {
      $.post("https://mave_trapphone/close", JSON.stringify({}));
      return;
    }
  };
});
