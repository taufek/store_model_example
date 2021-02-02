# frozen_string_literal: true

class Product < ApplicationRecord
  audited# except: :info

  attribute :info, Info.to_type
end
