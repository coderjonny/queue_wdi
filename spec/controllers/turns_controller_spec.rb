require 'rails_helper'

RSpec.describe TurnsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the turns into @turns" do
      Turn.destroy_all
      turn1, turn2 = Turn.create!(name: 'Kaitlin'), Turn.create!(name: 'jonny')

      get :index
      expect(assigns(:turns)).to match_array([turn1, turn2])
    end

    xit "should able to show the correct instructors and TAs for the day" do
      get :index
      expect(assigns(:office_hours_helpers)).to eq('alfonso')
    end
  end

  describe "creating a #new turn" do
    before(:each) do
      get :new
    end

    it { should respond_with(:success) }
    it { should render_template(:new) }
  end
end
