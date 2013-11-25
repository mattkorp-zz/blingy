# == Schema Information
#
# Table name: transactions
#
#  id         :integer          not null, primary key
#  amount     :integer
#  account_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Transaction < ActiveRecord::Base
  attr_accessible :account_id, :amount
  belongs_to :account
end
