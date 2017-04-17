# Component Hierarchy

**HeaderContainer**

* Header

**HomeContainer**

* Masthead
  * SearchBarContainer
* ItemsContainer

**ItemsContainer**

* Items
  * Item

**ItemContainer**

* Item
  * AddToCartContainer
* Reviews
  * Review

**CartContainer**

* Items
  * Item
* MakeAPurchaseContainer

**PurchasesContainer**

* Items
  * Item
    * SubmitReviewContainer

## Routes

| path                    | component               |
|:------------------------|:-----------------------:|
| "/"                     | "HeaderContainer"       |
| "/home"                 | "HomeContainer"         |
| "/items"                | "ItemsContainer"        |
| "/items/:category       | "ItemsContainer"        |
| "/items/:id"            | "ItemContainer"         |   
| "/cart"                 | "CartContainer"         |
| "/purchases"            | "PurchasesContainer"    |
