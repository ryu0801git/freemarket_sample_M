# README

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false,unique: true|
|email|string|null: false,unique: true|
|password|string|null: false|
|introduciton|text||
|bithday|date|null: false|
|evaluation|string||
|card|integer||
|payment_id|integer||
|point_id|integer||
|sales_mony_id|integer||

### Association
- has_many :items, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_one :cards, dependent: :destroy
- has_one :points, dependent: :destroy
- has_one :sales_monies, dependent: :destroy
- has_many :payments, dependent: :destroy
- has_one :addresses, dependent: :destroy


## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|

### Association
- belongs_to user


## Addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|string|null: false|
|building_number|integer|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building_number|string||
|phone_number|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to user


## Itemsテーブル
|Column|Type|Options|
|------|----|-------|
|product_name|text|null: false|
|price|integer|null: false|
|product_description|text|null: false,foreign_key: true|
|category_id|integer|null: false,foreign_key: true|
|size_id|integer|null: false,foreign_key: true|
|product_state|string|null: false|
|trade_state|string|null: false|
|listing_state|string|null: false|
|brand_id|integer|null: false,foreign_key: true|
|delivery_id|integer|null: false,foreign_key: true|
|image_id|integer|null: false,foreign_key: true|
|comment_id|integer|null: false,foreign_key: true|
|user_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belonds_to :category
- belongs_to :brand
- has_many :images
- has_many :commensts, dependent: :destroy
- has_one :deliveries, dependent: :destroy


##categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category_name|string|null: false|
|parent_id|integer|foreign_key: parent_id|
|item_id|integer|null: false, foreign_key: true|

### Association
- has_many :items
- belongs_to :parent, class_name: :Category
- has_many :children, class_name: :Category


## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
- has_many :items


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand|string||
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


## deliveriesテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_cost|integer|null: false|
|regional_delivery|string|null: false|
|delivery_method|string|null: false|
|delivery_days|integer|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


## commentテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|valid_month|integer|null: false|
|vaild_year|integer|null: false|
|security_code|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## pontsテーブル
|Column|Type|Options|
|------|----|-------|
|point|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## Sales_moneisテーブル
|Column|Type|Options|
|------|----|-------|
|sales_money|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## Paymentsテーブル
|Column|Type|Options|
|------|----|-------|
|payment|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
