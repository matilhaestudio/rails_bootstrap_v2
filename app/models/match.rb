class Match
	def self.test()
  	
 		job = Job.find('59308f499c5fcd189b106e07')

 		matches = []
  	Candidate.all.each do |c| 
  		matched_attrs = c.tag_ids.map { |tag|
  			job.tag_ids.include?(tag) ? true : false
  		}
  		count = matched_attrs.count{ |attribute| attribute == true }
	    percentage = ( count * 100 ) / job.tag_ids.count
	    #puts [ job.id, c.id, percentage ]
	    matches << [ job.name, c.name, percentage ]
	  end

	  matches

  end
end

#Match.test(Job.find('59308f499c5fcd189b106e07'),Candidate.all)
#puts Benchmark.measure { Match.hello(PatientCriterion.where(patient_id: 1), CaregiverCriterion.all, 'caregiver_info_id', ["patient_id"]) }