# テーブル設計

## usersテーブル
| Column               | Type   | Options    |
|----------------------|--------|------------|
|nickname              |string  |null: false |
|email                 |string  |unique: true|
|last_name             |string  |null: false |
|first_name            |string  |null: false |
|ruby_last_name        |string  |null: false |
|ruby_first_name       |string  |null: false |
|encrypted_password    |string  |null: false |
|birthday              |date    |null :false |

### Association

- has_many :items
- has_many :purchases

## itemsテーブル
| Column            | Type     | Options         |
|-------------------|----------|-----------------|
|user               |references|foreign_key: true|
|product            |string    |null: false      |
|comment            |text      |null: false      |
|category_id        |integer   |null: false      |
|status_id          |integer   |null: false      |
|delivery_charge_id |integer   |null: false      |
|delivery_area_id   |integer   |null: false      |
|delivery_days_id   |integer   |null: false      |
|price              |integer   |null: false      |


### Association

- belongs_to :user
- has_one :purchase

## shipping_addressesテーブル
| Column         | Type     | Options         |
|----------------|----------|-----------------|
|postal_code     |string    |null: false      |
|delivery_area_id|integer   |null: false      |
|city            |string    |null: false      |
|address         |string    |null: false      |
|phone_number    |string    |null: false      |
|building        |string    |                 |
|purchase        |references|foreign_key: true|

### Association

- belongs_to :purchase


## purchasesテーブル
| Column         | Type     | Options         |
|----------------|----------|-----------------|
|item            |references|foreign_key: true|
|user            |references|foreign_key: true|

### Association

- has_one :shipping_address
- belongs_to :user
- belongs_to :item