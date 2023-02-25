# frozen_string_literal: true

module ListsHelper
  def list_classes(list_id, params_id)
    classes = 'mb-2 flex space-between align-center'
    classes + ' active' if list_id == params_id.to_i
    classes
  end
end
