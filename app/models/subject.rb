class Subject < ApplicationRecord
	 
	has_many :ratings, dependent: :destroy
	
	validates :subjectName, :site, :category, presence: true
	validates :subjectName, uniqueness: {scope: :site, 
	  message: "- this subject already exists for this site",
	  case_sensitive: false }
	  
	ratyrate_rateable 'rating'
end
