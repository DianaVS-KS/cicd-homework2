const mysql = require('mysql');

var connection = mysql.createConnection({
    host: "cicd-db.ccc0kj4y7avt.us-east-2.rds.amazonaws.com",
    user: "admin",
    password: "amazonrdsdiana",
    database: "HW2",
    port: 3306,
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("Database Connected!");
});

module.exports = connection;