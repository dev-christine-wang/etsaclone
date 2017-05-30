# EtsAClone

[Explore EtsAClone](https://etsaclone.christinetwang.me/)

EtsAClone's a single-page e-commerce web application that's inspired by Etsy.

![EtsAClone](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/etsaclone.png)

## Technologies Used

* Ruby on Rails
* JavaScript
* React
* Redux
* PostgreSQL
* AWS
* HTML5
* CSS3

## Features and Implementation

### User Authentication

EtsAClone has a full end-to-end authentication system where users can register or sign in, and continue to explore the site without a redirect. When a user registers, his/her password is encrypted into a password hash with BCrypt before it's stored in the database. When a user signs in, his/her password is, again, encrypted with BCrypt and compared with the stored password hash for that user. Although registering or signing in isn't required to explore the site, it's required to add items to a shopping cart and to make a purchase. The two forms are shown below:

![Register](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/register.png)

![Sign In](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/sign_in.png)

### Item Listings

Users can browse the latest items from the home page or all the items from the All Jewelry page. When a user clicks on an item, he/she will be directed to the item page, where the user can read all the reviews for that item and/or select a quantity before adding the item to his/her shopping cart. An example of an item page is shown below:

![Item Page](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/item_page.png)

At the database level, all the items are stored in the items table, which holds the seller_id, name, description, price, quantity, created_at, updated_at, image_file_name, image_content_type, image_file_size, and image_updated_at information for each item. For scaleability and performance reasons, I chose to store all the images in Amazon S3 using Paperclip.

As for the front end, the items displayed in the home page and the All Jewelry page are rendered with the same item_index_container component. Below is the code:

```javascript
import { connect } from 'react-redux';

import { selectAllItems, selectFewItems } from '../../reducers/selectors';
import { fetchItems, fetchSearchedItems } from '../../actions/item_actions';
import ItemIndex from './item_index';

const mapStateToProps = state => ({
  items: selectAllItems(state),
  fewItems: selectFewItems(state)
});

const mapDispatchToProps = dispatch => ({
  fetchItems: () => dispatch(fetchItems()),
  fetchSearchedItems: searchWords => dispatch(fetchSearchedItems(searchWords))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ItemIndex);
```

Individual items on the item pages are rendered with the item_show_container component.

### Shopping Cart

When a user registers, a shopping cart is given to the user. Items can be added to the shopping cart by selecting a quantity and clicking the 'Add to cart' button from individual item pages. Once an item is added to the shopping cart, the user is directed to the cart page, where the user has access to all the items in the shopping cart. From this page, the user can do the following: (1) navigate to All Jewelry page and shop more, (2) modify quantities for shopping cart items, (3) remove shopping cart items, and (4) make a purchase. The total price shown changes with any changes to the shopping cart items. Below is an example of a cart page:

![Cart Page](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/cart_page.png)

When the user makes a purchase, he/she is directed to the purchase page and given a new shopping cart, and his/her previous shopping cart becomes inactive.

At the database level, there are two cart-related tables: (1) carts table, which holds the user_id, purchased (status with true indicating an inactive cart and false indicating an active cart), created_at, and updated_at information for each cart and (2) cart_items table, which holds the cart_id, item_id, item_quantity, created_at, and updated_at information for the user's active cart.

As for the front end, the shopping cart items are rendered with the cart_items_index_container component and the purchased items are rendered with the carts_index_container component.

### Reviews

When a user makes a purchase, he/she is directed to the purchase page, where he/she has access to review forms for the purchased items. When the user submits a review for an item, he/she is directed to the page for that item and his/her review can be seen on that page. Below are examples of a purchase page and an item page with a newly submitted review by a user named 'Christine':

![Purchase Page](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/purchase_page.png)

![Item Page with New Review](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/item_page_with_new_review.png)

At the database level, reviews are stored in the reviews table, which holds the item_id, user_id, rating, description, created_at, and updated_at information about each review.

As for the front end, the review forms that are displayed in the purchase page are rendered with the review_form_container component and the reviews that are displayed on each item page are rendered with the review_index_container component.

### Site-Wide Search Bar

EtsAClone has a site-wide search bar that can be accessed from every page. The search bar was implemented using pg_search. Pg_search_scope was used to build a full text search scope in the items table, where the search was made against the name, description, and category columns. Below is an example of a search result page:

![Search Result Page](https://github.com/christinewang319/etsaclone/blob/master/app/assets/images/search_result_page.png)

For the front end, the results are rendered with the item_index_container component.

## Future Features

- [ ] Search Bar Using Pg_Search's Trigram Search
- [ ] Wishlist "Favorites" Button
- [ ] Category Filter and Pages
