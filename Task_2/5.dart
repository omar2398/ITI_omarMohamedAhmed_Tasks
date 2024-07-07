class InsufficientFundsException implements Exception {
  String errorMessage() {
    return 'Insufficient funds for this operation';
  }
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount must be greater than zero');
      return;
    }
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be greater than zero');
      return;
    }
    if (amount > balance) {
      print(InsufficientFundsException().errorMessage());
      return;
    }
    balance -= amount;
  }

  void displayBalance() {
    print('Current balance: \$${balance}');
  }
}

void main() {
  BankAccount account = BankAccount(1000);

  account.deposit(500);
  account.withdraw(200);
  account.withdraw(1500); // This will show an insufficient funds message

  account.displayBalance();
}
