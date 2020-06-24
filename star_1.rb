def main

    #最大行数
    max_row_count = 11

    # 中央値を算出
    center = (max_row_count / 2)+1

    for row in 1..max_row_count do
        # 出力する文字数を算出
        # 中央値（中央値が出力する最大文字数） - row = 差分
        diff = center - row
        # 中央値 - 差分の絶対値 = 表示する文字数
        str_length = center - diff.abs

        # 文字生成
        str = ""
        str_length.times do
            str += "*"
        end

        # 文字出力
        puts str

    end
end

if __FILE__ == $0
    main
end