class FinancialTransaction
  attr_reader :to, :from, :amount
  attr_accessor :completed

  def initialize(to, from, amount, completed)
    @to = to
    @from = from
    @amount = amount
    @completed = completed
  end
end

transaction = FinancialTransaction.new("Caixa", "Nubank", 300.50, true)
p transaction
