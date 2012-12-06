class CriterionsQuestionnaire < ActiveRecord::Base
  unloadable 
  belongs_to :criterion
  belongs_to :questionnaire
  belongs_to :usability_research
  
  def self.used_criterion_research(p, research)
    criterionquestionnaire = CriterionsQuestionnaire.find(:all, :conditions => {:usability_research_id => research.id, :criterion_id => p.id})
    result = []
    if criterionquestionnaire.blank?
      result = 'true'
    end
    result
  end
end
