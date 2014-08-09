class Turn
  include Mongoid::Document
  field :name, type: String
  field :subject, type: String
  field :question, type: String

  belongs_to :user
end

