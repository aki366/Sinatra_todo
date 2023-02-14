# memo

## 事前確認
Rubyとbundleが実行できるか、下記のコマンドを実行してお確かめ下さい。
もし、バージョン情報が表示されない場合は個別にインストールして下さい。
### rubyの確認
```
ruby -v
```
下記のように表示されれば`ruby`がインストールされていることが分かります。
```
$ ruby -v
ruby 3.2.0
```

### bundleの確認
```
bundle -v
```
下記のように表示されれば`bundle`がインストールされていることが分かります。
```
$ bundle -v
Bundler version 2.4.1
```

## git clone
クローン先のディレクトリまで移動してから下記のコマンドを実行して下さい。
```
git clone -b feature/sinatra_todo-1 https://github.com/aki366/Sinatra_todo.git
```

## Gemのインストール
下記のコマンドを実行して必要なGemのインストールして下さい。
```
bundle install
```

Sinatraでサービスを立ち上げ
```
bundle exec ruby app.rb
```

下記のURLへアクセス
http://localhost:4567
