var accounts = {
  checking: {
    balance: 0,
    deposit: function (amount) {
      accounts.checking.balance += amount;
    },
    withdraw: function (amount) {
      if (amount <= accounts.checking.balance) {
        accounts.checking.balance -= amount;
      } else if (amount <= accounts.available()) {
        // Withdraw the overdraft from the other account.
        accounts.savings.balance -= (amount - accounts.checking.balance);
        accounts.checking.balance = 0;
      }
    }
  },

  savings: {
    balance: 0,
    deposit: function (amount) {
      accounts.savings.balance += amount;
    },
    withdraw: function (amount) {
      if (amount <= accounts.savings.balance) {
        accounts.savings.balance -= amount;
      } else if (amount <= accounts.available()) {
        // Withdraw the overdraft from the other account.
        accounts.checking.balance -= (amount - accounts.savings.balance);
        accounts.savings.balance = 0;
      }
    }
  },

  available: function () {
    return accounts.checking.balance + accounts.savings.balance;
  }
};

var ATM = {
  init: function () {
    // Set up our events.
    ATM.savings.depositButton.on('click', ATM.savings.deposit);
    ATM.savings.withdrawButton.on('click', ATM.savings.withdraw);
    ATM.checking.depositButton.on('click', ATM.checking.deposit);
    ATM.checking.withdrawButton.on('click', ATM.checking.withdraw);

    // Initialize the UI.
    ATM.update();
  },

  update: function () {
    // Display the current balances.
    ATM.savings.balance.text('$' + accounts.savings.balance);
    ATM.checking.balance.text('$' + accounts.checking.balance);

    if (accounts.savings.balance <= 0) {
      ATM.savings.frame.addClass('zero');
    } else {
      ATM.savings.frame.removeClass('zero');
    }

    if (accounts.checking.balance <= 0) {
      ATM.checking.frame.addClass('zero');
    } else {
      ATM.checking.frame.removeClass('zero');
    }
  },

  // Returns the current input for the selected field and clears the input.
  amount: function (account) {
    if (account !== 'savings' && account != 'checking') return null; // Invalid account!

    var n = ATM[account].amountField.val();

    ATM[account].amountField.val('');

    n = parseFloat(n);
    if (isNaN(n)) return 0;
    else return n;
  },

  savings: {
    // DOM nodes.
    frame: $('#savingsAccount'),
    depositButton: $('#savingsDeposit'),
    withdrawButton: $('#savingsWithdraw'),
    amountField: $('#savingsAmount'),
    balance: $('#balance2'),

    deposit: function () {
      var amount = ATM.amount('savings');
      if (amount) {
        accounts.savings.deposit(amount);
      }
      ATM.update();
    },
    withdraw: function () {
      var amount = ATM.amount('savings');
      if (amount) {
        accounts.savings.withdraw(amount);
      }
      ATM.update();
    }
  },
  checking: {
    // DOM nodes.
    frame: $('#checkingAccount'),
    depositButton: $('#checkingDeposit'),
    withdrawButton: $('#checkingWithdraw'),
    amountField: $('#checkingAmount'),
    balance: $('#balance1'),

    deposit: function () {
      var amount = ATM.amount('checking');
      if (amount) {
        accounts.checking.deposit(amount);
      }
      ATM.update();
    },
    withdraw: function () {
      var amount = ATM.amount('checking');
      if (amount) {
        accounts.checking.withdraw(amount);
      }
      ATM.update();
    }
  }
}

ATM.init();