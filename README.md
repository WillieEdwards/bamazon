# BAMAZON (an Amazon-like Storefront)

# Overview

**Bamazon** is an Amazon-like storefront utilizing MySQL and JavaScript. The app will take in orders from customers and deplete stock from the store's inventory.

# Applied Technologies

**GitHub** - file repository

**Visual Studio Code** - text editor

**Node.js** - terminal

**MySQL** - database

**NPM Packages**

* MySQL (https://www.npmjs.com/package/mysql)
* Inquirer (https://www.npmjs.com/package/inquirer)
* Table (https://www.npmjs.com/package/table)

**Prerequisites**

1. Node.js - download the latest version of Node (https://nodejs.org/en/).

1. Create a new GitHub repository called bamazon and clone it to your computer.

1. **Bamazon Customer** - Send requests in the terminal using the inquire package to MySQL to purchase items.

# Bamazon Customer

## How to Use

1. Open the terminal and input "node ./bamazonCustomer.js"
    * This will display a table to the customer displaying all available products in the store.
    * It will also display a prompt asking which product they would like to purchase based on the item ID.

1. Once the customer enters the item ID of the product they would like to purchase:
    * It will then prompt the customer to enter the quantity they would like to buy.

1. Once the customer enters the quantity of the item they would like to purchase, the customer will either be displayed:
    * A successful order message, with a total price of their order, and a prompt asking if they would like to continue shopping. 
    
    **OR**

    * A message informing the customer that there isn't a sufficient quantity in stock, and a prompt asking if they would like to continue shopping.

1. Input **Ctrl + C** to exit out of the store.

## Demo

![Bamazon Customer Demo](/images/bamazon-customer.gif)