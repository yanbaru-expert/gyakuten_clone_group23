EMAIL = 'test@example.com'
ADMIN_EMAIL = 'admin@example.com'
PASSWORD = 'password'

User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |user|
  user.password = PASSWORD
  puts '管理者ユーザーの初期データインポートに成功しました。'
end

AwsText.destroy_all
Line.destroy_all
Movie.destroy_all
Question.destroy_all
Text.destroy_all

system "rails import_csv:aws_texts"
system "rails import_csv:lines"
system "rails import_csv:movies"
system "rails import_csv:questions"
system "rails import_csv:texts"

