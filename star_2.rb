def main
    #最大行数
    max_row_count = 5

    # 中央値を算出
    center = (max_row_count / 2) + 1

    for row in 1..max_row_count do
        # スペースの作成
        space_length = (center - row).abs
        space_str = create_str(space_length, " ")

        # 文字列の作成
        diff = center - row
        str_length = ( center - diff.abs - 1) * 2 + 1
        str = create_str(str_length, "*")

        # 出力
        puts space_str + str

    end
end

def create_str(length, str)
    s = ""
    length.times do
        s += str
    end
    s
end

if __FILE__ == $0
    main
end