require 'rails_helper'

describe 'Accessing admin' do

  let!(:user) { create(:user, email: "bob@mail.ru", password: "qweqweqwe") }

  before(:each) do
    login("bob@mail.ru", "qweqweqwe")
  end

  it "doesn't show admin for regular user" do
    expect(page).not_to have_content "Админка"
  end

  it "redirects user to account when he tries to access admin" do
    visit admin_root_path
    expect(page).to have_content "Текущие курсы"
  end

  context "admin user" do
    before(:each) do
      user.add_role :admin
      visit admin_root_path
    end

    it "shows link to admin" do
      expect(page).to have_content "Админка"
    end

    it "shows link to users managment" do
      expect(page).to have_content "Ученики"
    end

  end

  context "editor user" do
    before(:each) do
      user.add_role :editor
      visit admin_root_path
    end

    it "shows link to admin" do
      expect(page).to have_content "Админка"
    end

    it "shows link to users managment" do
      expect(page).not_to have_content "Ученики"
    end

  end

end