# frozen_string_literal: true

class Product < ApplicationRecord
  audited

  attribute :info, InfoType.new
end
