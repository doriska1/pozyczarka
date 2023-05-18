# frozen_string_literal: true

describe 'sample spec' do
  it 'true is true' do # it or test
    expect(true).to eq true
  end

  it 'true is not true' do # xit - test się nie wykona
    expect(true).not_to eq false
  end
end

describe Item do
  it 'creates item with name' do
    item = described_class.create(name: 'book')
    expect(item.name).to eq 'book'
  end
end

context 'when name not passed' do
  before do
    Item.create(name: 'ball')
  end

  it 'does create item' do
    expect(Item.count).to eq 1
  end

  it 'does not create item' do
    expect(Item.count).to eq 0
  end
end
