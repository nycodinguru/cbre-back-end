import express from "express"

import Customers from '../Models/customers'
const router = express.Router()


router.get('/customers/:page', Customers.getCustomers, (req: express.Request, res: express.Response) => {
  const allCustomers = res.locals.customers;
  res.json(allCustomers);
});

router.post('/customer', Customers.createCustomer, (req: express.Request, res: express.Response) => {
  const { customer } = res.locals;
  res.json(customer);
});

router.put('/customer', Customers.updateCustomer, (req: express.Request, res: express.Response) => {
  const customer = req.body;
  res.json(customer);
});

router.delete('/customer/:id', Customers.destroy, (req: express.Request, res: express.Response) => {
  const delCustomer = req.params.id;
  res.json(delCustomer);
});

router.get('/customer/:id', Customers.customer, (req: express.Request, res: express.Response) => {
  const { customer } = res.locals;
  res.json(customer);
});

module.exports = router;
