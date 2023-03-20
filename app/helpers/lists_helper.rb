# frozen_string_literal: true

module ListsHelper
  def list_classes(list_id, params_id)
    classes = 'mb-2 flex justify-between align-center py-2 px-2 rounded hover:bg-hover-dark'
    classes += ' bg-hover-dark' if list_id == params_id.to_i
    classes
  end
end
