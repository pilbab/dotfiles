#! /bin/bash
if [ $# -ge 1 ]
then
    coproc ( firefox --new-window "${@}" )
    exit;
fi
mv /tmp/fidef_temp.sqlite /tmp/fidef.sqlite
cp ~/.mozilla/firefox/4bix5h3k.default/places.sqlite /tmp/fidef_temp.sqlite &\
sqlite3 -readonly /tmp/fidef.sqlite "SELECT url FROM moz_places ORDER BY id DESC"
