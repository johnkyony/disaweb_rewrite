require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :poltergeist 
  include Warden::Test::Helpers
  Warden.test_mode!  
end