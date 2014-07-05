require_relative '../lib/csv.rb'

csv=Csv.new('/home/chirag/Desktop/VT_APP/Ruby_exercise/csv/lib/contact.csv', 'new_file.txt')
csv.move_from_csv_to_new_file
