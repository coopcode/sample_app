include ApplicationHelper

RSpec::Matchers.define :have_error_message do |message|
	match do |pages|
		page.should have_selector('div.alert.alert-error', text: 'Invalid')
	end
end