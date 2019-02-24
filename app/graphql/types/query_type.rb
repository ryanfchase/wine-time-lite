module Types
  class QueryType < BaseObject
    field :test_field, String, null: false, description: "An example field added by the generator"
    field :other_field, Integer, null: false, description: "Random number between 1 and 30"
    field :query, QueryType, null: false, method: :itself

    field :all_jigs, [JigType], null: true, description: "All jigs"
    field :all_tasks, [TaskType], null: true, description: "All tasks"

    def test_field
      "Hello World!"
    end

    def other_field
      rand(1..30)
    end

    def all_jigs
      Jig.all
    end

    def all_tasks
      Task.all
    end
  end
end
