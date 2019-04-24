describe 'Taking a course' do

  let!(:user) { create(:user, email: "bob@mail.ru", password: "qweqweqwe") }

  before(:each) do
    login("bob@mail.ru", "qweqweqwe")
  end

  context "can start and go through course" do

    before(:each) do
      course = create(:course, title: "Ruby on Rails")
      task = create(:task, course: course, title: "Простой контроллер")
    end

    it "can start course" do
      visit dashboard_root_path
      click_link "Начать курс"
      expect(page).to have_content "Простой контроллер"
    end

context "can start and go through course" do

    before(:each) do
      course = create(:course, title: "Ruby on Rails")
      task = create(:task, course: course, title: "Простой контроллер")
    end

    it "can start course" do
      visit dashboard_root_path
      click_link "Начать курс"
      expect(page).to have_content "Простой контроллер"
    end

  end
   context "sends a task for review" do

      before(:each) do
        visit dashboard_root_path
        click_link "Начать курс"
        click_link "Простой контроллер"
        fill_in "user_task_pull_request_url", with: "http://github.com/pulls/1"
        click_button "Добавить PR"
        click_link "На проверку"
      end

      it "updates task journal" do
        expect(page).to have_content "Отправлено на проверку"
      end

      it "doesn't show mentors buttons" do
        expect(page).not_to have_content "Принять"
      end
    end

  end

end