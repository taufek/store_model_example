# frozen_string_literal: true

class Product < ApplicationRecord
  audited

  attribute :info, Info.to_type
end
