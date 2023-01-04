#!/bin/bash

# google-chrome の場所
CHROME="/opt/google/chrome/chrome"

# ブラウザで javascript 実行後の dom を取得
RAW=$("$CHROME" --headless --dump-dom index.html 2>/dev/null)

# 不要な部分を除去
ESCAPED=$(echo "$RAW" |
	grep -Poz '(?<=<div id="out">)[\s\S]*(?=</div>)' |
	sed 's/\x0$//')

# エスケープされた & < > を元に戻す
echo -n "$ESCAPED" |
	sed 's/&lt;/</g; s/&gt;/>/g; s/&amp;/\&/g'
