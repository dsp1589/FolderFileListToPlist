echo '<?xml version="1.0" encoding="UTF-8"?>' >> /Users/dhana/Desktop/flagNames.plist
echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">' >> /Users/dhana/Desktop/flagNames.plist
echo '<plist version="1.0">' >> /Users/dhana/Desktop/flagNames.plist
echo '<dict>' >> /Users/dhana/Desktop/flagNames.plist
for file in $PWD/*;do
echo  `basename "$file"`
filename="${file##*/}"
echo  $filename | tr _ \ 
echo "<key>""` echo $filename | tr _ \ `""</key>" >>  /Users/dhana/Desktop/flagNames.plist
echo "<string>""`basename "$file"`""</string>" >>  /Users/dhana/Desktop/flagNames.plist
done
echo '</dict>' >> /Users/dhana/Desktop/flagNames.plist
echo '</plist>' >> /Users/dhana/Desktop/flagNames.plist
