# 概要
- 基礎力確認テストとして、バグ修正をお願いします。
- 後述のテスト実行コマンドがエラーにならないように修正してください。

## 環境構築
```
$ git checkout -b fix_[自分のアカウント名]
$ rbenv local 2.6.6
$ nodenv local 12.14.0
$ bundle install --without production
$ yarn install
$ rails db:migrate
$ rails server
```

## テスト実行
```
$ rails test:system
```

## 注意点
- 作成したPullRequestはmasterブランチにマージしないで残しておいてください。（課題が直ってしまうので）
