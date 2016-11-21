require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test 'empty note' do
    note = Note.new
    refute note.save
  end

  test 'complete note' do
    note = Note.new(title: 'foo', content: 'bar', user: @user)
    assert note.save
  end

  test 'user empty note' do
    note = Note.new(user: @user)
    refute note.save
  end
end
