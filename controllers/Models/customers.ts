const db = require('../../db/setup.js');

type ModelFucntion = (req, res, next) => void

interface CustomersType {
  customer: ModelFucntion
  getCustomers: ModelFucntion
  createCustomer: ModelFucntion
  destroy: ModelFucntion
  updateCustomer:  ModelFucntion
}

const Customers:CustomersType = {
  customer: null,
  getCustomers: null,
  createCustomer: null,
  destroy: null,
  updateCustomer: null,
};

Customers.customer = (req, res, next) => {
  const { id } = req.params;
  db
    .oneOrNone('SELECT * FROM customers WHERE customers.id = $1', [id])
    .then(customer => {
      res.locals.customer = customer;
      next();
    })
    .catch(err => console.log(err));
};

Customers.getCustomers = (req, res, next) => {
  const { page } = req.params;
  const offSet = Number.parseInt(page) * 10;
  db
  .manyOrNone('SELECT * FROM customers ORDER BY customers.id DESC LIMIT 10 OFFSET $1', [offSet])
  .then(customers => {
      res.locals.customers = customers;
      next();
    })
    .catch(err => console.log(err));
};

Customers.updateCustomer = (req, res, next) => {
  const { id, firstname, lastname, homeaddress, birthday } = req.body;
  db
    .oneOrNone('UPDATE customers SET firstname = $1, lastname = $2, homeaddress = $3, birthday = $4 WHERE id = $5 RETURNING *', [
      firstname,
      lastname,
      homeaddress,
      birthday,    
      id,
    ])
    .then(customer => {
      res.locals.customer = customer;
      next();
    })
    .catch(err => console.log(err));
};

Customers.createCustomer = (req, res, next) => {
  const { firstname, lastname, homeaddress, birthday } = req.body;
  db
    .one('INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ($1, $2, $3, $4) RETURNING *', [
      firstname,
      lastname,
      homeaddress,
      birthday, 
    ])
    .then( newCustomer => {
      res.locals.customer = newCustomer;
      next();
    })
    .catch(err => console.log(err));
};

Customers.destroy = (req, res, next) => {
  db
    .none('DELETE FROM customers WHERE id = $1', [req.params.id])
    .then(() => {
      next();
    })
    .catch(error => {
      console.log('error encountered in posts.destroy. error:', error);
    });
};

export default Customers;
