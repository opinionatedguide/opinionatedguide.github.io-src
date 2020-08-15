#/bin/bash

#add 3 newlines to all .md files
#echo "\n\n\n" >> ./chapters/*.md
#change paths to correct for pelican
# to make these, should the need changed, https://dwaves.org/tools/escape/
# and https://sed.js.org/ were used, the first to check escaping
# the latter to test validity
for i in ./chapters/*md; do
    sed -i 's/\..\/content\/openg/{static}\/openg/g' $i
done

for i in ./chapters/*md; do
    sed -i 's/\..\/content\/opmusic/{static}\/opmusic/g' $i
done

for i in ./chapters/*md; do
    sed -i 's/\..\/content\/gifs/{static}\/gifs/g' $i
done

for i in ./content/opinionateddesign.md; do
    sed -i 's/\..\/content\/opdesign/{static}\/opdesign/g' $i
done


for i in ./content/opinionatedmusic.md; do
    sed -i 's/\..\/content\/opmusic/{static}\/opmusic/g' $i
done

for i in ./content/opinionatedmusic.md; do
    sed -i 's/\..\/content\/gifs/{static}\/gifs/g' $i
done

for i in ./content/opinionateddesign.md; do
    sed -i 's/\..\/content\/gifs/{static}\/gifs/g' $i
done

for i in ./content/opinionatedphilosophy.md; do
    sed -i 's/\..\/content\/gifs/{static}\/gifs/g' $i
done

for i in ./content/opinionatedphilosophy.md; do
    sed -i 's/\..\/content\/openg/{static}\/openg/g' $i
done


#Build Chapters
cat ./chapters/p?-* > ./chapters/x1.md
wait
sleep 1
echo "prefix done"
# merge chapter files, done in groups of 10 because 10 before 1 lexiograhpically
cat ./chapters/?-* > ./chapters/x2.md
sleep 1
wait
cat ./chapters/1?-* >> ./chapters/x2.md
sleep 1
wait
cat ./chapters/2?-* >> ./chapters/x2.md
sleep 1
wait
cat ./chapters/3?-* >> ./chapters/x2.md
echo "chapters done"
# merge appendix files
cat ./chapters/a?-* > ./chapters/x3.md
sleep 1
wait
echo "appendix done"
# merge prefix, chapter, and appendix
cat ./chapters/x1.md ./chapters/x2.md ./chapters/x3.md > ./chapters/y.md
wait
echo "merged, removing temp files"
rm ./chapters/x?.md
echo "removed temp files"
# fix image paths (replace ../imgs/ with ./imgs/ )
#sed 's/.\/imgs\//..\/imgs\//g' ./chapters/y.md > ./chapters/indev.md
#echo "indev file generated"
mv ./chapters/y.md ./content/opinionatedeng.md
#echo "opinionatedeng.md replaced"

make html
sleep 1
echo "sed paths back for editing"

#Put back to normal syntax
for j in ./chapters/*.md; do
    sed -i 's/{static}\/openg/\..\/content\/openg/g' $j
done

for j in ./content/opinionateddesign.md; do
    sed -i 's/{static}\/opdesign/\..\/content\/opdesin/g' $j
done

for j in ./chapters/*.md; do
    sed -i 's/{static}\/opmusic/\..\/content\/opmusic/g' $j
done

for j in ./chapters/*.md; do
    sed -i 's/{static}\/gifs/\..\/content\/gifs/g' $j
done


for j in ./content/opinionatedmusic.md; do
    sed -i 's/{static}\/opmusic/\..\/content\/opmusic/g' $j
done

for j in ./content/opinionatedmusic.md; do
    sed -i 's/{static}\/gifs/\..\/content\/gifs/g' $j
done

for j in ./content/opinionateddesign.md; do
    sed -i 's/{static}\/gifs/\..\/content\/gifs/g' $j
done

for j in ./content/opinionatedphilosophy.md; do
    sed -i 's/{static}\/gifs/\..\/content\/gifs/g' $j
done

for j in ./content/opinionatedphilosophy.md; do
    sed -i 's/{static}\/openg/\..\/content\/openg/g' $j
done