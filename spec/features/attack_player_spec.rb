feature "Player 1 has attacked player 2" do
    scenario "Player 2 ahs lost HP" do
    sign_in_and_play
    expect(page).to have_content 'Jacob attacked Mo'
    end
end

feature "Player 2 hp has decreased by 10" do
  scenario "Player 2 has lost health" do
    sign_in_and_play
    expect(page).to have_content 'Mo HP = 90'
  end
end 