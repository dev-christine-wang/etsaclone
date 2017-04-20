# Schema Information

## users

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| first_name      | string    | not null                  |
| last_name       | string    | not null                  |
| email           | string    | not null, indexed, unique |              
| password_digest | string    | not null                  |
| session_token   | string    | not null, indexed, unique |
| seller          | boolean   | not null, default false   |
| created_at      | datetime  | not null                  |
| updated_at      | datetime  | not null                  |

## items

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| seller_id       | integer   | not null                  |
| name            | string    | not null                  |
| image_url       | string    | not null                  |
| description     | text      | not null                  |              
| price           | integer   | not null                  |
| category        | string    | not null                  |
| quantity        | integer   | not null                  |
| created_at      | datetime  | not null                  |
| updated_at      | datetime  | not null                  |      

## carts

| column name     | data type | details                                                        |
|:----------------|:---------:|:---------------------------------------------------------------|
| id              | integer   | not null, primary key                                          |
| user_id         | integer   | not null                                                       |
| purchased       | boolean   | not null, default false, user can only have one purchased cart |
| created_at      | datetime  | not null                                                       |
| updated_at      | datetime  | not null                                                       |  

## cart_items

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| cart_id         | integer   | not null                  |
| item_id         | integer   | not null                  |
| item_quantity   | integer   | not null                  |
| created_at      | datetime  | not null                  |
| updated_at      | datetime  | not null                  |

## reviews

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| item_id         | integer   | not null                  |
| user_id         | integer   | not null                  |
| rating          | integer   | not null                  |
| description     | text      | not null                  |
| created_at      | datetime  | not null                  |
| updated_at      | datetime  | not null                  |
