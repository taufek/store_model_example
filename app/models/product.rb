# frozen_string_literal: true

class Product < ApplicationRecord
  auditable

  serialize :info
end
