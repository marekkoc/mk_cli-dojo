
echo
echo  "*** Display the size of each file in documents ***"
echo
for file in documents/*; do
  if [ -f $file ]; then
    du -h  $file;
  fi
done
