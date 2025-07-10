

if  ! pidof spotify_player >> /dev/null ; then
  printf "starting spotify"
  spotify_player -d 
fi 

spotify_player playback play

