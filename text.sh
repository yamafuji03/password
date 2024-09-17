# パスワードを保存するファイルの名前
FILE="passwords.txt"

echo "パスワードマネージャーへようこそ！"
echo "次の選択肢から入力してください (add password/get password/exit):"
read -r choice

# `choice` の値に応じた処理を実行
if [ "$choice" = "add password" ]; then
    # サービス名、ユーザー名、パスワードの入力を求める
    read -p "サービス名を入力してください：" service
    read -p "ユーザー名を入力してください：" username
    read -p "パスワードを入力してください：" password

    # 入力情報をファイルに保存
    echo "サービス:$service ユーザー名:$username パスワード:$password" >> "$FILE"

    echo "Thank you!"

elif [ "$choice" = "get password" ]; then
 
 
    # サービス名の入力を求める
    read -p "サービス名を入力してください：" search_service

    # サービス名でファイルから情報を検索
    result=$(grep "^サービス:$search_service " "$FILE")

    if [ -z "$result" ]; then
        # サービス名が見つからなかった場合
        echo "そのサービスは登録されていません。"
    else
        # サービス名が見つかった場合表示
        echo "$result"
    fi


elif [ "$choice" = "exit" ]; then
    echo "終わります"
else
    echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
fi
