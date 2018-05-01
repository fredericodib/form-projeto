// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap
//= require jquery-ui
//= require jquery-ui/widget
//= require jquery-ui/widgets/mouse
//= require touchpunch


w = $( ".audio-boxes1" ).width();
$( ".audio-boxes1" ).height(w);
$( ".audio-boxes2" ).height(w);
$( ".audio-boxes3" ).height(w);
$( ".audio-boxes4" ).height(w);

function stopAllAudios() {
	$('audio').each(function(){
	    this.pause(); // Stop playing
	    this.currentTime = 0; // Reset time
	}); 
}

function playSound (id) {
	stopAllAudios();
    document.getElementById(id).play();
}


function change(target) {
	var id = target.attributes[1].nodeValue;
	var arr = target.children;
	var str = "";
	for (var i = 0; i < arr.length; i++) {
	    str = str + arr[i].attributes[1].nodeValue + " "
	}
	$("#"+id)[0].defaultValue = str
}

$( function() {
    $( ".sortable" ).sortable({
    	handle: ".move",
	  	stop: function( event, ui ) {change(event.target)}
	});
} );

function play(list, i) {
	list[i].onended = function() {
		if (i < 3) {
			list[i+1].play()
			play(list, i+1)
		}
	};
}

$(".playlist").click((e) => {
	stopAllAudios();
	var list = $(e.currentTarget).closest("div").children("div").children().children().children("audio")
	
	list[0].play();
	list[0].onended = function() {
		list[1].play();
    	play(list, 1);
	};

});