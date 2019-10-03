//require mysql and inquirer
var mysql = require('mysql');
var inquirer = require('inquirer');
var Table = require("cli-table");

//create connection to db
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_db"
})

function displayProducts() {
    //prints the items for sale and their details
    connection.query('SELECT * FROM Products', function (err, res) {
        if (err) throw err;

        var displayTable = new Table({
            head: ["Item ID", "Product Name", "Category", "Price", "Quantity"],
            colWidths: [10, 35, 25, 10, 14]
        });
        for (var i = 0; i < res.length; i++) {
            displayTable.push(
                [res[i].item_id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]
            );
        }
        console.log(displayTable.toString());
        inquirer.prompt([
            {
                type: "input",
                name: "id",
                message: "Enter the ID of the item you would like to purchase:",
                validate: function (value) {
                    if (isNaN(value) == false && parseInt(value) <= res.length && parseInt(value) > 0) {
                        return true;
                    } else {
                        return false;
                    }
                }
            },
            {
                type: "input",
                name: "qty",
                message: "Please enter the amount you would like to purchase:",
                validate: function (value) {
                    if (isNaN(value)) {
                        return false;
                    } else {
                        return true;
                    }
                }
            }
        ]).then(function (ans) {
            var itemChoice = (ans.id) - 1;
            var itemQuantity = parseInt(ans.qty);
            var grandTotal = parseFloat(((res[itemChoice].price) * itemQuantity).toFixed(2));

            //check if quantity is sufficient
            if (res[itemChoice].stock_quantity >= itemQuantity) {
                //after purchase, updates quantity in products
                connection.query("UPDATE Products SET ? WHERE ?", [
                    { stock_quantity: (res[itemChoice].stock_quantity - itemQuantity) },
                    { item_id: ans.id }
                ], function (err, result) {
                    if (err) throw err;
                    console.log("Success! Your total is $" + grandTotal.toFixed(2) + ". Your item(s) will be shipped to you in 3-6 weeks.");
                    additionalItem();
                })
            } else {
                console.log("The requested quantity is not in stock.");
                additionalItem();
            }
        })
    })
}

//asks if they would like to purchase another item
function additionalItem() {
    inquirer.prompt([
        {
            type: "confirm",
            name: "reply",
            message: "Would you like to purchase another item?"
        }
    ]).then(function (ans) {
        if (ans.reply) {
            displayProducts();
        } else {
            console.log("Do come back...");
        }
    });
}

displayProducts();