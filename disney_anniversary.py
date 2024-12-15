#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kazuki Makino
# SPDX-License-Identifier: BSD-3-Clause

import sys

# ディズニーの設立年
disney_founded_year = 1923

def main():
    try:
        # 標準入力から現在の年を取得
        current_year = int(sys.stdin.read().strip())

        # 設立からの経過年数を計算
        years_since_founded = current_year - disney_founded_year

        # 結果を表示
        print(f"ディズニーは {disney_founded_year} 年に設立され、今年で {years_since_founded} 周年です。")

    except ValueError:
        print("エラー: 有効な年を入力してください。")
    except Exception as e:
        print(f"エラー: {e}")

if __name__ == "__main__":
    main()

