abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  String name;
  int age;

  User(this.name, this.age);

  @override
  String toJson() {
    return '{"name": "$name", "age": $age}';
  }
}

class Product implements Serializable {
  String productName;
  double price;

  Product(this.productName, this.price);

  @override
  String toJson() {
    return '{"productName": "$productName", "price": $price}';
  }
}

void main() {
  User user = User('Alice', 30);
  Product product = Product('Laptop', 1200.99);

  print(user.toJson());
  print(product.toJson());
}
