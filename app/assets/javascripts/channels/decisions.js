App.decisions = App.cable.subscriptions.create('DecisionstreamChannel', {  
  received: function(data) {
    $("#decisions").removeClass('hidden')
    return $('#decisions').append(this.renderDecision(data));
  },

  renderDecision: function(data) {
  	// Gotta do something with the server's decision!
    // return "<p> <b>" + data.user + ": </b>" + data.value + "</p>";
  }
});