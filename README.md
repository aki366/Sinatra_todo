# memoアプリ
下記の手順に沿ってサービスを立ち上げて下さい。

### 1. rubyのバージョン確認
`ruby 3.2.0`で正常に動作することを確認していますので、事前にお確かめ下さい。
```
ruby -v
```
※`ruby 3.2.0`をインストールする際は、`libyaml`を自分でインストールする必要がございますので、ご注意下さい。
<br>
参考：https://www.ruby-lang.org/ja/news/2022/12/25/ruby-3-2-0-released/

### 2. bundleの確認
`bundle`も必要になりますので、各自実行できるか確認をお願いします。
```
bundle -v
```

## 3. git clone
クローン先のディレクトリまで移動してから下記のコマンドを実行してローカル環境にコードを取り込んで下さい。
```
git clone -b feature/sinatra_todo-1 https://github.com/aki366/Sinatra_todo.git
```

## 4. Gemのインストール
下記のコマンドを実行して必要なGemのインストールを行なって下さい。
```
bundle install
```

## 5. Sinatraでサービスを立ち上げ
下記のコマンドを実行してSinatraを起動して下さい。
```
bundle exec ruby app.rb
```

## 6. ブラウザからアクセス
下記のURLへアクセスして頂くとmemoアプリが使用できます。
<br>
http://localhost:4567
