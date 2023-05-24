# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## usersテーブル

| Column               | Type       | Options                   |
| -------------------- | ---------- | ------------------------- |
| nickname             | string     | null: false               |
| email                | string     | null: false,unique: true  |
| encrypted_password   | string     | null: false               |  
| family_name          | string     | null: false               |           
| first_name           | string     | null: false               |
| family_name_kana     | string     | null: false               |
| first_name_kana      | string     | null: false               |
| birthday             | date       | null: false               |

### Association
has_many : searches
has_many :jobs, through: :searches
## searchesテーブル
| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| user                 | references | null: false, foreign_key:true  |
| preference_id        | integer    | null: false                    |
| city_name            | string     | null: false                    |  
| keyword              | text       | null: false                    |           
| min_salary           | integer    | null: false                    |
| max_salary           | integer    | null: false                    |
| employment_type      | integer    | null: false                    |

### Association
has_many : jobs, dependent: :destroy
belongs_to : user

## jobsテーブル
| Column               | Type       | Options                       |
| -------------------- | ---------- | -------------------------     |
| url                  | string     | null: false                   |
| company_name         | string     | null: false                   |
| description          | text       | null: false                   |  
| published_at         | integer    | null: false                   |           
| title                | string     | null: false                   |
| search               | references | null: false, foreign_key: true|
| user                 | references | null: false, foreign_key: true|
### Association
belongs_to : user
belongs_to : search
## job_sitesテーブル
| Column               | Type       | Options                       |
| -------------------- | ---------- | -------------------------     |
| url                  | string     | null: false                   |
| company_name         | string     | null: false                   |
| site_type            | references | null: false, foreign_key: true|  
### Association
has_many : searches
has_many : jobs, through: :searches
belongs_to : site_type
## site_typesテーブル
| Column               | Type       | Options                       |
| -------------------- | ---------- | -------------------------     |
| name                 | string     | null: false                   |

