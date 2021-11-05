feature "Player 1 has attacked player 2" do
    scenario "Player 1 has attacked player 2" do
    sign_in_and_play
    expect(page).to have_content "Player 1's hit points"
    end
end

feature "Player 2's hit points have reduced by 10" do
    scenario "Player 2 hit points now become 90" do
    sign_in_and_play
    expect(page).to have_content "Player 2's hit points"
    end
end