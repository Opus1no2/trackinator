class ListUpdateService
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def self.call(params)
    new(params).call
  end

  def call
    items = { completed_at: completed_at }
    items.merge!(description: params[:description]) if description?
    items
  end

  def completed_at
    params[:completed_at].present? ? DateTime.current : nil
  end

  def description?
    params[:description].present?
  end
end
