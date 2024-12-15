#!/bin/bash -xv
# SPDX-FileCopyrightText:
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目が違うよ
       res=1
}

res=0

# テストケース1: 正常な年の入力
out=$(echo -e "2024" | ./disney_anniversary.py)
[ "${out}" = "ディズニーは 1923 年に設立され、今年で 101 周年です。" ] || ng "$LINENO"

# テストケース2: 無効な年の入力（文字列）
out=$(echo -e "abcd" | ./disney_anniversary.py)
[ "${out}" = "エラー: 有効な年を入力してください。" ] || ng "$LINENO"

# テストケース3: 空の入力
out=$(echo -e "" | ./disney_anniversary.py)
[ "${out}" = "エラー: 有効な年を入力してください。" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

