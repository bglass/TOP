require 'faker'


namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke

def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

    # Item
    100.times do |n|

      Item.create!(     :format_id        => rand(10)+1,
			:name		=> Faker::Lorem.words(1).join,
			:content	=> Faker::Lorem.sentences(1).join )
    end

    # Format
    10.times do |n|
      Format.create!(	:name           => "IT" + Faker::Lorem.words(1).join,        
      			:priority	=> rand(100) )
    end
    10.times do |n|
      Format.create!(	:name           => "RS" + Faker::Lorem.words(1).join,        
      			:priority	=> rand(100) )
    end

    # Relationship
    1000.times do |n|
      Relation.create!(	:name           => "RR" + Faker::Lorem.words(1).join,        
			:format_id	=> rand(10)+11,
			:parent_id	=> rand(100)+1,
			:child_id	=> rand(100)+1 )
    end

##     # Meeting
##     100.times do |n|
##       Meeting.create!( :title           => Faker::Lorem.words(2).join,
##                        :venue           => Faker::Address.city,
##                        :milestone_id    => rand(100) )
##     end
## 
##     # Milestone
##     100.times do |n|
##       Milestone.create!(  :title           => Faker::Lorem.words(2).join,
##                           :phase_id        => rand(100),
##                           :achieved        =>  rand(2) == 1 )
##     end
## 
##     # Payment
##     100.times do |n|
##       Payment.create!(    :milestone_id    => rand(100),
##                           :amount          => rand(1000000),
##                           :invoiced        =>  rand(2) == 1,
##                           :paid            =>  rand(2) == 1 )
##     end
## 
##     # Contractor
##     100.times do |n|
##       Contractor.create!( :activity_id     => rand(100),
##                           :entity_id       => rand(100),
##                           :role            => Faker::Lorem.words(2).join  )
##     end
## 
## #    # Info
## #    100.times do |n|
## #      Info.create!( :activity_id     => rand(100),
## #                       :title           => Faker::Lorem.sentences(1).join, 
## #                       :text           => Faker::Lorem.paragraphs(2).join,
## #                       :url           => "http://"+Faker::Internet.domain_word+'.'+Faker::Internet.domain_name + '/' + (Faker::Lorem.words(rand(5)).join('/') ) )
## #    end
## 
##  
##     # Project
##     100.times do |n|
##       Project.create!(  :title          => Faker::Lorem.sentences(1).join,
##                         :abstract       => Faker::Lorem.paragraphs(2).join)
## 
##     end
## 
##     # Funding
##     100.times do |n|
##       Funding.create!( :title          => (0..rand(6)).map{65.+(rand(26)).chr}.join,
##                        :abstract       => Faker::Lorem.paragraphs(1).join )
##     end
## 
##     # Person
##     100.times do |n|
##       directorate = (0..2).map{65.+(rand(25)).chr}.join
##       section     = directorate + '-' + (0..2).map{65.+(rand(25)).chr}.join
##       Person.create!( :first => Faker::Name.first_name, 
##                       :last => Faker::Name.last_name, 
##                       :section => section, 
##                       :role    => Faker::Lorem.words(2).join  )
##     end
## 
##     # Component
##     100.times do |n|
##       Component.create!(  :title          => Faker::Lorem.sentences(1).join,
##                           :category_id     => rand(100),
##                           :abstract       => Faker::Lorem.paragraphs(3).join,
##                           :activity_id     => rand(100),
##                           :technology_id     => rand(100),
##                           :status          => Faker::Lorem.words(2).join,
##                           :qlevel_id       =>  rand(100 ) )
##     end
## 
##     # Category
##     100.times do |n|
##       Category.create!(   :name     => Faker::Lorem.sentences(1).join,
##                           :abstract       => Faker::Lorem.paragraphs(1).join )
##     end
## 
##     # Technology
##     100.times do |n|
##       Technology.create!( :entity_id     => rand(100),
##                           :format           => Faker::Lorem.words(1).join,
##                           :size         => rand(1000)/100,
##                           :name     => Faker::Lorem.words(2).join )
##     end
## 
## 
##    # Entity
##    100.times do |n|
##      Entity.create!(  :name     => Faker::Company.name,
##                       :description => Faker::Lorem.paragraphs(2).join,
##                       :city        =>Faker::Address.city,
##                       :country     =>Faker::Address.country,
##                       :url      =>  "http://"+Faker::Internet.domain_word+'.'+Faker::Internet.domain_name + '/' + (Faker::Lorem.words(rand(5)).join('/') ) )
##    end
## 
## #    # Stamp
## #    100.times do |n|
## #          Stamp.create!( :planned   => time_rand,
## #                         :estimated => time_rand,
## #                         :actual    => time_rand) 
## #    end

  end
end


                       
