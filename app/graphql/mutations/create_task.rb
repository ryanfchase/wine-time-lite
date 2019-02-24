module Mutations
  class CreateTask < BaseMutation
    argument :category, String, required: true
    argument :starts_time, GraphQL::Types::ISO8601DateTime, required: false
    argument :ends_time, GraphQL::Types::ISO8601DateTime, required: false

    type Types::TaskType

    def resolve(category:, starts_time:, ends_time:)
      starts = starts_time || Time.current
      ends = ends_time || starts_time + 15.minutes
      Task.create!(
        category: category,
        starts_time: starts,
        ends_time: ends,
      )
    end
  end
end
