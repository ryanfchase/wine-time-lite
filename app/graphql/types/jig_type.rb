module Types
  class JigType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :body, String, null: true
  end
end
