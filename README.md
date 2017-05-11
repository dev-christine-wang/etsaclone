# EtsAClone

[EtsAClone live](http://etsaclone.christinetwang.me/)

EtsAClone is an e-commerce web application inspired by Etsy that is built using Ruby on Rails, PostgreSQL, and React/Redux.

## Features & Implementation

### Shopping Cart

There are two shopping cart-related tables stored in the database: (1) carts, which indicate the user_id, purchased status (a boolean column with false indicating an *active* cart and true indicating an *inactive* cart), and created_at and updated_at details and (2) cart_items, which indicate the cart_id, item_id, item_quantity, and  created_at and updated_at details for all the items in a user's *active* cart.

When a user registers for the first time, an *active* shopping cart is issued, and all the items added to the shopping cart is tracked in the cart_items table. Once the user makes a purchase, an Ajax request is made to the backend to make the cart *inactive* and to issue a new shopping cart.

### Reviews

The reviews table hold item_id, user_id, rating, description, and created_at and updated_at details. As soon as a user makes a purchase, the user is taken to the purchased_items page, where all the purchased items are listed and reviews for those items can be submitted.

### Search Bar

The search bar was implemented using pg_search. Pg_search_scope was used to build a full text search scope in the items table, where the search was made against the name, description, and category columns.

## Future Directions for the Project

In addition to the features outlined above, I plan on implementing the following features:

### Search Bar Using Pg_Search's Trigram Search

Trigram search will be more forgiving and return search results for words that might have typos and misspellings.

### Favorite Button

The favorite button will allow users to save items that they're considering purchasing and allow them to purchase them at a later date.
