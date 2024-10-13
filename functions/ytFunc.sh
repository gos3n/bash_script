#!/usr/bin/zsh

function ytlist () {
	listPath=$(echo $1)
	yt-dlp \
		-a \
		$listPath \
		--audio-quality 'bv*+ba' \
		-o "%(autonumber)03d.%(ext)s" \
		--progress \
		--quiet
}

function ytdl () {
	echo -n "enter link: "
	read link

	yt-dlp \
		$link \
		--audio-quality 'bv*+ba' \
		-o "%(autonumber)03ds.%(ext)s" \
		--hls-prefer-ffmpeg \
		--quiet \
		--progress
}

