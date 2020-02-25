#/bin/bash

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
#echo "opininionatedeng.md replaced"

make html