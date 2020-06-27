require "import"
namespace :import_csv do
  desc "AWSテキスト教材のデータをインポートするタスク"

  task aws_texts: :environment do
    Import.csv_data(path: "db/csv_data/aws_text_data.csv")
  end
end
