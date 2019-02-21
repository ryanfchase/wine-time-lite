module Types
  class MutationType < BaseObject

    field :create_jig, mutation: Mutations::CreateJig, null: true
  end
end
