import "dart:io";

class BankAccount {
  String Account_Holder_Name;
  String Account_Number;
  num _Balance;

  BankAccount(this.Account_Holder_Name, this.Account_Number, this._Balance);

  deposit() {
    stdout.write("Input the Deposit Ammount : ");
    num diposit_amount = num.parse(stdin.readLineSync()!);
    if (diposit_amount > 0) {
      _Balance += diposit_amount;
      print("After Deposit: Balance: $_Balance");
    }
    else {
      print("Incorrect Diposit Ammount");
    }
  }

  withdraw() {
    stdout.write("Input the Withdraw Ammount : ");
    num withdraw_amount = num.parse(stdin.readLineSync()!);
    if (withdraw_amount <= 0){
      print("Incorrect Ammount");
    }
    else{
      if (withdraw_amount <= _Balance) {
        _Balance -= withdraw_amount;
        print("After Withdrawal: Balance: $_Balance");
      }
      else {
        print("Insufficient Balance");
      }
    }
    }
  displayAccountInfo(){
    print("Account Holder: $Account_Holder_Name Account Number: $Account_Number Balance: $_Balance");
  }
}

main(){
  // Support class এ বলেছে input নিতে, input নিলে কোনো problem নেই এবং Number কাটবে না, তাই input নিয়েছি
  BankAccount Object1 = BankAccount("Rahim", "1001", 5000);
  Object1.displayAccountInfo();
  Object1.deposit();
  Object1.withdraw();
  BankAccount Object2 = BankAccount("Karim", "1002", 8000);
  Object2.displayAccountInfo();
  Object2.deposit();
  Object2.withdraw();
}
