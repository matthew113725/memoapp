require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i

 

if memo_type == 1
    
    puts "拡張子を除いたファイル名を入力してください。"
    
    newfile_name = gets.chomp
    
    p "メモしたい内容を記入してください。"
    p "完了したら「Ctrl + D」を押してください。"
    
    memo_content = $stdin.readlines
    
    CSV.open("#{newfile_name}.csv", "w") do |newfile_name|
        newfile_name << ["#{memo_content}"]
    end
    
elsif memo_type == 2
    
    puts "拡張子を除いた編集を実行するファイル名を入力してください。"
    
    updatefile_name = gets.chomp
    
    p "編集したい内容を記入してください。"
    p "完了したら「Ctrl + D」を押してください。"
    
    memo_content = $stdin.readlines
    
    CSV.open("#{updatefile_name}.csv", "a") do |updatefile_name|
        updatefile_name << ["#{memo_content}"]
    end
else
    puts "1か2を入力してください。"
end