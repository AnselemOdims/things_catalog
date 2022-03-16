require_relative '../label'

describe 'Label' do
  before :each do 
    @label = Label.new('Angels & Demons', 'Red')
  end

  context 'when it is instantiated using the new keyword' do
    it 'should create a new Label object' do
      expect(@label).to be_instance_of Label
    end
  end
end