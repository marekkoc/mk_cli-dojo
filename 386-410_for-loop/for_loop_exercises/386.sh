for file in documents/txt/*.txt; do
  echo " ==== ${file##*/} ==== ";
  cat $file;
  echo;
  echo;
done
