#!/bin/bash
#Yahoo!Mapを開いてお好きな場所を選びURLを投入してください ex) https://yahoo.jp/-XGQAn
google-chrome --headless --screenshot --window-size=1024,768 --ignore-certificate-errors --lang=ja https://yahoo.jp/-XGQAn
datetime=`date '+%Y-%m-%d %H:%M:%S'`;
#mv screenshot.png shinjuku_$datetime.png
#convert screenshot.png txt: | grep '511,383' | sed -r "s/(\#[0-9A-F]+)/\1/"
convert screenshot.png txt: | grep '511,383' | sed -r "s/^.*(#[0-9A-F]{6}).*$/$datetime,\1/" >> congestion.csv
