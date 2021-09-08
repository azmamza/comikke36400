# README

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

