# frozen_string_literal: true

module ListItemsHelper
  def description(desc)
    desc.present? ? desc : 'nothing here...'
  end
end
