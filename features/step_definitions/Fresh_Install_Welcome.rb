Then(/^I wait for the Top Stories to appear$/) do
  wait_for do
    query("* id:'logo'")
    query("* id:'pf_tab_row'")
    query('android.support.v7.widget.ActionMenuPresenter$OverflowMenuButton')
    query(" * id:'action_bar'")
    query("android.support.v7.widget.AppCompatTextView")
    query("android.support.v7.widget.AppCompatTextView text:'Would you like to receive push notifications from BBC News? You can change your mind any time in the app Settings.'")
    tap_when_element_exists("* id:'push_yes'")
    sleep(1)
  #  wait_poll(timeout: 5,
  #          timeout_message: 'Unable to find "My News"',
  #          until_exists: "* marked:'Top Stories'")
  end
end
Given(/^I Tap the My News index$/) do
    tap_when_element_exists("android.support.v7.widget.AppCompatTextView text:'My News'") #or tap_mark 'My News'
    query("* id:'menu_edit_followed'")
    #touch(nil, :offset => {:x => 0, :y => 108})
end
Then(/^the My News index is displayed$/) do
        query("android.support.v7.widget.AppCompatTextView text:'My News'")#query("BNRibbonLabel marked :'My News'") #query("label marked:'My News'")
        query("* id:'title'")
        query("* id:'menu_edit_followed'") #query("BNBarButton marked :'Edit My News'")
        query("* id:'button'")
        sleep(2)
end
Given(/^I Tap OK, lets get started$/) do
      #tap_mark "'OK, let's get started'"
      #tap_mark 'More options'
      #tap_mark 'button'
      #touch("button marked :'OK, let.s get started'")
      touch("* id:'button'")
end
Then(/^the Edit My News index is displayed$/) do
      query("android.support.v7.widget.AppCompatTextView text:'Add Topics'")
      query("android.support.v7.widget.AppCompatTextView text:'My Topics'")
      sleep (2)
end
Given(/^I add a Topic in the Edit My News Page$/) do
    tap_mark 'UK'
    sleep(1)
    tap_mark 'Scotland'
    sleep(2)
    tap_mark 'Northern Ireland'
    wait_poll(timeout: 5,
            timeout_message: 'Unable to find "Topics"',
            until_exists: "* marked:'text'")
    query(" * id:'wt_hint_message'")
    tap_when_element_exists("* id:'wt_close_button'")
    sleep(1)
      #  require 'json'
      #file = File.read('addtopics.json')
      #data_hash = JSON.parse(file)
      #data_hash['name']
      # => "UK"
      #data_hash.keys
      # => ["contentId", "name"]
end
Then(/^the added Topic should be in My Topics$/) do
    tap_when_element_exists("android.support.v7.widget.AppCompatTextView text:'My Topics'")
    #query("BBCFollowTopicTableViewCell marked :'Europe'")
    query("* id:'text'")
    tap_when_element_exists("* id:'logo'")
    sleep(3)
end
Given(/^I scroll the ribbon then Tap the My News index$/) do
      tap_when_element_exists("* id:'logo'")
      tap_mark 'My News'
  #    scroll "BNRibbonView", :left
      sleep(2)
end
Then(/^I capture a screenshot$/) do
   screenshot({:prefix => "Screenshots/Top Stories", :name=>"sc_#{Time.now.to_i}",})
end
Given(/^I Tap the LIVE index$/) do
   perform_action('drag', 25, 45, 50, 50, 5)
   tap_mark 'LIVE'
   query("* id:'item_layout_name'")
   query("* id:'itemview_root'")
   query("* id:'media_media_view'")
   query("* id:'list_container'")
   query("* id:'flow'")
   query("* id:'media_display'")
   query("* id:'media_controls_stop'")
   query("* id:'media_play'")
   sleep(5)
   tap_when_element_exists("bbc.mobile.news.v3.media.MediaView") #touch video player to see progress bar  #touch("* id:'media_play'") #plays video
   query("* id:'media_controls_controls'")
   #touch("* id:'media_controls_play_pause'") #pauses video
   #touch("* id:'media_controls_stop'") #stops video
   #touch("* id:'media_controls_caption'")
   #touch("* id:'media_controls_progress'")
   #touch("* id:'media_controls_fullscreen'")
   sleep(15)
end
And(/^I Tap Play video in the LIVE channel$/) do
   tap_mark 'Top Stories'
   element_exists("* id:'logo'")
   double_tap "* id:'logo'"
   sleep(2)
   scroll("recyclerview", :down)
   sleep(2)
  #double_tap "view marked:'blocks-title-image-view'"
  #wait_poll(:until_exists => "BNContainerModuleScrollView", :timeout => 10) do
  #scroll("bn-cell-view'", :down)
   touch("* id: 'item_layout_name'")
   sleep(2)
   touch("* id:'media_play'")
   sleep(60)
   #end
end
