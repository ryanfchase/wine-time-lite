module Types
  class MutationType < BaseObject

    field :create_jig, mutation: Mutations::CreateJig, null: true
    field :create_task, mutation: Mutations::CreateTask, null: true
  end
end
