var mysql = require("mysql");

var inquirer = require("inquirer");

var consoletable = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",

  // Connection port
  port: 3306,

  // Username
  user: "root",

  // Password
  password: "Lem0nworld19",
  database: "bamazon_db"
});

// 
connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id: " + connection.threadId + "\n");
  displayCatalog();
});

// Function to display all available items in store catalog. Include id's, names, and prices.
function displayCatalog() { 
    connection.query("SELECT products.item_id, products.product_name, products.price FROM products", function (err, res) {
        if (err) throw err;
        console.log("Check out what's in store: \n")
        for (let i = 0; i < res.length; i++) {
            console.table(res[i]);
        }
        buyPrompt();
    });
};

//Function to prompt the user if what item they'd like to buy and how many. 
function buyPrompt() {
    inquirer.prompt([
        {
            type: "input",
            message: "What is the item_id of the product you'd like to purchase?",
            name: "item",
            validate: function (value) {
                if (isNaN(value) === false) {
                    return true;
                }
                return false;
                console.log('Please pick a valid item');
            }
        },
        {
            type: "input",
            message: "How many would you like to buy?",
            name: "quantity",
            validate: function (value) {
                if (isNaN(value) === false) {
                    return true;
                }
                return false;
                console.log('Please pick a valid item');
            }
        },
    ])
    .then(function(inquirerResponse) {
      console.log("This is what you'd like to buy: " + inquirerResponse.item + "\n");
      console.log("This is how many you'd like to buy: " + inquirerResponse.quantity);
    });
    connection.end();
}

//Function to check if catalog has enough units to allow purchase. Will display "Sorry, this item is out of stock", if not enough inventory exists or will fulfill the customer's order. Update the SQL Database. 

//Function to show the customer the total cost of their purchase? 
