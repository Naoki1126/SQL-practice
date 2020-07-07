-- character_nameが「にんじゃわんこ」であるpriceカラムのデータの合計を取得してください

SELECT sum(price)
FROM purchases
WHERE character_name = 'にんじゃわんこ'
;