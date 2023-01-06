var music=document.getElementById("music");
var x=1;


  
navigator.mediaDevices.getUserMedia({ audio: true }).then(function (stream) {
        
    var music = document.getElementById("music"); 
	document.getElementById("mute").src="./picture/volume-up.svg";
	document.getElementById("mute").alt="volume-up";
	x=0;
    music.play();
     
         // stop microphone stream acquired by getUserMedia
     stream.getTracks().forEach(function (track) { track.stop(); });
});

function playmusic(){
			
	if(x==1){
		document.getElementById("mute").src="./picture/volume-up.svg";
		document.getElementById("mute").alt="volume-up";
		music.play();
		x=0;
		
	}
	else{
		document.getElementById("mute").src="./picture/volume-mute.svg";
		document.getElementById("mute").alt="volume-mute";
		music.pause();
		x=1;
    }
}

// $(document).ready(function(){
// 	var musicplay = 1;
// 	navigator.mediaDevices.getUserMedia({ audio: true }).then(function (stream) {
        
//     var music = document.getElementById("music"); 
// 	document.getElementById("mute").src="Class_webpage/webpage/testexample/picture/volume-up.svg";
// 	document.getElementById("mute").alt="volume-up";
// 	musicplay=0;
//     music.play();
     
//          // stop microphone stream acquired by getUserMedia
//      stream.getTracks().forEach(function (track) { track.stop(); });
// 	});

	
// });