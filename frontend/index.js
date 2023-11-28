const pg= require('pg');

class dbconnection {
     constructor() {
     this.client = new pg.Client({ 
         user: 'sdtgyjsr',
         password: 't5H XQYKFymr_p50Jwa7ddGKhBeQY406', 
         database: 'sdtgyjsr',
         host: 'suleiman.db.elephantsql.com', 
         port: '5432',
        });

        this.client.connect(err => {
             if (err) {
            console.error('Error al conectarse a la base de datos:', err);
           } else {
             console.log('Conectado a la base de datos');
      }
    });
   }
async login (data) {
const query = 'SELECT * FROM users WHERE email = $1`; 
const values = [data.email];

try {
const result = await this.client.query(query, values);