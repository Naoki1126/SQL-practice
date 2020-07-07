-- 「サンダル」を購入したユーザーのidと名前を取得してください
select users.id, users.name
from sales_records
join users
on sales_records.user_id = users.id
join items
on sales_records.item_id = items.id
where items.name = 'サンダル'
group by users.id
order by users.id asc;