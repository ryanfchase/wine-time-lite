module Mutations
  class CreateJig < BaseMutation
    argument :name, String, required: true
    argument :body, String, required: false

    type Types::JigType

    def resolve(name:, body:)
      Jig.create!(
        name: name,
        body: body
      )
    end
  end
end
