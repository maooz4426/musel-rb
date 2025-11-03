module UlidPrimaryKey
  extend ActiveSupport::Concern

  included do
    attribute :id, :string, default: -> { ULID.generate }
  end
end
