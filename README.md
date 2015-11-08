##### MyCartify

MyCartify is a group project completed as part of the General Assembly Sydney Web Development Immersive program in September 2015. The project was created by Kylie O'Brien-Pratt, Guy Chamberlain and Tony Gagliardi.

MyCartify is an ecommerce site created for customers to be able to buy a wide range of items, similar to eBay. Customers are able to view items for sale, create an account, add items to their shopping cart and then purchase the items.

Admin users are able to view orders taken and mark those orders as shipped.

General Users are able to view products without signing up but to purchase items they must sign up to become a member of the site. The member is able to add items to their cart then pay for the items in the cart via the checkout/payment processing.

The site can be accessed on Heroku https://murmuring-spire-3813.herokuapp.com/

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
