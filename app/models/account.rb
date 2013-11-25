# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  balance    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ActiveRecord::Base
  attr_accessible :balance, :user_id
  belongs_to :user
  has_many :transactions
end
