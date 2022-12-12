const express = require('express');
const cors = require('cors');
const {Client} = require('pg');

const config = require('./config')[process.env.NODE_ENV||"dev"];
const port = config.port;
const client = new Client ({connectionString: config.connectionString});
client.connect();

const app = express();
app.use(cors());
app.use(express.json());

//Routes
app.get('/', (req,res)=>{

    res.status(200).send('Hello World');
});

app.get('/api/products', (req, res) => {
    
    async function fromAll() {
        try {
          client.query(`SELECT product.id, name, size, color, type
                        FROM product_entry
                        INNER JOIN product
                        ON product_entry.product_id = product.id
                        INNER JOIN size
                        ON product_entry.size_id = size.id
                        INNER JOIN color
                        ON product_entry.color_id = color.id
                        INNER JOIN product_category
                        ON product_entry.category_id = product_category.id`)
          .then(result =>{
            res.status(200).send(result.rows)
          })
        } catch (error) {
          console.error(error);
          res.status(404).send("Page Not Found")
        }
      }
    fromAll();

})

app.get('/api/categories', (req, res) => {
    
  async function fromAll() {
      try {
        client.query(`Select * FROM product_category`)
        .then(result =>{
          res.status(200).send(result.rows)
        })
      } catch (error) {
        console.error(error);
        res.status(404).send("Page Not Found")
      }
    }
  fromAll();

})

app.get('/api/products/:type', (req, res) => {
  let id = `'${req.params.type}'`;
  
  client.query(`SELECT product.id, name, size, color, type
  FROM product_entry
  INNER JOIN product
  ON product_entry.product_id = product.id
  INNER JOIN size
  ON product_entry.size_id = size.id
  INNER JOIN color
  ON product_entry.color_id = color.id
  INNER JOIN product_category
  ON product_entry.category_id = product_category.id
  WHERE type=${id} ORDER BY id ASC`)
  .then(result => {
    res.status(200).send(result.rows)
  })
  .catch(e => console.error(e.stack))
});


app.listen(port,()=>{
    console.log(`
    Server Status: Live
    Server Port: ${port}
    Waiting For Requests`
    )
});