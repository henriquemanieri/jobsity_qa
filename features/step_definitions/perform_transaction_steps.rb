Quando(/^eu acessar a página de transações$/) do
  HomePage.new.access_include_transaction
end

Quando(/^realizar uma transação com um cliente com saldo$/) do
  @transaction = IncludeTransactionPage.new
  @transaction.make_transaction
end

Entao(/^devo visualizar uma mensagem de sucesso que a transação foi feita$/) do
  @transaction.confirm_transaction
end
