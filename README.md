** MyCartify

MyCartify is a site created for customers to be able to buy a wide range of items, similar to an eBay store. Customers are able to view items for sale, create an account, add items to their shopping cart and then purchase the items.

Admin users are able to view orders taken and mark those orders as shipped.

General Users are able to view products without signing up but to purchase items they must sign up to become a member of the site. The member is able to add items to their cart then pay for the items in the cart via the checkout/payment processing.

Framework: Ruby + Rails, Javascript, jQuery, HTML, CSS, Bootstrap.

API's: Stripe, Cloudinary

Models

Buyer <- has one cart, has many lineitems through cart, has many orders.

Category <- has many products.

Product <- belongs to Category, has many lineitems, has many orderlines.

Cart <- has many lineitems.

Line Item <- belings to product, cart.

Order <- belongs to buyer, has many orderlines.

Orderline <- belongs to product, belongs to order.
