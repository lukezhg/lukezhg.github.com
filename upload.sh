#!/bin/bash
cd "E:/github/Freyja/"
git add --all
git commit -m "upload img"
git push origin master
echo "https://github.com/lukezhg/Freyja/raw/master/"
echo "upload finished"
cd "E:/github/octopress/"