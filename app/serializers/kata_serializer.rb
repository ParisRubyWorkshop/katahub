class KataSerializer < ActiveModel::Serializer
  attributes :id, :github_user_name, :github_repo_name
end
