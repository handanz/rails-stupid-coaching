require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit ask_url

    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields to a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end
end
