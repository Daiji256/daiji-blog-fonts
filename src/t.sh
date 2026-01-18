#!/bin/sh

mkdir -p tmp
mkdir -p fonts/t-sans
mkdir -p fonts/t-mono
mkdir -p fonts/t-math
mkdir -p fonts/tj-sans

wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMSans10-Regular.otf -O tmp/NewCMSans10-Regular.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMSans10-Oblique.otf -O tmp/NewCMSans10-Oblique.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMSans10-Bold.otf -O tmp/NewCMSans10-Bold.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMSans10-BoldOblique.otf -O tmp/NewCMSans10-BoldOblique.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMMono10-Regular.otf -O tmp/NewCMMono10-Regular.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMMono10-Italic.otf -O tmp/NewCMMono10-Italic.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMMono10-Bold.otf -O tmp/NewCMMono10-Bold.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMMono10-BoldOblique.otf -O tmp/NewCMMono10-BoldOblique.otf
wget https://mirrors.ctan.org/fonts/newcomputermodern/otf/NewCMSansMath-Regular.otf -O tmp/NewCMSansMath-Regular.otf

fonttools subset tmp/NewCMSans10-Regular.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-sans/t-sans-r.otf
fonttools ttLib fonts/t-sans/t-sans-r.otf --flavor woff -o fonts/t-sans/t-sans-r.woff
fonttools ttLib fonts/t-sans/t-sans-r.otf --flavor woff2 -o fonts/t-sans/t-sans-r.woff2

fonttools subset tmp/NewCMSans10-Oblique.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-sans/t-sans-ri.otf
fonttools ttLib fonts/t-sans/t-sans-ri.otf --flavor woff -o fonts/t-sans/t-sans-ri.woff
fonttools ttLib fonts/t-sans/t-sans-ri.otf --flavor woff2 -o fonts/t-sans/t-sans-ri.woff2

fonttools subset tmp/NewCMSans10-Bold.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-sans/t-sans-b.otf
fonttools ttLib fonts/t-sans/t-sans-b.otf --flavor woff -o fonts/t-sans/t-sans-b.woff
fonttools ttLib fonts/t-sans/t-sans-b.otf --flavor woff2 -o fonts/t-sans/t-sans-b.woff2

fonttools subset tmp/NewCMSans10-BoldOblique.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-sans/t-sans-bi.otf
fonttools ttLib fonts/t-sans/t-sans-bi.otf --flavor woff -o fonts/t-sans/t-sans-bi.woff
fonttools ttLib fonts/t-sans/t-sans-bi.otf --flavor woff2 -o fonts/t-sans/t-sans-bi.woff2

fonttools subset tmp/NewCMMono10-Regular.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-mono/t-mono-r.otf
fonttools ttLib fonts/t-mono/t-mono-r.otf --flavor woff -o fonts/t-mono/t-mono-r.woff
fonttools ttLib fonts/t-mono/t-mono-r.otf --flavor woff2 -o fonts/t-mono/t-mono-r.woff2

fonttools subset tmp/NewCMMono10-Italic.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-mono/t-mono-ri.otf
fonttools ttLib fonts/t-mono/t-mono-ri.otf --flavor woff -o fonts/t-mono/t-mono-ri.woff
fonttools ttLib fonts/t-mono/t-mono-ri.otf --flavor woff2 -o fonts/t-mono/t-mono-ri.woff2

fonttools subset tmp/NewCMMono10-Bold.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-mono/t-mono-b.otf
fonttools ttLib fonts/t-mono/t-mono-b.otf --flavor woff -o fonts/t-mono/t-mono-b.woff
fonttools ttLib fonts/t-mono/t-mono-b.otf --flavor woff2 -o fonts/t-mono/t-mono-b.woff2

fonttools subset tmp/NewCMMono10-BoldOblique.otf --text-file=src/subset.txt --name-IDs=0,7 --output-file=fonts/t-mono/t-mono-bi.otf
fonttools ttLib fonts/t-mono/t-mono-bi.otf --flavor woff -o fonts/t-mono/t-mono-bi.woff
fonttools ttLib fonts/t-mono/t-mono-bi.otf --flavor woff2 -o fonts/t-mono/t-mono-bi.woff2

cp tmp/NewCMSansMath-Regular.otf fonts/t-math/t-math-r.otf
fonttools ttLib fonts/t-math/t-math-r.otf --flavor woff -o fonts/t-math/t-math-r.woff
fonttools ttLib fonts/t-math/t-math-r.otf --flavor woff2 -o fonts/t-math/t-math-r.woff2

wget https://github.com/notofonts/noto-cjk/raw/9241cec4a41a3832dfaaa75cd61d8f3be9c906fc/google-fonts/NotoSansJP%5Bwght%5D.ttf -O tmp/NotoSansJP-VF.ttf
fonttools varLib.instancer tmp/NotoSansJP-VF.ttf wght=400 -o tmp/NotoSansJP-r.ttf
fonttools varLib.instancer tmp/NotoSansJP-VF.ttf wght=700 -o tmp/NotoSansJP-b.ttf

fonttools subset tmp/NotoSansJP-r.ttf --text-file=src/subset.txt --name-IDs=0,7,8,9,10,11,13,14 --output-file=fonts/tj-sans/tj-sans-r.ttf
fonttools ttLib fonts/tj-sans/tj-sans-r.ttf --flavor woff -o fonts/tj-sans/tj-sans-r.woff
fonttools ttLib fonts/tj-sans/tj-sans-r.ttf --flavor woff2 -o fonts/tj-sans/tj-sans-r.woff2

fonttools subset tmp/NotoSansJP-b.ttf --text-file=src/subset.txt --name-IDs=0,7,8,9,10,11,13,14 --output-file=fonts/tj-sans/tj-sans-b.ttf
fonttools ttLib fonts/tj-sans/tj-sans-b.ttf --flavor woff -o fonts/tj-sans/tj-sans-b.woff
fonttools ttLib fonts/tj-sans/tj-sans-b.ttf --flavor woff2 -o fonts/tj-sans/tj-sans-b.woff2
