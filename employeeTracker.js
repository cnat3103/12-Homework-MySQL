const mysql = require("mysql");
const inquirer = require("inquirer");
const cTable = require('console.table');


const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "employeeTrackerDB"
});

connection.connect(function(err) {
  if (err) throw err;
  // runSearch();
});

function runSearch() {
    inquirer
      .prompt({
        name: "action",
        type: "rawlist",
        message: "What would you like to do?",
        choices: [
          "View all employees",
          "Add employee",
          "Remove employee",
          "Update employee"
        ]
      })
      .then(function(answer) {
        switch (answer.action) {
        case "View all employees":
          employeeSearch();
          break;
  
        case "Add employee":
          addEmployee();
          break;
  
        case "Remove employee":
          removeEmployee();
          break;
  
        case "Update employee":
          updateEmployee();
          break;
        }
      });
  }

  function employeeSearch() {
        // ENTER SEARCH FOR EVERYTHING
        
          runSearch();
        };


  
