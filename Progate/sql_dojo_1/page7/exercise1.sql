-- 売れた数が多い上位5商品のIDと名前、個数を取得してください
select items.id,name,count(*)
from items
join sales_records
on items.id  = sales_records.item_id
group by items.id,name
order by count(*) desc
limit 5;