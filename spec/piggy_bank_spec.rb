require 'piggy_bank'

describe PiggyBank do

    it "can receive three coins" do
      piggy_bank = PiggyBank.new
      expect {piggy_bank.put_coins(2)}.not_to raise_error
    end

    context "instance_variables" do
      it "total_coins = 0" do
        expect(subject.instance_variable_get(:@total_coins)).to eq(0)
    end

    context "instance_variables" do
    it "total_coins = 2" do
      piggy_bank = PiggyBank.new
      piggy_bank.put_coins(2)
      expect(piggy_bank.total_coins).to eq(2)
    end

    it "added to total" do
      piggy_bank = PiggyBank.new
      piggy_bank.put_coins(2)
      piggy_bank.put_coins(5)
      expect(piggy_bank.total_coins).to eq(7)
    end

    it "respond to a shake" do
      piggy_bank = PiggyBank.new
      expect {piggy_bank.shake}.not_to raise_error
    end

    it { expect(subject.shake).to eq("cling") }
  end
end
end
