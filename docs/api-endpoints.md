# API Endpoints

## HTML API

### Root

* `GET /`
  * loads React web app

## JSON API

### Users

* `POST /api/users`
* `PATCH /api/users`
* `GET /api/users/:id/pending_transactions`
  * displays a list of all the pending transactions for a user
* `GET /api/users/:id/completed_transactions`
  * displays a list of all the completed transactions by a user
* `GET /api/users/:id/reviews`
  * displays a list of all the reviews submitted by a user

### Session

* `POST /api/session`
* `DELETE /api/session`

### Sellers

* `GET /api/sellers`
  * displays a list of all the sellers
* `GET /api/sellers/:id`
  * displays a seller
* `GET /api/sellers/:id/items`
  * displays a list of all the items that a seller has listed for sale

### Items

* `GET /api/items`
* `GET /api/items/:id/reviews`
  * displays a list of all the reviews for an item

### Transactions

* `POST /api/transactions`
* `PATCH /api/transactions/:id`
* `DELETE /api/transactions/:id`

### Reviews

* `POST /api/reviews`
* `PATCH /api/reviews/:id`
* `DELETE /api/reviews/:id`
