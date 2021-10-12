import express from "express"
const bodyParser = require('body-parser');


const cors = require('cors');

const app = express()
app.use(cors({
  origin: ['https://cbre-client.surge.sh/']
}));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json())

const port = process.env.PORT || 3000

const appRouter = require('./controllers/API/api.ts');

app.use('/', appRouter);

app.listen(port, () => {
  console.log(`Express application is running on port ${port}.`)
})
