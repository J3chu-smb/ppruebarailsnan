class Project < ApplicationRecord
  has_many :assigned_projects
  has_many :workers, through: :assigned_projects
end
