
![Blogo](https://user-images.githubusercontent.com/75024186/105139029-10ea8300-5b39-11eb-90b9-1a46cd7f1d1c.png)

あなたのとっておきのグリーンをシェアしましょう。

#  Share Green

観葉植物を投稿するウェブアプリケーションです。

育成環境や植物について学べることができます。


## URL
https://daddy-plants.herokuapp.com/


## 使い方


1. 「新規登録」ページに遷移をしてユーザー登録をします。（ユーザー以外は閲覧のみ可能です。）
2. 「新規投稿」ページに遷移をして投稿フォームが表示され、各欄を記入と画像の添付をして投稿をします。
3. 一覧画面（メインページ）から気になったユーザーの写真をクリックすることで、投稿詳細ページへ遷移することができます。
4. 投稿詳細ページ、投稿画像の下にコメント欄があります。お好きなコメントを残せます。
5. 投稿詳細ページ、タイトルの下「by ユーザー名」をクリックすることで、ユーザー詳細に遷移できます。同じページで「編集」「削除」も行えます。
6. 画面右上の「マイページ」もしくは、投稿詳細ページ、タイトルの下「by ユーザー名」(投稿したユーザーとログインしているユーザーが一致しているなら）ログイン中のユーザーの名前、メールアドレス、プロフィール詳細、プロフィール画像の更新と編集ができます。
7.  画面右上の「ログアウト」を押すことで、いつでもログアウトができます。


## 目指した課題解決

* 植物だけを投稿するwebアプリがないこと。
* コロナ自粛でステイホーム時間が増えたことで、植物をより身近な存在にして、新しい趣味づくりのきっかけ


## 洗い出した要件
* ユーザー登録
* 投稿投稿機能
* コメント機能

## 実装した機能についてのGIFと説明
* ユーザーのログイン、ログアウトの実装
https://gyazo.com/c696999eda2f7618e65b96daf811609f

* ユーザーのプロフィール、プロフィール画像の変更
https://gyazo.com/99f929b0acc596d98f83ed0c39b45971

* Active storageを使用して、画像投稿機能の実装
https://gyazo.com/b450b3242faaa1b6deb17f4cb5dd3e50

* コメント機能の実装

  https://gyazo.com/ee769e51f87287be067743451c6e7bad

## 実装予定の機能
* 検索機能、タグ付機能
* いいね機能
* 販売機能をもたせることで、CtoCの提案

## データベース設計

![ER](https://user-images.githubusercontent.com/75024186/105141339-59577000-5b3c-11eb-8cf4-743075f428ec.png)


## ローカルでの動作方法
クローンするアプリケーションを置きたいディレクトリに移動して下さい。

$ git clone https://github.com/WataruOjima/daddy_plants.git

クローンしたアプリケーションで使用するgemをインストールします。

$ bundle install

次にデーターベース作成をします。

$ rails db:create

$ rails db:migrate

最後に

$ rails s


# テーブル設計

## users テーブル
| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| name             | string  | null: false |
| profile          | text    |             |
| profile_image_id | string  |             |
| email            | string  | null: false |
| password         | string  | null: false |

### Association
- has_many: posts
- has_many: comments

## posts テーブル
| Column    | Type          | Options     |
| --------- | ------------- | ----------- |
| title     | string        |             |
| catch_copy| string        |             |
| concept   | text          |             |
| user_id   | reference     | null: false |

### Association
- belongs_to: user
- has_many: comments

## comments テーブル
| Column    | Type      | Options     |
| --------- | --------- | ----------- |
| text      | text      | null: false |
| user      | reference | null: false |
| post      | reference | null: false |

### Association
- belongs_to: post
- belongs_to: user