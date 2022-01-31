require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_i

if memo_type == 1   
    puts "メモを新規作成します。ファイル名を入力してください"
    memo_ttl = gets.chomp  
    puts "内容を記入してください。"
    puts "入力を終了する場合はCtrl+Dを押してください。"
    memo_content = STDIN.read 
    CSV.open("#{memo_ttl}.csv","w") do |csv|   
    csv << ["#{memo_content}"]
    end
elsif memo_type == 2
    puts "編集するファイル名を入力してください"
    memo_ttl = gets.chomp
    puts "既存のメモを編集します"
    puts "編集を終了する場合はCtrl+Dを押してください。"
    memo_content = STDIN.read 
    CSV.open("#{memo_ttl}.csv","a") do |csv|
    csv << ["#{memo_content}"]
    end
else
    puts "1または2を入力してください。"
end
