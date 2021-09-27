// CONTOH ILUSTRASI
// https://d17ivq9b7rppb3.cloudfront.net/original/academy/20210709173432673a22d06abf240386f6c927cfd47779.jpeg

class Item {}
 
class Order {
  calculateTotalSum() {}
 
  getItems() {}
 
  getItemCount() {}
 
  addItem(item) {}
 
  deleteItem(item) {}
}
 
class OrderHistory {
  getDailyHistory() {}
 
  getMonthlyHistory() {}
}
 
class OrderPreview {
  printOrder(order) {}
 
  showOrder(order) {}
}
 
const main = () => {
  const item = new Item();
  const order = new Order();
  order.addItem(item);
  const history = new OrderHistory();
  history.getDailyHistory();
  const viewer = new OrderPreview();
  viewer.printOrder(order);
};

main();