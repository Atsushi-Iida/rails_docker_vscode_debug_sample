def main
    # オブジェクトの列数
    max_object_col_count = 5
    # オブジェクトの行数
    max_object_row_count = 2
    #最大行数
    max_row_count = 11
    # 中央値を算出
    center = (max_row_count / 2) + 1

    max_object_row_count.times do
        for row in 1..max_row_count do
            row_str = ""
            max_object_col_count.times do
                # スペースの作成
                space_length = (center - row).abs
                space_str = create_str(space_length, " ")

                # 文字列の作成
                diff = center - row
                str_length = ( center - diff.abs - 1) * 2 + 1
                str = create_str(str_length, "*")

                row_str += space_str + str + space_str
            end
            # 出力
            puts row_str
        end
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