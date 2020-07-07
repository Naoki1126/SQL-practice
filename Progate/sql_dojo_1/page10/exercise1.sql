-- 男性向け、女性向け、男女兼用商品ごとに指定されたデータを取得してください
select gender, sum(items.price) as '売上額'
from items
join sales_records
on items.id = sales_records.item_id
group by gender;