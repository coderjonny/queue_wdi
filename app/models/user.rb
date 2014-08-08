class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :github_handle, type: String

  validates :name, presence: true
  validates :email, presence: true
  validates :github_handle, presence: true
end
