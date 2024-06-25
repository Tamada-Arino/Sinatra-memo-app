# Sinatra-memo-app
## About
- sinatraを利用したメモアプリです。
- CSVにデータを保存しています。
- CRUD操作を実装しています。
- エスケープ処理によるXSS対策済みです。
- 404ページを作成しています。

## How to use
1. Rubyのバージョンを確認してください。`3.3.3`で使用できることをか確認しています。

2. 任意のディレクトリで`develop`ブランチのリポジトリをクローンします。
```
$ git clone -b develop https://github.com/Tamada-Arino/Sinatra-memo-app.git
```

3. アプリケーションのディレクトリに入ります。
```
$ cd Sinatra-memo-app
```

4. メモの初期データを作成します
```
echo "title,text" > memos.csv
```

5. Gemをインストールします。
```
$ bundle install
```

6. アプリケーションを実行します。
```
$ bundle exec ruby memo.rb
```

7. 任意のブラウザで以下にアクセスします。
```
http://localhost:4567/
```
