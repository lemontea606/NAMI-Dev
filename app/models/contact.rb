require "date"

class Contact < ActiveRecord::Base
  has_many :finances
  belongs_to :donor
  belongs_to :contact_person
  
  attr_accessible :contact_date, :followup_date, :narrative, :donor_id, :contact_person_id, :created_by, :last_modified_by
  
end
