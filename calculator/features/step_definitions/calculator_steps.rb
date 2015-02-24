Given /^the input "([^"]*)"$/ do |input|
@input = input # express the regexp above with the code you wish you had
end
When /^the calculator is run$/ do
@output = `ruby calc.rb #{@input}`
raise('Command failed!') unless $?.success? # express the regexp above with the code you wish you had
end
Then /^the output should be "([^"]*)"$/ do |expected_output|
@output.should == expected_output # express the regexp above with the code you wish you had
end