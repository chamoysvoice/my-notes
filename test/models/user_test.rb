require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'empty user' do
    user = User.new
    refute user.save
  end
end
