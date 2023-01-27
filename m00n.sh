#!/usr/bin/env bash

#            ///
#           (0<0)
#           (   )
#  _   __    "_"       ___   ___
# | | /_ |   | |      / _ \ / _ \
# | | _| | __| |_ __ | | | | | | |_ __
# | |/ / |/ _` | '_ \| | | | | | | '_ \
# |   <| | (_| | |_) | |_| | |_| | |_) |
# |_|\_\_|\__,_| .__/ \___/ \___/| .__/
#              | |               | |
#              |_|               |_|

s='span>'
e='</span'
url='https://www.moongiant.com/phase/today'
phase=$(curl -s $url | grep 'Phase:' | grep -oP "(?<=$s).*(?=$e)")
echo $phase

case $phase in
   # 0/8
   "New Moon"        ) art="H4sIAAAAAAAAA5XSMQrAIAwF0N1TFD78tR07Z8nq/U9TxLTVomn8m/AIicmxn1skqX+SsJBTSIjmJirgAKJDD8YHjllLK5QZK5EXus5kgfBdzjD4U7CWLHA6yB1drRjuMTx1/B/jm4nveuF6Fu7RT7oALHxkcgsDAAA=";;
   # 1/8
   "Waxing Crescent" ) art="H4sIAAAAAAAAA53SPQqAMAwF4N1TWAIdFQdRXIQugtNbXXoUz66lKf6lEn1by0fbNGnqvtSkuC6tpRAHTJSFltyElNlXg1mcAOlAMV3YXdsbfLAkS48zdE+2x0cyHlB2WPjWLkGSHTCwBMPMgcDK0DAUCokxDP3XE9VvVFet/0d9Z/S9DhGm5zRqf+bxPcUG5CSMmAsDAAA=";;
   # 2/8
   "First Quarter"   ) art="H4sIAAAAAAAAA5XSMQqAMAwF0N1TRD50VBAK4iJkKThldelRPLu0FrWibfxb6KO0SYZ+JE2avDQGAC/LKg6f0ICdhNhYdlO74gXiQBF25/FmH/DGMkjk5Q5Z5AsSzRfM3RMeMkBIGZIkyDXYJuhq0P+9Uf1G9a/1fdRPhtSzDlFuT8KafSyn2QGUzmtECwMAAA==";;
   # 3/8
   "Waxing Gibbous"  ) art="H4sIAAAAAAAAA5XSPQqAMAwG0N1TRAIddRBRXIQugUxZu/Qonl0pKf61Er8t8EibNkM/gyXNvXQOKTBzEMIqdOhJOOayW9rgCxBJjrSPA7fxAV1iL3ckyhX6xISLY6wnVCdLEcKUIaoLZQcgCnPDtQY3haRwqsH4t6P5juap7e9o/xkw/3XqatsexZZ9/E6zA86K21ELAwAA";;
   # 4/8
   "Full Moon"       ) art="H4sIAAAAAAAAAzPRt1AgBnChcpXdAyK9gCAywF0Zp0KnSEUrPQRXz0ox0gmLQtM6bBbWmaIpDIjD5ba4AGSF9riUISTBCs3xqYNKgxQG4FcHUQBSiNUbyKAOqhCnR2AgjlQTiXYj0b4mPhyJjxkFouMaBIhMPRBAVHrED7gAVNkpuQsDAAA=";;
   # 5/8
   "Waning Gibbous"  ) art="H4sIAAAAAAAAA5XSsQ6EIAwG4J2nKGnCqJPRuJiwNOnUlcVHuWc/UVTkepfevzX5Ai106CewxD1LJEnMnAhD+Apj8nN3FisLRQwKHF7NXV62EDZQ1s+udikUario/fMuJd5wVB3MUskMRXcAqUgssB3jylIdmaEyyJGxQPr3RHOP5qnt72j/GTD/dY5xe46Y9vF33BufCRRnCwMAAA==";;
   # 6/8
   "Last Quarter"    ) art="H4sIAAAAAAAAA53SOw6AIAwA0N1TYJow4oQaF5MuJE5dWTwKZzcIUesHq52AvEBL2za9kkTFt+DITx4BQOtHiL4eTFwYSzEcgr6BNmxnGa4YTpDmwysHuNMER5YOg0S4w06VYJIRkipDggzDG8QM5zfovt4ozlFctfwfz51hhbDOKN7rK/szPSlE81iOagHKmYJRCwMAAA==";;
   # 7/8
   "Waning Crescent" ) art="H4sIAAAAAAAAA5XSOwrAIAwG4N1TKAHHdiqWLgUXoVPWLh7Fs7chKX1ZSf9BED7iIwn9aDUx9y0kxAgU7z9hXN3U5QWPpAi+AodCa8B7EjwgZltzF8pw5k15uz3xhEHKr1XIkiCKm+oOEQQW2zpZShLMAt0XTH8rqu+ofrX+H/Wd0feaopwejmoe2zEbdRsn2AsDAAA=";;
esac
echo $art | base64 -d | gzip -cd
