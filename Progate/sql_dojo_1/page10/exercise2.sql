-- 売上額が上位5位の商品の指定されたデータを取得してください
select items.id,items.name,sum(price) as '売上額'
from items
join sales_records
on items.id = sales_records.item_id
group by items.id
order by sum(price) desc
limit 5;