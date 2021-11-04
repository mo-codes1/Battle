feature "Players can put in their names" do
    scenario "Players can enter their names" do
    sign_in_and_play
       expect(page).to have_content 'Player 1 vs Player 2'
    end
end