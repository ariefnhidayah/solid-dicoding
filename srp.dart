class Item {}
 
class Order {
  void calculateTotalSum() {}
 
  void getItems() {}
 
  void getItemCount() {}
 
  void addItem(Item item) {}
 
  void deleteItem(Item item) {}
}
 
class OrderHistory {
  void getDailyHistory() {}
 
  void getMonthlyHistory() {}
}
 
class OrderViewer {
  void printOrder(Order order) {}
 
  void showOrder(Order order) {}
}

void main() {
  final item = Item();
  final order = Order();
  order.addItem(item);
  final history = OrderHistory();
  history.getDailyHistory();
  final viewer = OrderViewer();
  viewer.printOrder(order);
}