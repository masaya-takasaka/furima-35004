# テーブル設計

## usersテーブル
| Column  | Type   | Options   |
|---------|--------|-----------|
|nickname |string  |null: false|
|email    |string  |null: false|
|name     |string  |null: false|
|password |string  |null: false|
|birthday |date    |null :false|

### Association

- has_many :items
- has_many :purchases

## itemsテーブル
| Column         | Type     | Options         |
|----------------|----------|-----------------|
|user            |references|foreign_key: true|
|image           |string    |null: false      |
|product         |string    |null: false      |
|comment         |text      |null: false      |
|category        |string    |null: false      |
|status          |string    |null: false      |
|delivery_charge |numeric   |null: false      |
|delivery_area   |numeric   |null: false      |
|delivery_days   |numeric   |null: false      |
|price           |numeric   |null: false      |
|shipping_address|references|foreign_key: true|
|purchase        |references|foreign_key: true|

### Association

- has_one :shipping_addresses
- has_one :purchases

## shipping_addressesテーブル
| Column         | Type     | Options         |
|----------------|----------|-----------------|
|postal_code     |integer   |null: false      |
|prefecture      |string    |null: false      |
|city            |string    |null: false      |
|address         |string    |null: false      |
|phone_number    |integer   |null: false      |

### Association

- belongs_to :items

## purchasesテーブル
| Column         | Type     | Options         |
|----------------|----------|-----------------|
|buyer           |string    |null: false      |
|user            |references|foreign_key: true|

### Association

- belongs_to :users
- belongs_to :items