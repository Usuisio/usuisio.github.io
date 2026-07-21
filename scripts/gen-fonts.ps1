#!/usr/bin/env pwsh
# Zen Maru Gothic (SIL OFL — 再配布可) をダウンロードし、サイトで使う文字だけの軽量 woff2 を生成する。
# 文字集合 = content/**/*.md と layouts/**/*.html の全文字 + かな・英数・記号の常備セット。
# サイトの文言を変えたら再実行すること: pwsh scripts/gen-fonts.ps1
# 必要: Python + fonttools + brotli (pip install fonttools brotli)
param([string]$WorkDir = (Join-Path ([IO.Path]::GetTempPath()) "zenmaru-src"))
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
New-Item -ItemType Directory -Force $WorkDir | Out-Null

$base = "https://raw.githubusercontent.com/google/fonts/main/ofl/zenmarugothic"
foreach ($w in "Medium", "Bold") {
	$ttf = Join-Path $WorkDir "ZenMaruGothic-$w.ttf"
	if (-not (Test-Path $ttf)) { curl.exe -sL -o $ttf "$base/ZenMaruGothic-$w.ttf" }
}

# 文字集合を組み立てる
$sb = [System.Text.StringBuilder]::new()
Get-ChildItem (Join-Path $root "content") -Recurse -Filter *.md | ForEach-Object {
	[void]$sb.Append((Get-Content $_.FullName -Raw))
}
Get-ChildItem (Join-Path $root "layouts") -Recurse -Filter *.html | ForEach-Object {
	[void]$sb.Append((Get-Content $_.FullName -Raw))
}
32..126 | ForEach-Object { [void]$sb.Append([char]$_) }          # ASCII
0x3041..0x30FF | ForEach-Object { [void]$sb.Append([char]$_) }   # ひらがな・カタカナ
[void]$sb.Append("、。・ー〜！？：；（）「」『』【】※→←↑↓○×◎©↗　")
$glyphs = Join-Path $WorkDir "glyphs.txt"
Set-Content -Path $glyphs -Value $sb.ToString() -Encoding utf8 -NoNewline

$outDir = Join-Path $root "static/fonts"
New-Item -ItemType Directory -Force $outDir | Out-Null
foreach ($w in "Medium", "Bold") {
	$in = Join-Path $WorkDir "ZenMaruGothic-$w.ttf"
	$out = Join-Path $outDir "ZenMaruGothic-$w-sub.woff2"
	python -m fontTools.subset $in "--text-file=$glyphs" --flavor=woff2 "--output-file=$out"
}
curl.exe -sL -o (Join-Path $outDir "OFL.txt") "$base/OFL.txt"
Get-ChildItem $outDir | Select-Object Name, Length
