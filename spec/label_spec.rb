require_relative '../classes/label'
require_relative '../classes/item'

describe 'Label' do
  before :each do
    @label = Label.new('Angels & Demons', 'Red')
  end

  context 'when it is instantiated using the new keyword' do
    it 'should create a new Label object' do
      expect(@label).to be_instance_of Label
    end
  end

  context 'when we try to read its exposed variables' do
    it 'should be able to read the title value' do
      expect(@label.title).to eq 'Angels & Demons'
    end

    it 'should be able to read the color value' do
      expect(@label.color).to eq 'Red'
    end

    it 'should be able to read the items value' do
      expect(@label.items).to eq []
    end
  end

  context 'when item is added to the item array' do
    it 'should be able to access the item added' do
      @item = Item.new('2001/02/03')
      @label.add_item(@item)
      expect(@label.items).to eq [@item]
    end
  end
end
