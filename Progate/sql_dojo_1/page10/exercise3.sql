-- グレーパーカーより売上額が高い商品の指定されたデータを取得してください
select items.id,items.name,sum(price) as '売上額'
from items
join sales_records
on items.id = sales_records.item_id
group by items.id,items.name,items.price
having sum(price) > (
  select sum(price)
  from items
  join sales_records
  on items.id = sales_records.item_id
  where name = 'グレーパーカー'
  
);