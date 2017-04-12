require('pry')
require('terminal-table')
require_relative "data"
require_relative "models/transaction"
require_relative "models/savings"
require_relative "models/checking"
checking = data[:checking]
savings = data[:savings]


binding.pry
