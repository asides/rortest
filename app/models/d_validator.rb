class DValidator < ActiveModel::Validator
  def validate(record)
    current_default = record.class.where(is_default: true).first
    if current_default
      if record.is_default and current_default.id != record.id
        record.errors[:base] << "Only one record may be default! Current default - id:#{current_default.id} name:#{current_default.name}"
      end
    end
  end
end