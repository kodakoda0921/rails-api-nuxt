# README
リポジトリを確認いただきありがとうございます。

[こだ](https://twitter.com/koda_program)と申します

簡単にこのポートフォリオの紹介をさせていただきます。

## ポートフォリオ紹介
URL : https://study-meeting.com/
(レスポンシブ対応しておりますが、スマホのカメラを使ったバーコードの読取を行うため、IPhoneなどでの使用を想定しております。)

#### 使用イメージ

▼一日の摂取カロリー等の確認（右側のグレーのバーは目安量で、登録した身長、体重、年齢などから算出されます）
![IMG_5108.jpg](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/1263304/e2746c2c-9a32-ae84-af50-0bc80b066e21.jpeg)

▼バーコード読取（ブレブレですみません・・・）
![IMG_5107.jpg](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/1263304/a9df2f9b-004f-3728-1488-1402a81be63d.jpeg)

▼カレンダー

![IMG_5106.jpg](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/1263304/d636eaf2-295d-e2e7-184a-de8eb935d06e.jpeg)

#### 概要
食品に記載されているバーコードを読み取り、カロリーなどを入力して登録することで、栄養素の管理を行うことができる。
バーコード情報は全てのユーザに共有され、自由に使うことができる（誰かがバーコード情報を登録していれば、カロリー等の入力の手間がなくなる）。
バーコードがない商品も登録可能。
#### 開発背景
私は現在友人とルームシェアしながら生活しているのですが、その友人と共に、最近太り続けていることに危機感を感じ、一緒にダイエットをすることを決めました。
また、私も友人も運動が大の苦手だったので、運動量を増やすのではなく食事の量を減らそうと考えました。
ところが、食べる量を減らしているつもりなのですが、全く体重は減らず、むしろ増えてしまい困っていました。
そこで、実際に食事の量が減っているのか確かめるべく、食事管理を行うアプリをダウンロードして管理することにしました。
しかし、私も友人も面倒なことが大の苦手でもあり、カロリーの入力が手間となり、結局長続きしませんでした。
そこで、バーコード情報をカメラで読み取るだけで勝手に色々栄養素を入力してくれて、さらに、基準値を超えているかどうか一目でわかるようなWEBアプリがあったら食事管理が続くのでは？と思い開発することにしました。

#### 使用技術
- フロントエンド
 - Vue
 - Nuxt.js（SSRモード）
 - Vuetify
 - ESLint/Prettier（コード整形）
- バックエンド
 - Ruby 3.0.0
 - Ruby on Rails 6.1.3.1 （API）
- インフラ・開発環境
 - Docker
 - Firebase-Auth
 - AWS(ECR,ECS(fargate),S3,ALB,RDS）
 - Github Actions（CI/CD）

#### 実装機能
- プロフィール
 - プロフィール表示、編集機能
 - 画像プレビュー機能
- 商品情報
 - バーコードあり商品登録、削除、編集機能
 - バーコードなし商品登録、削除、編集機能
 - 1日に摂取した栄養素の表示機能
 - 目安栄養素算出機能（2020年の厚生労働省データ参照）
- カレンダー
 - カレンダーに目安カロリーを超えたか否か表示する機能
- 認証
 - ゲストログイン機能
 - Twitter認証機能(ユーザ登録を含む)

#### 構成図
![Untitled Diagram (2).jpg](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/1263304/e7870686-a422-d24e-fd27-1e2f6e56a459.jpeg)

#### こだわった点
- 日々記録するものなので、シンプルで使いやすいUI/UXを目指した
- バーコードがDBに登録されているものは自動入力する。商品にバーコードがなくても予測変換（サジェスト）を表示するなど、入力の手間をいかに減らすかを考えた設計をした
