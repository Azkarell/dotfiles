#compdef spotify_player

autoload -U is-at-least

_spotify_player() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" : \
'-t+[Application theme]:THEME:_default' \
'--theme=[Application theme]:THEME:_default' \
'-c+[Path to the application'\''s config folder]:FOLDER:_default' \
'--config-folder=[Path to the application'\''s config folder]:FOLDER:_default' \
'-C+[Path to the application'\''s cache folder]:FOLDER:_default' \
'--cache-folder=[Path to the application'\''s cache folder]:FOLDER:_default' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_spotify_player_commands" \
"*::: :->spotify_player" \
&& ret=0
    case $state in
    (spotify_player)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_spotify_player__get_commands" \
"*::: :->get" \
&& ret=0

    case $state in
    (get)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-get-command-$line[1]:"
        case $line[1] in
            (key)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':key:(playback devices user-playlists user-liked-tracks user-saved-albums user-followed-artists user-top-tracks queue)' \
&& ret=0
;;
(item)
_arguments "${_arguments_options[@]}" : \
'-i+[]: :_default' \
'--id=[]: :_default' \
'-n+[]: :_default' \
'--name=[]: :_default' \
'-h[Print help]' \
'--help[Print help]' \
':item_type:(playlist album artist track)' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__get__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-get-help-command-$line[1]:"
        case $line[1] in
            (key)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(item)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(playback)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_spotify_player__playback_commands" \
"*::: :->playback" \
&& ret=0

    case $state in
    (playback)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-playback-command-$line[1]:"
        case $line[1] in
            (start)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_spotify_player__playback__start_commands" \
"*::: :->start" \
&& ret=0

    case $state in
    (start)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-playback-start-command-$line[1]:"
        case $line[1] in
            (context)
_arguments "${_arguments_options[@]}" : \
'-i+[]: :_default' \
'--id=[]: :_default' \
'-n+[]: :_default' \
'--name=[]: :_default' \
'-s[Shuffle tracks within the launched playback]' \
'--shuffle[Shuffle tracks within the launched playback]' \
'-h[Print help]' \
'--help[Print help]' \
':context_type:(playlist album artist)' \
&& ret=0
;;
(track)
_arguments "${_arguments_options[@]}" : \
'-i+[]: :_default' \
'--id=[]: :_default' \
'-n+[]: :_default' \
'--name=[]: :_default' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(liked)
_arguments "${_arguments_options[@]}" : \
'-l+[The limit for number of tracks to play]: :_default' \
'--limit=[The limit for number of tracks to play]: :_default' \
'-r[Randomly pick the tracks instead of picking tracks from the beginning]' \
'--random[Randomly pick the tracks instead of picking tracks from the beginning]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(radio)
_arguments "${_arguments_options[@]}" : \
'-i+[]: :_default' \
'--id=[]: :_default' \
'-n+[]: :_default' \
'--name=[]: :_default' \
'-h[Print help]' \
'--help[Print help]' \
'::item_type:(playlist album artist track)' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__playback__start__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-playback-start-help-command-$line[1]:"
        case $line[1] in
            (context)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(track)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(liked)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(radio)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(play-pause)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(play)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(pause)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(next)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(previous)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(shuffle)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(repeat)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(volume)
_arguments "${_arguments_options[@]}" : \
'--offset[Increase the volume percent by an offset]' \
'-h[Print help]' \
'--help[Print help]' \
':percent:_default' \
&& ret=0
;;
(seek)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':position_offset_ms:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__playback__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-playback-help-command-$line[1]:"
        case $line[1] in
            (start)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__playback__help__start_commands" \
"*::: :->start" \
&& ret=0

    case $state in
    (start)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-playback-help-start-command-$line[1]:"
        case $line[1] in
            (context)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(track)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(liked)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(radio)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(play-pause)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(play)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pause)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(shuffle)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(repeat)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(volume)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(seek)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(connect)
_arguments "${_arguments_options[@]}" : \
'-i+[]: :_default' \
'--id=[]: :_default' \
'-n+[]: :_default' \
'--name=[]: :_default' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(like)
_arguments "${_arguments_options[@]}" : \
'-u[Unlike the currently playing track]' \
'--unlike[Unlike the currently playing track]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(authenticate)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(playlist)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_spotify_player__playlist_commands" \
"*::: :->playlist" \
&& ret=0

    case $state in
    (playlist)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-playlist-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
