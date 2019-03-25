
const pgp = require('pg-promise')();

const options = {
    host: 'localhost',
    database: 'restaurants-app'
};


const db = pgp(options);



db.any('SELECT * FROM users')
    .then(function(data) {
        console.log(data);
    })
    .catch(function(error) {
        // error;
    });