# usuisio.github.io — ぬくもりロボット工房 公式サイト

ポータル＋各ゲーム紹介ページ。**10年蓄積・放置耐性を最優先**に設計する。
公開URL: https://usuisio.github.io

## 設計原則

- Hugo (extended) は**バージョン固定**（`.github/workflows/hugo.yml` の `HUGO_VERSION` が正）。npm 依存を持ち込まない。
- **蓄積する本体は `content/` 以下の Markdown**。テンプレート（`layouts/`）は書き捨て可能に保ち、文章・データを埋め込まない。
- 多言語：`/` = 日本語、`/en/` = 英語。言語追加は `hugo.toml` に言語を足して `content/<lang>/` を作るだけで済む構造を保つ。
- 独自ドメインは使わない方針（baseURL は github.io で固定）。
- ゲームの紹介ページは、そのゲームの配色・フォントでデザインする。フォントは **Webフォントとしてのライセンス確認必須**。
- 動画は GIF でなく**音無しループMP4**（`autoplay muted loop playsinline`）。変換は ffmpeg。

## 実行

- ビルド: `hugo` ／ プレビュー: `hugo server`
- Webフォント: Zen Maru Gothic のサブセットを `pwsh scripts/gen-fonts.ps1` で生成（SIL OFL＝再配布可なので同梱してよい）。**サイトの文言を変えたら再実行**して woff2 を更新すること。もじワク研究等のOFLでないフォントはファイルを置かない（画像/SVG化のみ）。
- デプロイ: main に push → GitHub Actions（`hugo.yml`）が自動ビルド → Pages に反映
- コミット＆プッシュは作業の区切りごとに随時行ってよい。

## ギャラリー（content/<lang>/gallery/）の運用

- 作品追加＝ `assets/gallery/<ゲーム>/` に原画を置き、作品 md を1つ書く。表示用 webp / OGP用 jpg はビルド時に自動生成される。展示室の配色は各室 `_index.md` の `params.theme` で切替。
- 文章の分担：**alt・description・英訳など検索向けテキストは Claude が書いてよい**（事実描写ベースで充実させる。SEO/GEO はここが本体）。**caption・本文は人の目に触れる「作者の声」**なので、作者メモがあればそれを整えて使い、なければ事実だけの短文か省略でよい。作者が考えていない意図・感情を創作して足さない。

## ページ追加時の SEO/GEO チェックリスト

- title / meta description（各言語）
- OGP（og:image はページごとに用意）
- JSON-LD `VideoGame` + `sameAs`（Steam / unityroom / itch のストアページと相互リンクの輪を作る）
- 事実を平文で書く（ジャンル・プレイ時間・対応環境・価格・リリース日）
- hreflang はテンプレが自動出力、sitemap / robots は Hugo が自動生成
