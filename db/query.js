const pg = require('pg')

const pool = new pg.Pool()

module.exports = {
    query: function (text, params, callback) {
        return pool.query(text, params, callback)
    }
}