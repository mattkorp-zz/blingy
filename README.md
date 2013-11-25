TODO make this super cool app

user
-email
-password
has secure password (i hope)
has many accounts

account
-balance
-user_id
has many transactions
belongs to user

transactions
- id
- amount
- account_id
belongs to account