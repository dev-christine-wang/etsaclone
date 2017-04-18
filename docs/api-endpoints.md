# API Endpoints

## HTML API

### Root

* `GET /`
  * loads React web app

## JSON API

### Users

* `POST /api/users`
* `PATCH /api/users`
* `GET /api/users/:userId`
  * displays current user
* `GET /api/users/:userId/carts/:cartId/items`
  * displays a list of all the items in a user's cart
* `GET /api/users/:userId/reviews`
  * displays a list of all the reviews submitted by a user

### Session

* `POST /api/session`
* `DELETE /api/session`

### Sellers

* `GET /api/sellers`
  * displays a list of all the sellers
* `GET /api/sellers/:sellerId`
  * displays a seller
* `GET /api/sellers/:sellerId/items`
  * displays a list of all the items that a seller has listed for sale

### Items

* `GET /api/items`
* `GET /api/items/:itemId/reviews`
  * displays a list of all the reviews for an item

### Reviews

* `POST /api/reviews`
* `PATCH /api/reviews/:reviewId`
* `DELETE /api/reviews/:reviewId`
