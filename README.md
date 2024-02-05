# README

# アプリケーション名
  ScheDiray-app

# アプリケーション概要
  カレンダーで日々のスケジュールを管理することができます。  
  日記を付けることもでき、毎日の記録ができます。

# URL
  https://schediary-app.onrender.com

# テスト用アカウント
- Basic認証ID：admin  
- Basic認証パスワード：2222  
- メールアドレス：test@test.com  
- パスワード：11111a  

# 利用方法
  1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行い、ログインする
  2. 予定を登録するボタンから、新規投稿ページで予定（日時、タイトル、内容）を登録する
  3. 日記ボタンから、日記の投稿をする

# アプリケーションを作成した背景
  初めて1から作成したアプリケーションです。そのため、機能はとてもシンプルなものになっています。  
  このアプリケーションを作成しようと思ったきっかけは、自分が行った旅行先などの思い出を、スケジュール帳と日記を一緒に見ることができるツールが欲しいと思ったことです。  
  ＳＮＳなど様々なものがありますが、自分だけで楽しみたい思い出やちょっとした出来事・情報などを書き込めるものにしたいという思いがあり、このようなスケジュール日記アプリを作成しました。

# 洗い出した要件
  https://docs.google.com/spreadsheets/d/1R0nv1IZTiQ54EIx7lzDTDFB0YB93P646bj3pV2gZaGs/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
  1. トップページでは、アプリケーションの説明をしています。  
  [![Image from Gyazo](https://i.gyazo.com/f30ed525256763e3f3d6f9b1ef1f6e33.png)](https://gyazo.com/f30ed525256763e3f3d6f9b1ef1f6e33)
  2. 新規登録ボタンから、ユーザー新規登録ページに進み、必要な個所を入力して新規登録を行ってください。  
  [![Image from Gyazo](https://i.gyazo.com/a53c910eb03529c048c6f38046183b61.png)](https://gyazo.com/a53c910eb03529c048c6f38046183b61)  
  次回以降はログインボタンからログインして使用してください。  
  [![Image from Gyazo](https://i.gyazo.com/29db0903ceebacf525bfe4c5ccb0888e.png)](https://gyazo.com/29db0903ceebacf525bfe4c5ccb0888e)
  3. 予定登録ボタンから、予定の入力ができます。  
  [![Image from Gyazo](https://i.gyazo.com/1ef61d8f174c5efb60f2d0374788e671.png)](https://gyazo.com/1ef61d8f174c5efb60f2d0374788e671)
  4. 日記ボタンから日記の入力ができます。投稿した日記も見ることができます。  
  [![Image from Gyazo](https://i.gyazo.com/fcf81809f7534ecacf5dc3a2779b9d3c.png)](https://gyazo.com/fcf81809f7534ecacf5dc3a2779b9d3c)
  5. 登録した予定の詳細を見るときは、カレンダーから確認することができ、編集と削除ができます。  
     詳細ページでは、日記を見ることもできます。  
     [![Image from Gyazo](https://i.gyazo.com/ec08badbe3a024827bd2391fa6a613bc.png)](https://gyazo.com/ec08badbe3a024827bd2391fa6a613bc)

# 実装予定の機能
- 画像投稿機能（アルバム作成機能） 
- マイページ



# データベース設計
  ![](schediary.dio.png)

## users テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| nickname | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| birthday | date    | null: false |

### Association
- has_many :schedules
- has_many :diaries

## schedules テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| start_time | datetime   | null: false                    |
| content    | text       |                                |
| user       | references | null: false, foreign_key: true |
| diary      | references |                                |

### Association
- belongs_to :user
- has_many :diary


## diaries テーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| content  | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| schedule | references | foreign_key: true              |

### Association
- belongs_to :user
- belongs_to :schedule

# 画面遷移図
  ![](schediary-page.dio.png)

# 開発環境
| カテゴリー     | 技術                   |
| --------------| -----------------------|
| フロントエンド |  CSS                   |
| バックエンド   | Ruby 2.6.5 Rails 6.0.0 |
| データベース   | PostgreSQL             |
| インフラ       | render                 |


# ローカルでの動作方法
以下のコマンドを順に実行。  
% git clone https://github.com/Ykgin/ScheDiary_app.git  
% cd ScheDiary_app  
% bundle install  
% yarn install


# 工夫したポイント
- シンプルなアプリケーションにしたかったので、使い方を見ただけでわかるようにしました。  

- スケジュールを登録するときに、タイトルの登録は必須にしていまが、内容は未入力でも登録できるようにしています。  
理由としては、イベントの日にちは決まっていても、詳細な内容までは決まっていないときもあるからです。あとから修正することで追記していけるようにすることで、柔軟な使い方ができるようにしました。  

- スケジュールの登録ページと、日記ページを分けて作成しました。  
理由としては、スケジュールが無くても、日記を書けるようにしたかったからです。Xのような短文を投稿する形ではなく、少し長め文章を投稿できるようにしたかったので、入力フォームは広めにしています。  




