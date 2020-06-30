require "import"
namespace :import_csv do
  desc "AWSテキスト教材のデータをインポートするタスク"

  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    puts "インポート処理を開始"
    # インポートができなかった場合の例外処理
    begin
      AwsTexts.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
  
  desc "動画教材データをインポートするタスク"
  
  task movies: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_data.csv" )
    puts "インポート処理を開始"
    begin
      Movie.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
  
end

