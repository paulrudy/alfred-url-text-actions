#!/bin/zsh

case $gather_output in
  page_text)
    result=$(gather $1)
    ;;
  page_title)
    result=$(gather -t $1)
    ;;
  markdown_link)
    result="[$(gather -t $1)]($1)"
    ;;
esac

echo "$result"
