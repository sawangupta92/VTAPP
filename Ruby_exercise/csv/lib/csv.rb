require 'csv'

class Csv

  def initialize(csv_path, new_file_path)
    @csv_path = csv_path
    @new_file_path = new_file_path
  end

  def move_from_csv_to_new_file
    temp_hash = Hash.new { |hash, key| hash[key] = [] }
    CSV.foreach(@csv_path, headers:true) do |row|
      temp_hash[row['Designation']] << "#{ row['Name'] } (EmpId: #{ row['EmpId'] })"
    end
    puts temp_hash
    File.open(@new_file_path, 'w') do |file|
      file.puts temp_hash.to_a
    end
  end

end
