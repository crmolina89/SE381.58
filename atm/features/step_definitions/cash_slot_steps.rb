When /^I request (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
teller = Teller.new
teller.withdraw_from(my_account, amount)
end

Then /^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/ do |amount|
cash_slot.contents.should == amount
end