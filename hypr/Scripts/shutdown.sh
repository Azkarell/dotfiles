


if pidof steam; then
  echo pidof steam
  kill "$(pidof steam)"
  waitpid "$(pidof steam)"
fi

shutdown now
