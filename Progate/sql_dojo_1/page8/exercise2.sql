-- 日ごとの売上額とその日付を取得してください
select purchased_at,sum(price) as '売上額'
from sales_records
join items
on sales_records.item_id = items.id
group by purchased_at