# CBRE Server

#### Get it running locally

- run `npm i` in root folder to install all dependencies
- run `createdb cbre` to create database for the server
- run `psql -f './db/schema.sql'` to create the cusomters table and seed the new database
- create `.env` file in the root of the project folderadd these environment variables:
  `REACT_APP_NODE_ENV=development REACT_APP_APPLICATION_URL=http://localhost:3001`
