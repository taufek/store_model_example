# frozen_string_literal: true

RSpec.describe Product, type: :model do
  context 'create' do
    it 'creates Product' do
      product = Product.new
      product.info = { name: 'Dyson' }
      product.save

      expect(product).to be_persisted
    end
  end

  context 'update' do
    let(:product) do
      product = Product.new
      product.info = { name: 'Dyson' }
      product.save
      product
    end

    it 'updates Product' do
      product.info = { name: 'Tesla' }
      product.save

      expect(product).to be_persisted
    end
  end
end
