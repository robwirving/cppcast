$(function(){
	var $audioPlayer = $('#audioplayer');
	if($audioPlayer.length) {
		var audiotag = document.createElement('audio');

	    /* Do we not support MP3 audio? If not, dynamically made a Flash SWF player.  */
	    if (!!(audiotag.canPlayType && audiotag.canPlayType('audio/mpeg;').replace(/no/, ''))) {

	    }
	    else /* Ok, we do support MP3 audio, style the audio tag into a touch-friendly player */
	    {
	        /* If we didn't do the "if mp3 supported" check above, this call would prompt Firefox install quicktime! */
	        $audioPlayer.audioPlayer();
	    }

	    buildPlaybackControls();
	}
});
function setPlaybackSpeed(speed) {
        [].slice.call(document.querySelectorAll('audio,video')).map(
                function(e, idx) {
                        e.playbackRate = speed;
                }
        );
}
var buildPlaybackControls = function() {
        [].slice.call(document.querySelectorAll('audio,video')).map(
                function(e, idx) {
                        let controls = document.createElement('div');
                        controls.className = 'playback-rate-controls';
                        let list = document.createElement('ul');
                        list.innerHTML += '<li><a href="#" onclick="setPlaybackSpeed(0.5)">0.5⨉</a></li>';
                        list.innerHTML += '<li><a href="#" onclick="setPlaybackSpeed(1)">1⨉</a></li>';
                        list.innerHTML += '<li><a href="#" onclick="setPlaybackSpeed(1.25)">1.25⨉</a></li>';
                        list.innerHTML += '<li><a href="#" onclick="setPlaybackSpeed(1.5)">1.5⨉</a></li>';
                        list.innerHTML += '<li><a href="#" onclick="setPlaybackSpeed(1.75)">1.75⨉</a></li>';
                        list.innerHTML += '<li><a href="#" onclick="setPlaybackSpeed(2)">2⨉</a></li>';
                        controls.appendChild(list);
                        e.parentNode.insertBefore(controls, e.nextSibling);
                }
        );
};