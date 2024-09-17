
# パスワードを保存するファイルの名前
FILE="passwords.txt"

echo "パスワードマネージャーへようこそ！"
echo "次の選択肢から入力してください (add password/get password/exit):"
read -r choice

# add passwrord
if [ "$choice" == "add password" ]; then


# サービス名、ユーザー名、パスワードの入力を求める
read -p "サービス名を入力してください：" service
read -p "ユーザー名を入力してください：" username
read -p "パスワードを入力してください：" password

# 入力情報をファイルに保存
echo "サービス:$service ユーザー名:$username: パスワード:$password" >> "$FILE"

# 完了メッセージ
echo "Thank you!"


fi