'-p[Sets the playlist to public]' \
'--public[Sets the playlist to public]' \
'-c[Sets the playlist to collaborative]' \
'--collab[Sets the playlist to collaborative]' \
'-h[Print help]' \
'--help[Print help]' \
'::name:_default' \
'::description:_default' \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::id:_default' \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
'-d[Deletes any previously imported tracks that are no longer in the imported playlist since last import.]' \
'--delete[Deletes any previously imported tracks that are no longer in the imported playlist since last import.]' \
'-h[Print help]' \
'--help[Print help]' \
'::from:_default' \
'::to:_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(fork)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::id:_default' \
&& ret=0
;;
(sync)
_arguments "${_arguments_options[@]}" : \
'-d[Deletes any previously imported tracks that are no longer in an imported playlist since last import.]' \
'--delete[Deletes any previously imported tracks that are no longer in an imported playlist since last import.]' \
'-h[Print help]' \
'--help[Print help]' \
'::id:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__playlist__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-playlist-help-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fork)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sync)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(generate)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':shell:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(search)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':query -- Search query:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-help-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__help__get_commands" \
"*::: :->get" \
&& ret=0

    case $state in
    (get)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-help-get-command-$line[1]:"
        case $line[1] in
            (key)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(item)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(playback)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__help__playback_commands" \
"*::: :->playback" \
&& ret=0

    case $state in
    (playback)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-help-playback-command-$line[1]:"
        case $line[1] in
            (start)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__help__playback__start_commands" \
"*::: :->start" \
&& ret=0

    case $state in
    (start)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-help-playback-start-command-$line[1]:"
        case $line[1] in
            (context)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(track)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(liked)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(radio)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(play-pause)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(play)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pause)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(shuffle)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(repeat)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(volume)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(seek)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(connect)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(like)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(authenticate)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(playlist)
_arguments "${_arguments_options[@]}" : \
":: :_spotify_player__help__playlist_commands" \
"*::: :->playlist" \
&& ret=0

    case $state in
    (playlist)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spotify_player-help-playlist-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fork)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sync)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(generate)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(search)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_spotify_player_commands] )) ||
