class BankAccount {
  String account;
  var balance;

  BankAccount(String accountId) : account = accountId;
  BankAccount.balance(var accountId)
      : balance = 0,
        account = accountId;

  void withDraw(double withdrawalAmount) {
    if (withdrawalAmount <= 0) {
      print("withdrawal amount must be positive");
    }
    if (withdrawalAmount > balance) {
      print("not sufficient balance");
    } else {
      balance = balance - withdrawalAmount;
    }
  }

  void deposit(double amount) {
    balance = balance + amount;
  }

  void displayAccountInfo() {
    print("your id : $account and your balance is : $balance");
  }
}

void main() {
  BankAccount account1 = BankAccount("12345");
  BankAccount account2 = BankAccount.balance("123456");
  account2.deposit(50);
  account2.withDraw(-1);
  account2.displayAccountInfo();
}
