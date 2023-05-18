#!/bin/bash


kelime=$1
dosya=$2

dosyalari_bul=$(find "$dosya" -type f -exec grep -l "$kelime" {} +)

# dosyaları listeleyin
if [[ -z $dosyalari_bul ]]; then
  echo "Klasörde '$kelime' kelimesini içeren dosya bulunamadı."
else
  echo "Klasörde '$kelime' kelimesini içeren dosyalar: "
  echo "$dosyalari_bul"
fi
