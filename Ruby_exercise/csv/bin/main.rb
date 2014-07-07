require_relative '../lib/csv_reader.rb'

csv = CsvReader.new('../bin/contact.csv')
csv.move_to_file('new_file.txt')
