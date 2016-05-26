Then(/^I wait for the "([^"]*)" to appear$/) do |id|
wait_for do
  query("* id:'logo'")
  query('android.support.v7.widget.ActionMenuPresenter$OverflowMenuButton')
  query(" * id:'action_bar'")
  sleep(1)
  query("android.support.v7.widget.AppCompatTextView text:'Would you like to receive push notifications from BBC News? You can change your mind any time in the app Settings.'")
  touch("* id:'push_yes'")
  sleep(1)
#  wait_poll(timeout: 20,
#          timeout_message: 'Unable to find "My News"',
#          until_exists: "* marked:'Top Stories'")

#  query("* id:'action_context_bar'")
#  query("* id:'Title'")
#  query("* id:'logo'")
  #elements_exist(["* id:'action_context_bar'", "* id:'title'", "* id:'logo'"])
  #  "button marked:'Menu'"
  #  "button marked:'Overflow'"
  #  button = ("Menu")
  #wait_for_elements_exist(["android.widget.ProgressBar"], :timeout => 30)
  end
end
Given(/^I Tap My News$/) do
#touch("button marked :'My News'")
tap_mark 'My News'
query("* id:'menu_edit_followed'")
end
Then(/^I should be in the My News index$/) do
sleep(4)
end
Given(/^I Tap OK, let's get started$/) do
#  tap_mark 'Edit My News'
  #tap_mark 'More options'
  tap_mark 'button'
  #touch("button marked :'Most Read'")
end
Then(/^I should be in the Add Topics Page$/) do
  sleep (5)
end
Given(/^I add a Topic in the Add Topic Page$/) do
  tap_mark 'button_add'
  sleep (5)
  tap_mark 'UK'
  sleep (5)
#  require 'json'
#file = File.read('addtopics.json')
#data_hash = JSON.parse(file)
#data_hash['name']
# => "UK"
#data_hash.keys
# => ["contentId", "name"]
end
Then(/^the added topic should be in My News$/) do
  #perform_action('drag_coordinates', 1188, 182, 789, 364)
  wait_poll(timeout: 20,
          timeout_message: 'Unable to find "My News"',
          until_exists: "* marked:'My News'") do
  perform_action('drag', 25, 45, 50, 50, 5)
  perform_action('drag', 25, 45, 50, 50, 5)
  perform_action('drag', 25, 45, 50, 50, 5)
  #scroll "pf_tab_row", left
  #perform_action('drag_coordinates', 720, 84, 11205, 84)
#  def pf_tab_row
#  if id (pf_tab_row)
#  #id  = true
#  scroll 'pf_tab_row', :left
# tap_mark 'My News'
#  sleep (15)
#perform_action('swipe', 'left')
sleep(5)
    end
end
