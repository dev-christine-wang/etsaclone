```js
{
  currentUser: {
    id: 1,
    email: "sample_user_email_address",
    cart: {
      cart_id: 2
    },
    completed_transactions: {
      1: {
        cart_id: 1
      }
    },
    reviews: {
      1: {
        review_id: 1
      }
    }
  },
  form: {
    signUp: {errors: []},
    signIn: {errors: []}
  },
  sellers: {
    1: {
      name: "sample_seller_name",
      items: {
        1: {
          item_id: 1
        }
      }
    }
  },
  items: {
    1: {
      seller_id: 1,
      name: "sample_item_name",
      description: "sample_item_description",
      category: "sample_item_category",
      price: 15,
      quantity: 100,
      reviews: {
        1: {
          review_id: 1
        }
      }
    }
  }
  carts: {
    1: {
      user_id: 1,
      items: {
        1: {
          item_id: 1,
          item_quantity: 1
        }
      }
    }
  },
  completed_transactions: {
    1: {
      cart_id: 1,
    }
  },
  reviews: {
    1: {
      item_id: 1,
      user_id: 1,
      rating: 5,
      description: "sample_item_review_description"
    }
  }
}
```js
