require_relative './spec_helper'
require_relative '../bank'

describe Bank do
  let(:bank) {Bank.new('TDD Bank')}

  describe '.new' do
    it 'creates a new Bank object' do
      expect(bank).to_not eq nil
    end

    it 'has a name' do
      expect(bank.name).to eq 'TDD Bank'
    end

    it 'has no accounts' do
      expect(bank.accounts.count).to eq 0
    end
  end

  describe 'with an account' do
    before(:each) {bank.create_account('Jimi', 200)}
    describe '#create_account' do
      it 'creates an account' do
        expect(bank.accounts['Jimi']).to eq 200
      end
    end

    describe '#deposit' do
      it 'deposits money into the client\'s account' do
        bank.deposit('Jimi', 300)
        expect(bank.accounts['Jimi']).to eq 500
      end
    end

    describe '#withdraw' do
      it 'subtracts an amount from the client account' do
        bank.withdraw('Jimi', 50)
        expect(bank.balance('Jimi')).to eq 150
      end

      it 'ignores requests for withdrawals exceeding the balance' do
        bank.withdraw('Jimi', 1_000_000_000)
        expect(bank.balance('Jimi')).to eq 200
      end
    end

    describe '#balance' do
      it 'returns the balance for the client' do
        expect(bank.balance('Jimi')).to eq 200
      end
    end
  end
end













