class AssignedProject < ApplicationRecord
  belongs_to :worker
  belongs_to :project
end
