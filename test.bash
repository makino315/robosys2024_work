#!/bin/bash -xv
# SPDX-FileCopyrightText:2024 Kazuki Makino <s23c1131km@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目が違うよ
       res=1
}

res=0

# テストケース1: 正常な年の入力
out=$(echo "2024" | ./disney_anniversary)
[ "${out}" = "ディズニーは 1923 年に設立され、今年で 101 周年です。" ] || ng "$LINENO"

# テストケース2: 無効な年の入力（文字列）
echo "abcd" | ./disney_anniversary 2> /tmp/test.log
grep "エラー: 有効な年を入力してください。" /tmp/test.log
out=$?
[ "${out}" = 0 ] || ng "$LINENO"

# テストケース3: 空の入力
echo "" | ./disney_anniversary 2> /tmp/test.log
grep "エラー: 有効な年を入力してください。" /tmp/test.log
out=$?
[ "${out}" = 0 ] || ng "$LINENO"
exit $res

