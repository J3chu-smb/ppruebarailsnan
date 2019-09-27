class Worker < ApplicationRecord
  has_many :assigned_projects
  has_many :projects, through: :assigned_projects
end
