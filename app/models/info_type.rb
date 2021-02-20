# frozen_string_literal: true

class InfoType < ActiveModel::Type::Value
  def cast_value(value)
    case value
    when String
      decoded = ActiveSupport::JSON.decode(value) rescue nil
      Info.new(decoded) unless decoded.nil?
    when Hash
      Info.new(value)
    when Info
      value
    end
  end

  def serialize(value)
    case value
    when Hash, Info
      ActiveSupport::JSON.encode(value)
    else
      super
    end
  end

  def changed_in_place?(raw_old_value, new_value)
    cast_value(raw_old_value) != new_value
  end
end
