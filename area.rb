class Area < ActiveRecord::Base

  validates_presence_of :nome, :on => :create
  validates_presence_of :nome, :on => :update
   validates_uniqueness_of :nome, :message => 'Já cadastrado'
 
# #conceito de produto
  has_many :products, :class_name => "Project"
  has_many :suggestions
  #conceito de projeto
  has_and_belongs_to_many :projects
  
  has_many :evaluation_areas
end
