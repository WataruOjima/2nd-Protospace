## users テーブル
| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| name             | string  | null: false |
| profile          | text    |             |
| profile_image_id | string  |             |
| email            | string  | null: false |
| password         | string  | null: false |

### Association
- has_many: posts
- has_many: comments

## posts テーブル
| Column    | Type          | Options     |
| --------- | ------------- | ----------- |
| title     | string        |             |
| catch_copy| string        |             |
| concept   | text          |             |
| user_id   | reference     | null: false |

### Association
- belongs_to: user
- has_many: comments

## comments テーブル
| Column    | Type      | Options     |
| --------- | --------- | ----------- |
| text      | text      | null: false |
| user      | reference | null: false |
| post      | reference | null: false |

### Association
- belongs_to: post
- belongs_to: user

