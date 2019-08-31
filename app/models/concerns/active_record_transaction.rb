module ActiveRecordTransaction
  extend ActiveSupport::Concern

  def transaction
    ActiveRecord::Base.transaction do
      yield
    end
  end
end
