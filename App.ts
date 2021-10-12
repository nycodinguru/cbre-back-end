import express from "express"
const bodyParser = require('body-parser');
require('dotenv').config()

const cors = require('cors');

const app = express()

const whitelist = ["https://cbre-client.surge.sh", "http://cbre-client.surge.sh/"]

const corsOptions = {
  origin: (origin, callback) => {
    if (whitelist.includes(origin)) {
      callback(null, true)
    } else {
      callback(new Error())
    }
  }
}

app.use(cors(corsOptions));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json())

const port = process.env.PORT || 3001

const appRouter = require('./controllers/API/api.ts');

app.use('/', appRouter);

app.listen(port, () => {
  console.log(`Express application is running on port ${port}.`)
})
