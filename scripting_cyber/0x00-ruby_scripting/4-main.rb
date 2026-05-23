#!/usr/bin/env ruby

require_relative '3-read_file'
require_relative '4-write_file'

file1_path = 'file_to_copy_from.json'
file2_path = 'file.json'

puts 'Merged JSON written to file.json'

merge_json_files(file1_path, file2_path)

<<<<<<< HEAD

puts 'File merged successfully!'
=======
puts 'Merged JSON written to file.json\n File merged successfully!'
>>>>>>> 1425ad61f2113447fe52c16a949684f265a010ed

count_user_ids(file2_path)
