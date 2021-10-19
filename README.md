# README

# アプリケーション名
コミっけ（COMIKKE）

# アプリケーションの概要
- 読んだ漫画の評価や感想を投稿することが出来る。
- 投稿の評価や感想を読んで、読みたい漫画を見つけることが出来る。

# URL
https://comikke36400.herokuapp.com/

# テスト用アカウント
- メールアドレス
  sample@test.com
- パスワード
  sample123

# BASIC認証
- ユーザー名
  comikke
- パスワード
  36400

# 利用方法
- 漫画の評価・感想を投稿したい場合は、新規ユーザー登録後ログイン状態で投稿する。
- 作品の評価を確認したい場合は、ログアウト状態でも投稿を見ることが出来る。

# 目指した課題解決
- 漫画を読んで感動した気持ちを共有・共感したいというユーザーの欲求を満たす。
- 漫画を読みたいけど、どの漫画を読んだらいいか分からないというユーザーの悩みを解決する。

# 実装予定の機能
- ランキング表示機能
  ジャンルごとのランキングを表示することが出来る。
  投稿数順や評価順でランキングを表示することが出来る。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/6b0da28ac4f769021debfe5b9dcfd8cd.png)](https://gyazo.com/6b0da28ac4f769021debfe5b9dcfd8cd)

# テーブル設計

## users テーブル

| Column               | Type    | Options                  |
| -------------------- | ------- | ------------------------ |
| nickname             | string  | null: false              |
| email                | string  | null: false,unique: true |
| encrypted_password   | string  | null: false              |

### Association

- has_many :posts



## posts テーブル

| Column                  | Type          | Options                        |
| ----------------------- | ------------- | ------------------------------ |
| name                    | string        | null: false                    |
| genre_id                | integer       | null: false                    |
| rating                  | integer       | null: false                    |
| title                   | string        | null: false                    |
| review                  | text          | null: false                    |
| user                    | references    | null: false, foreign_key: true |

### Association

- belongs_to :user

