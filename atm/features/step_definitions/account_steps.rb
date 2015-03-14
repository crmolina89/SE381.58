Given /^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my account$/ do |amount|
my_account.credit(amount)
my_account.balance.should eq(amount),
"Expected the balance to be #{amount} but it was #{my_account.balance}"
end

Then /^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
eventually { my_account.reload.balance.should eq(amount) }
end

Given /^my account has been credited with (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
	sleep 1
	my_account.credit(amount)
end