require 'csv'

folder_path = "./textfiles"
output_csv = "output.csv"    # 出力するCSVファイル名

# フォルダ内のすべてのテキストファイルを取得
text_files = Dir.glob("#{folder_path}/*.txt")

# CSVファイルを作成 (Shift_JISで)
CSV.open(output_csv, "w", encoding: "Shift_JIS") do |csv|
  csv << ["File Name", "Content"].map { |header| header.encode("Shift_JIS") }

  text_files.each do |file_path|
    file_name = File.basename(file_path).encode("Shift_JIS", invalid: :replace, undef: :replace, replace: "?") # ファイル名をShift_JISに変換
    content = File.read(file_path, encoding: "UTF-8")
                 .encode("Shift_JIS", invalid: :replace, undef: :replace, replace: "?") # ファイル内容をShift_JISに変換

    csv << [file_name, content]
  end
end


puts "CSVファイル '#{output_csv}' が作成されました〜。あー疲れた。"
