feature 'Hit points' do
    scenario 'Show the players HP' do
    sign_in_and_play
    expect(page).to have_content "Player 1's hit points"
    expect(page).to have_content "Player 2's hit points"
    end
end