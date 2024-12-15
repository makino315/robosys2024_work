<!---
  SPDX-FileCopyrightText:2024 Kazuki Makino <s23c1131km@s.chibakoudai.jp>
  SPDX-License-Identifier: BSD-3-Clause
 --->

[![test](https://github.com/makino315/robosys2024_work/actions/workflows/test.yml/badge.svg)](https://github.com/makino315/robosys2024_work/actions/workflows/test.yml)
# その年がDisney何周年かが分かるコマンド

## 概略
- このリポジトリは、Disneyが何周年かが分かります。
- 西暦を入力するとその年がDisney何周年かが出力されます。
- 数字以外が入力されるとエラーが表示されます。

## 必要なツールおよびテスト設定
- Python
  - テスト済みバージョン→3.6~3.11
  - Windows11 WSL2 (Ubuntu-20.04 LTS)

## クローンの仕方
ターミナルで次のコマンドを入力してリポジトリをクローンしてください。
```bash
git clone https://github.com/makino315/robosys2024_work.git
cd robosys2024_work
chmod +x disney_anniversary
```

## 実行の仕方
ターミナルで以下のコマンドを実行します。
```bash
echo 2024 | ./disney_anniversary
```
これにより、ディズニーの設立年からの経過年数が出力されます。
- 出力例
```bash
ディズニーは 1923 年に設立され、今年で 101 周年です。
```
- エラーの場合（数字以外が入力された場合）
```bash
エラー: 有効な年を入力してください。
```

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
  - [スライド](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- ©2024 Kazuki Makino