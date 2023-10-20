# README

# アプリケーション名
  ScheDiray-app

# アプリケーション概要
  カレンダーで日々のスケジュール管理ができ、日記も付けられるアプリ。

# URL
  https://schediary-app.onrender.com

# テスト用アカウント

# 利用方法

# アプリケーションを作成した背景

# 洗い出した要件
  https://docs.google.com/spreadsheets/d/1R0nv1IZTiQ54EIx7lzDTDFB0YB93P646bj3pV2gZaGs/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能
  現在、アプリケーションの各機能を作成中。


# データベース設計

# 画面遷移図

# 開発環境

# ローカルでの動作方法
以下のコマンドを順に実行。


# 工夫したポイント


# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| birthday | string | null: false |

### Association
- has_many :schedules
- has_many :diaries

## schedules テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| time_id | integer    | null: false                    |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| diary   | references |                                |

### Association
- belongs_to :user
- has_one :diary


## diaries テーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| content  | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| schedule | references |                                |

### Association
- belongs_to :user
- belongs_to :schedule