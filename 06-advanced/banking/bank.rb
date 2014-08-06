class Bank
  attr_reader :name, :accounts

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def create_account(account_name, deposit)
    @accounts[account_name] = deposit
  end

  def deposit(account_name, amount)
    @accounts[account_name] += amount
  end

  def balance(account_name)
    @accounts[account_name]
  end

  def withdraw(account_name, amount) # Not an effective form of contraception
    @accounts[account_name] -= amount if amount <= @accounts[account_name]
  end
end













