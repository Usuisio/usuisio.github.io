# usuisio.github.io — ぬくもりロボット工房 公式サイト

作者のポータル＋各ゲーム紹介ページ。**10年蓄積・放置耐性を最優先**に設計する。
公開URL: https://usuisio.github.io

## 設計原則（変えるときは作者と相談）

- **独自ドメインは使わない**（判断済み：更新忘れで失効したドメインは github.io より悪い。AI検索が独自ドメイン優遇する証拠が観測されたら、その時に301付きで移行する）。
- SSG は **Hugo (extended) をバージョン固定**（`.github/workflows/hugo.yml` の `HUGO_VERSION` が正）。npm 依存を持ち込まない。錆びる部品を増やさない。
- **蓄積する本体は `content/` 以下の Markdown**。テンプレート（`layouts/`）は将来書き捨てられる前提で、文章・データをテンプレに埋め込まない。
- 多言語：`/` = 日本語、`/en/` = 英語。言語追加は `hugo.toml` に language を足し `content/<lang>/` を作るだけで済む構造を保つ。
- **ゲームごとにデザイン（配色・フォント）を変える**。ポータルは温かいロボット工房の雰囲気。フォントは **Webフォントとしてのライセンス確認必須**（ゲーム内OKでもWeb不可がある）。
- 動画は GIF 禁止。**音無しループMP4**（`autoplay muted loop playsinline`）。素材変換は ffmpeg。
- **コミット＆プッシュは Claude の判断で行ってよい**（作者承認済み。push しないと Pages で確認できないため）。

## 作業の流れ

各ゲームの紹介ページは、ローカルの各ゲームリポジトリ（`C:\Users\stepp\src\GameAWeek\` など）を読んで内容を理解し、このリポジトリに書く。ゲーム repo は private のままでよい。

## 実行

- ローカルビルド: `hugo`（winget の Hugo.Hugo.Extended。PATH に無ければ `%LOCALAPPDATA%\Microsoft\WinGet\Links\hugo.exe`）
- プレビュー: `hugo server`
- デプロイ: main に push → GitHub Actions（`hugo.yml`）が自動ビルド → Pages 公開
- 見た目確認: Playwright MCP でスクリーンショット（スマホ幅 390px / PC幅 1280px の両方を見る）

## ページ追加時の SEO/GEO チェックリスト

- title / meta description（各言語）
- OGP（og:image はページごとに用意）
- JSON-LD `VideoGame` + `sameAs` で Steam/unityroom/itch のストアページを指す（相互リンクの輪が「公式」の証明）
- hreflang はテンプレが自動出力（baseof.html）
- sitemap.xml / robots.txt は Hugo が自動生成
- 事実を平文で書く（ジャンル・プレイ時間・対応環境・価格・リリース日）— AI検索はここを読む

## 作者について

- コードは読まない。見た目と手触りで判定する。スクリーンショットや公開URLで結果を見せること。
- ゲーム開発は Godot（GameAWeek）。Steam 作品: DoppelTest。unityroom: https://unityroom.com/users/usuisio （bot対策があるので取得は Playwright 経由で）
