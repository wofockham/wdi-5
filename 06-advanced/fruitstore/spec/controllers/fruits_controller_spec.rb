require 'rails_helper'

RSpec.describe FruitsController, :type => :controller do
  describe 'GET /fruits/' do
    before do
      get :index
      3.times do |i|
        Fruit.create(:name => "Fruit number #{i}")
      end
    end

    it 'should respond with a status 200' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'should set an instance variable with the fruits in reverse order' do
      expect(assigns(:fruits)).to be
      expect(assigns(:fruits).length).to eq(3)
      expect(assigns(:fruits).first.class).to eq(Fruit)
      expect(assigns(:fruits).first.name).to eq('Fruit number 2')
    end

    it 'should render the fruits index template' do
      expect(response).to render_template('index')
    end
  end
end
