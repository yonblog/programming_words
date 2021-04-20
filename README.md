# Programming Words
![トップページ](./YonsPortfolios1.jpg)
<br>
<a href="https://programming-words.herokuapp.com/">アプリはコチラ</a>
<br>
<br>
<br>
<br>
## Overview(概要)
プログラミングの用語を登録することができ、登録した単語を検索することもできます。
<br>
<br>
<br>
<br>
<br>
## Details(制作しようと思った経緯)
プログラミングの学習をしていて、同じ用語を検索することが増え、もっと効率良く検索できるようにしたいと思ったから作成しました。<br>
<br>
<br>
<br>
<br>
<br>

## Persona(ペルソナ)
プログラミング初心者。
<br>
<br>
<br>
<br>
<br>
## Technique(使用した技術)
・deviseのユーザー管理機能<br>
・登録機能<br>
・編集機能<br>
・削除機能<br>
・検索機能<br>
<br>
<br>
<br>
<br>
<br>
## Point(こだわったポイント)
①登録した用語を検索できるようにしたこと<br>
②用語、用語の意味、言語の欄を分けて見やすくしているところ<br>
③全体の色あい<br>
<br>
　この作品は、同じプログラミング用語をよくGoogleで検索する機会が増え、その都度該当ページを検索することが煩わしくなったため作成しました。
 ※まだGitHubの存在を知る前に作成したため、ブランチやコミットが残っておりません。
<br>
<br>
<br>
<br>
<br>
## テーブル設計
## users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| email    | string | null: false |
| password | string | null: false |
| nickname | string | null: false |

### Association
- has_many :words


## words テーブル
| Column      | Type      | Options     |
| ----------- | --------- | ----------- |
| name        | string    | null: false |
| language    | string    | null: false |
| meaning     | string    | null: false |
| example     | string    | null: false |

### Association
- belongs_to :user

