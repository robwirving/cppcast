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
	}
});