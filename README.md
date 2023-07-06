# railsにおけるajaxの練習

## 環境構築
`$ docker-compose build`
`$ docker-compose run --rm app rails db:create`
`$ docker-compose run --rm app rails db:migrate`
`$ docker-compose run --rm app rails db:seed`
`$ docker-compose up`

### エラー対応
`Webpacker::Manifest::MissingEntryError`
上記のようなエラーが出たら以下を実行
`$ docker-compose run --rm app rails webpacker:compile`

## 課題
1. 新規作成をajaxで行う
- [ ] 画面リロードがされない
- [ ] 作成したタスクの行が1行追加されている

2. タスクの完了をajaxで行う
- [ ] 画面リロードがされない
- [ ] 完了ボタンが戻すボタンに変化している
- [ ] 状態が未完了から完了に変化している

3. 削除をajaxで行う
- [ ] 画面が更新されない
- [ ] 削除したタスクの行が消えている
