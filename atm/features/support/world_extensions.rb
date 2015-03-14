module KnowsTheDomain
def my_account
@my_account ||= Account.create!(:number => "test", :balance => 0)
end
def cash_slot
@cash_slot ||= CashSlot.new
end
def teller
@teller ||= Teller.new(cash_slot)
end
end
World(KnowsTheDomain)

class UserInterface
include Capybara::DSL
def withdraw_from(account, amount)
	Sinatra::Application.account = account
visit '/'
fill_in 'Amount', :with => amount
click_button 'Withdraw'
end
end

module KnowsTheUserInterface
class UserInterface
def withdraw_from(account, amount)
end
end
def my_account
@my_account ||= Account.new
end
def cash_slot
@cash_slot ||= CashSlot.new
end
def teller
@teller ||= UserInterface.new
end
end
World(KnowsTheUserInterface)

def cash_slot
Sinatra::Application.cash_slot
end
def teller
@teller ||= UserInterface.new
end
end
World(KnowsTheUserInterface)
