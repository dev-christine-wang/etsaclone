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

## sellers

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| name            | string    | not null, indexed, unique |

## items

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| seller_id       | integer   | not null                  |
| name            | string    | not null                  |
| description     | text      | not null                  |              
| category        | string    | not null                  |
| price           | integer   | not null                  |
| quantity        | integer   | not null                  |      

## carts

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| user_id         | integer   | not null, unique          |

## pending_transactions

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| cart_id         | integer   | not null                  |
| item_id         | integer   | not null                  |
| item_quantity   | integer   | not null                  |

## completed_transactions

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| cart_id         | integer   | not null                  |

## reviews

| column name     | data type | details                   |
|:----------------|:---------:|:--------------------------|
| id              | integer   | not null, primary key     |
| item_id         | integer   | not null                  |
| user_id         | integer   | not null                  |
| rating          | integer   | not null                  |
| description     | text      | not null                  |

[//]: # (Remember to include timestamps!)
