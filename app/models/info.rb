# frozen_string_literal: true

class Info
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
end
