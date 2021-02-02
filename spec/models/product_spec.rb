# frozen_string_literal: true

RSpec.describe Product, type: :model do
  it 'creates Product' do
    product = Product.new
    product.info = { name: 'Dyson' }
    product.save

    expect(product).to be_persisted
  end
end