_spotify_player_commands() {
    local commands; commands=(
'get:Get Spotify data' \
'playback:Interact with the playback' \
'connect:Connect to a Spotify device' \
'like:Like currently playing track' \
'authenticate:Authenticate the application' \
'playlist:Playlist editing' \
'generate:Generate shell completion for the application CLI' \
'search:Search spotify' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player commands' commands "$@"
}
(( $+functions[_spotify_player__authenticate_commands] )) ||
_spotify_player__authenticate_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player authenticate commands' commands "$@"
}
(( $+functions[_spotify_player__connect_commands] )) ||
_spotify_player__connect_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player connect commands' commands "$@"
}
(( $+functions[_spotify_player__generate_commands] )) ||
_spotify_player__generate_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player generate commands' commands "$@"
}
(( $+functions[_spotify_player__get_commands] )) ||
_spotify_player__get_commands() {
    local commands; commands=(
'key:Get data by key' \
'item:Get a Spotify item'\''s data' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player get commands' commands "$@"
}
(( $+functions[_spotify_player__get__help_commands] )) ||
_spotify_player__get__help_commands() {
    local commands; commands=(
'key:Get data by key' \
'item:Get a Spotify item'\''s data' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player get help commands' commands "$@"
}
(( $+functions[_spotify_player__get__help__help_commands] )) ||
_spotify_player__get__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player get help help commands' commands "$@"
}
(( $+functions[_spotify_player__get__help__item_commands] )) ||
_spotify_player__get__help__item_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player get help item commands' commands "$@"
}
(( $+functions[_spotify_player__get__help__key_commands] )) ||
_spotify_player__get__help__key_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player get help key commands' commands "$@"
}
(( $+functions[_spotify_player__get__item_commands] )) ||
_spotify_player__get__item_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player get item commands' commands "$@"
}
(( $+functions[_spotify_player__get__key_commands] )) ||
_spotify_player__get__key_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player get key commands' commands "$@"
}
(( $+functions[_spotify_player__help_commands] )) ||
_spotify_player__help_commands() {
    local commands; commands=(
'get:Get Spotify data' \
'playback:Interact with the playback' \
'connect:Connect to a Spotify device' \
'like:Like currently playing track' \
'authenticate:Authenticate the application' \
'playlist:Playlist editing' \
'generate:Generate shell completion for the application CLI' \
'search:Search spotify' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player help commands' commands "$@"
}
(( $+functions[_spotify_player__help__authenticate_commands] )) ||
_spotify_player__help__authenticate_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help authenticate commands' commands "$@"
}
(( $+functions[_spotify_player__help__connect_commands] )) ||
_spotify_player__help__connect_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help connect commands' commands "$@"
}
(( $+functions[_spotify_player__help__generate_commands] )) ||
_spotify_player__help__generate_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help generate commands' commands "$@"
}
(( $+functions[_spotify_player__help__get_commands] )) ||
_spotify_player__help__get_commands() {
    local commands; commands=(
'key:Get data by key' \
'item:Get a Spotify item'\''s data' \
    )
    _describe -t commands 'spotify_player help get commands' commands "$@"
}
(( $+functions[_spotify_player__help__get__item_commands] )) ||
_spotify_player__help__get__item_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help get item commands' commands "$@"
}
(( $+functions[_spotify_player__help__get__key_commands] )) ||
_spotify_player__help__get__key_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help get key commands' commands "$@"
}
(( $+functions[_spotify_player__help__help_commands] )) ||
_spotify_player__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help help commands' commands "$@"
}
(( $+functions[_spotify_player__help__like_commands] )) ||
_spotify_player__help__like_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help like commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback_commands] )) ||
_spotify_player__help__playback_commands() {
    local commands; commands=(
'start:Start a new playback' \
'play-pause:Toggle between play and pause' \
'play:Resume the current playback if stopped' \
'pause:Pause the current playback if playing' \
'next:Skip to the next track' \
'previous:Skip to the previous track' \
'shuffle:Toggle the shuffle mode' \
'repeat:Cycle the repeat mode' \
'volume:Set the volume percentage' \
'seek:Seek by an offset milliseconds' \
    )
    _describe -t commands 'spotify_player help playback commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__next_commands] )) ||
_spotify_player__help__playback__next_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback next commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__pause_commands] )) ||
_spotify_player__help__playback__pause_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback pause commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__play_commands] )) ||
_spotify_player__help__playback__play_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback play commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__play-pause_commands] )) ||
_spotify_player__help__playback__play-pause_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback play-pause commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__previous_commands] )) ||
_spotify_player__help__playback__previous_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback previous commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__repeat_commands] )) ||
_spotify_player__help__playback__repeat_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback repeat commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__seek_commands] )) ||
_spotify_player__help__playback__seek_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback seek commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__shuffle_commands] )) ||
_spotify_player__help__playback__shuffle_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback shuffle commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__start_commands] )) ||
_spotify_player__help__playback__start_commands() {
    local commands; commands=(
'context:Start a context playback' \
'track:Start playback for a track' \
'liked:Start a liked tracks playback' \
'radio:Start a radio playback' \
    )
    _describe -t commands 'spotify_player help playback start commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__start__context_commands] )) ||
_spotify_player__help__playback__start__context_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback start context commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__start__liked_commands] )) ||
_spotify_player__help__playback__start__liked_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback start liked commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__start__radio_commands] )) ||
_spotify_player__help__playback__start__radio_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback start radio commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__start__track_commands] )) ||
_spotify_player__help__playback__start__track_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback start track commands' commands "$@"
}
(( $+functions[_spotify_player__help__playback__volume_commands] )) ||
_spotify_player__help__playback__volume_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playback volume commands' commands "$@"
}
(( $+functions[_spotify_player__help__playlist_commands] )) ||
_spotify_player__help__playlist_commands() {
    local commands; commands=(
'new:Create a new playlist' \
'delete:Delete a playlist' \
'import:Imports all songs from a playlist into another playlist.' \
'list:Lists all user playlists.' \
'fork:Creates a copy of a playlist and imports it.' \
'sync:Syncs imports for all playlists or a single playlist.' \
    )
    _describe -t commands 'spotify_player help playlist commands' commands "$@"
}
(( $+functions[_spotify_player__help__playlist__delete_commands] )) ||
_spotify_player__help__playlist__delete_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playlist delete commands' commands "$@"
}
(( $+functions[_spotify_player__help__playlist__fork_commands] )) ||
_spotify_player__help__playlist__fork_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playlist fork commands' commands "$@"
}
(( $+functions[_spotify_player__help__playlist__import_commands] )) ||
_spotify_player__help__playlist__import_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playlist import commands' commands "$@"
}
(( $+functions[_spotify_player__help__playlist__list_commands] )) ||
_spotify_player__help__playlist__list_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playlist list commands' commands "$@"
}
(( $+functions[_spotify_player__help__playlist__new_commands] )) ||
_spotify_player__help__playlist__new_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playlist new commands' commands "$@"
}
(( $+functions[_spotify_player__help__playlist__sync_commands] )) ||
_spotify_player__help__playlist__sync_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help playlist sync commands' commands "$@"
}
(( $+functions[_spotify_player__help__search_commands] )) ||
_spotify_player__help__search_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player help search commands' commands "$@"
}
(( $+functions[_spotify_player__like_commands] )) ||
_spotify_player__like_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player like commands' commands "$@"
}
(( $+functions[_spotify_player__playback_commands] )) ||
_spotify_player__playback_commands() {
    local commands; commands=(
'start:Start a new playback' \
'play-pause:Toggle between play and pause' \
'play:Resume the current playback if stopped' \
'pause:Pause the current playback if playing' \
'next:Skip to the next track' \
'previous:Skip to the previous track' \
'shuffle:Toggle the shuffle mode' \
'repeat:Cycle the repeat mode' \
'volume:Set the volume percentage' \
'seek:Seek by an offset milliseconds' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player playback commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help_commands] )) ||
_spotify_player__playback__help_commands() {
    local commands; commands=(
'start:Start a new playback' \
'play-pause:Toggle between play and pause' \
'play:Resume the current playback if stopped' \
'pause:Pause the current playback if playing' \
'next:Skip to the next track' \
'previous:Skip to the previous track' \
'shuffle:Toggle the shuffle mode' \
'repeat:Cycle the repeat mode' \
'volume:Set the volume percentage' \
'seek:Seek by an offset milliseconds' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player playback help commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__help_commands] )) ||
_spotify_player__playback__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help help commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__next_commands] )) ||
_spotify_player__playback__help__next_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help next commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__pause_commands] )) ||
_spotify_player__playback__help__pause_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help pause commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__play_commands] )) ||
_spotify_player__playback__help__play_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help play commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__play-pause_commands] )) ||
_spotify_player__playback__help__play-pause_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help play-pause commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__previous_commands] )) ||
_spotify_player__playback__help__previous_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help previous commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__repeat_commands] )) ||
_spotify_player__playback__help__repeat_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help repeat commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__seek_commands] )) ||
_spotify_player__playback__help__seek_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help seek commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__shuffle_commands] )) ||
_spotify_player__playback__help__shuffle_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help shuffle commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__start_commands] )) ||
_spotify_player__playback__help__start_commands() {
    local commands; commands=(
'context:Start a context playback' \
'track:Start playback for a track' \
'liked:Start a liked tracks playback' \
'radio:Start a radio playback' \
    )
    _describe -t commands 'spotify_player playback help start commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__start__context_commands] )) ||
_spotify_player__playback__help__start__context_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help start context commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__start__liked_commands] )) ||
_spotify_player__playback__help__start__liked_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help start liked commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__start__radio_commands] )) ||
_spotify_player__playback__help__start__radio_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help start radio commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__start__track_commands] )) ||
_spotify_player__playback__help__start__track_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help start track commands' commands "$@"
}
(( $+functions[_spotify_player__playback__help__volume_commands] )) ||
_spotify_player__playback__help__volume_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback help volume commands' commands "$@"
}
(( $+functions[_spotify_player__playback__next_commands] )) ||
_spotify_player__playback__next_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback next commands' commands "$@"
}
(( $+functions[_spotify_player__playback__pause_commands] )) ||
_spotify_player__playback__pause_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback pause commands' commands "$@"
}
(( $+functions[_spotify_player__playback__play_commands] )) ||
_spotify_player__playback__play_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback play commands' commands "$@"
}
(( $+functions[_spotify_player__playback__play-pause_commands] )) ||
_spotify_player__playback__play-pause_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback play-pause commands' commands "$@"
}
(( $+functions[_spotify_player__playback__previous_commands] )) ||
_spotify_player__playback__previous_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback previous commands' commands "$@"
}
(( $+functions[_spotify_player__playback__repeat_commands] )) ||
_spotify_player__playback__repeat_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback repeat commands' commands "$@"
}
(( $+functions[_spotify_player__playback__seek_commands] )) ||
_spotify_player__playback__seek_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback seek commands' commands "$@"
}
(( $+functions[_spotify_player__playback__shuffle_commands] )) ||
_spotify_player__playback__shuffle_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback shuffle commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start_commands] )) ||
_spotify_player__playback__start_commands() {
    local commands; commands=(
'context:Start a context playback' \
'track:Start playback for a track' \
'liked:Start a liked tracks playback' \
'radio:Start a radio playback' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player playback start commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__context_commands] )) ||
_spotify_player__playback__start__context_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start context commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__help_commands] )) ||
_spotify_player__playback__start__help_commands() {
    local commands; commands=(
'context:Start a context playback' \
'track:Start playback for a track' \
'liked:Start a liked tracks playback' \
'radio:Start a radio playback' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player playback start help commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__help__context_commands] )) ||
_spotify_player__playback__start__help__context_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start help context commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__help__help_commands] )) ||
_spotify_player__playback__start__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start help help commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__help__liked_commands] )) ||
_spotify_player__playback__start__help__liked_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start help liked commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__help__radio_commands] )) ||
_spotify_player__playback__start__help__radio_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start help radio commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__help__track_commands] )) ||
_spotify_player__playback__start__help__track_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start help track commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__liked_commands] )) ||
_spotify_player__playback__start__liked_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start liked commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__radio_commands] )) ||
_spotify_player__playback__start__radio_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start radio commands' commands "$@"
}
(( $+functions[_spotify_player__playback__start__track_commands] )) ||
_spotify_player__playback__start__track_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback start track commands' commands "$@"
}
(( $+functions[_spotify_player__playback__volume_commands] )) ||
_spotify_player__playback__volume_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playback volume commands' commands "$@"
}
(( $+functions[_spotify_player__playlist_commands] )) ||
_spotify_player__playlist_commands() {
    local commands; commands=(
'new:Create a new playlist' \
'delete:Delete a playlist' \
'import:Imports all songs from a playlist into another playlist.' \
'list:Lists all user playlists.' \
'fork:Creates a copy of a playlist and imports it.' \
'sync:Syncs imports for all playlists or a single playlist.' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player playlist commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__delete_commands] )) ||
_spotify_player__playlist__delete_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist delete commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__fork_commands] )) ||
_spotify_player__playlist__fork_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist fork commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help_commands] )) ||
_spotify_player__playlist__help_commands() {
    local commands; commands=(
'new:Create a new playlist' \
'delete:Delete a playlist' \
'import:Imports all songs from a playlist into another playlist.' \
'list:Lists all user playlists.' \
'fork:Creates a copy of a playlist and imports it.' \
'sync:Syncs imports for all playlists or a single playlist.' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'spotify_player playlist help commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help__delete_commands] )) ||
_spotify_player__playlist__help__delete_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist help delete commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help__fork_commands] )) ||
_spotify_player__playlist__help__fork_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist help fork commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help__help_commands] )) ||
_spotify_player__playlist__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist help help commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help__import_commands] )) ||
_spotify_player__playlist__help__import_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist help import commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help__list_commands] )) ||
_spotify_player__playlist__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist help list commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help__new_commands] )) ||
_spotify_player__playlist__help__new_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist help new commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__help__sync_commands] )) ||
_spotify_player__playlist__help__sync_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist help sync commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__import_commands] )) ||
_spotify_player__playlist__import_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist import commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__list_commands] )) ||
_spotify_player__playlist__list_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist list commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__new_commands] )) ||
_spotify_player__playlist__new_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist new commands' commands "$@"
}
(( $+functions[_spotify_player__playlist__sync_commands] )) ||
_spotify_player__playlist__sync_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player playlist sync commands' commands "$@"
}
(( $+functions[_spotify_player__search_commands] )) ||
_spotify_player__search_commands() {
    local commands; commands=()
    _describe -t commands 'spotify_player search commands' commands "$@"
}

if [ "$funcstack[1]" = "_spotify_player" ]; then
    _spotify_player "$@"
else
    compdef _spotify_player spotify_player
fi
