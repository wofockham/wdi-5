require 'rails_helper'

RSpec.describe FruitsController, :type => :controller do
  describe 'GET /fruits' do
    before do
      3.times do |i|
        Fruit.create(:name => "Fruit number #{i}")
      end
    end

    describe 'as HTML' do
      before do
        get :index
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

    describe 'as JSON' do
      before do
        get :index, :format => :json
      end

      it "should respond with a status 200" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "should give content type as JSON" do
        expect(response.content_type).to eq('application/json')
      end

      it "should parse as valid JSON" do
        # You are not expected to understand this.
        expect( lambda { JSON.parse(response.body) } ).to_not raise_error
      end

      it "should have the name of the fruit in the JSON" do
        fruits = JSON.parse(response.body)
        expect(fruits.length).to eq(3)
        expect(fruits.first["name"]).to eq("Fruit number 2")
      end
    end
  end

  describe 'POST /fruits' do
    describe "with a valid name" do
      before do
        post :create, { :name => 'Strawberry' }
      end

      it 'should redirect to #show' do
      end

      it 'should increase the number of Fruit' do
      end
    end

    describe "without a name" do
      before do
        post :create, {}
      end

      it 'should render the new template' do
      end

      it 'should not increase the number of Fruit' do
      end
    end
  end
end



















