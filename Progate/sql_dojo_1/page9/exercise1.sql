-- 10個以上購入したユーザーIDとユーザー名、購入した商品の数を取得してください
select users.id,users.name,count(*) as '購入数'
from users
join sales_records
on users.id = sales_records.user_id
group by users.id
having count(*) >= 10;