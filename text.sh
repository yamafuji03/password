
# パスワードを保存するファイルの名前
FILE="passwords.txt"

echo "パスワードマネージャーへようこそ！"

# サービス名、ユーザー名、パスワードの入力を求める
read -p "サービス名を入力してください：" service
read -p "ユーザー名を入力してください：" username
read -p "パスワードを入力してください：" password

# 入力情報をファイルに保存
echo "$service:$username:$password" >> "$FILE"

# 完了メッセージ
echo "Thank you!"
