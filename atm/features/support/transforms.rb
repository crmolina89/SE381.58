Transform /^(£|\$|€)(\d+)$/ do | currency_symbol, digits |
Currency::Money.new(digits, currency_symbol)
end

CAPTURE_CASH_AMOUNT = Transform /^\$(\d+)$/ do |digits|
digits.to_i
end