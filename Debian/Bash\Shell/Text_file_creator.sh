echo "To exit just enter 'EXIT'  ";
echo "Press enter for every line that you want to add to a file.   ";
echo "Enter name of file to be created.  :  ";
read file_name;
echo "Enter line:  ";
read file_line;
echo "$file_line" >> "$file_name";
while [ 1 -eq 1 ]; do
  echo "Enter next line:  ";
  read file_line;
  if [[ "$file_line" = "EXIT" ]]; then
    break
  fi
  echo "$file_line" >> "$file_name";
done
echo "File successfully created with the following content.  ";
cat "$file_name";
