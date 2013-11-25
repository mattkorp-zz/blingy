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

require 'spec_helper'

describe Transaction do
  pending "add some examples to (or delete) #{__FILE__}"
end
