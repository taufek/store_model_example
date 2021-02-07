# frozen_string_literal: true

class Info
  include StoreModel::Model

  attribute :name, :string

  def init_with(*)
    self
  end

  def encode_with(*)
  end
end
