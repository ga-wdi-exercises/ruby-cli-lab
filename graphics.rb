$title = "
_______                                    __
|   _   .-----.----.-----.-----.-----.---.-|  |
|.  1   |  -__|   _|__ --|  _  |     |  _  |  |
|.  ____|_____|__| |_____|_____|__|__|___._|__|
|:  |
|::.|
`_______ __
|   _   |__.-----.---.-.-----.----.-----.
|.  1___|  |     |  _  |     |  __|  -__|
|.  __) |__|__|__|___._|__|__|____|_____|
|:  |
|::.|
`---'


"

rows = []
rows << ["Enter a Transaction", "1"]
rows << ["Transactions and Balance", "2"]
rows << ["Delete a Transaction", "3"]
rows << ["Edit a Transaction", "4"]
rows << ["Sort transactions", "4"]
rows << ['Quit program', 'quit']
$starting_options = Terminal::Table.new :title => "Welcome! Select an account", :headings => ['Command', 'Code' ], :rows => rows, :style => {:width => 40}


rows = []
$account = Terminal::Table.new :title => "CHECKING", :headings => ['Date', 'Payee', 'Amount' ], :rows => rows, :style => {:width => 75}

rows = []
rows << ["Debit or add money", "debit"]
rows << ["Credit or \nremove money", "credit"]
rows << ["View Account History", "history"]
rows << ["Tranfer between\nAccounts", "transfer"]
$commands = Terminal::Table.new :title => "Comands", :headings => ['Command', 'Code'], :rows => rows, :style => {:width => 75, :all_separators => true}
