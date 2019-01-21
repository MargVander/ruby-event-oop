require 'time'

class Event
	attr_accessor :start_date, :length, :title, :attendees
	@@event_all = []

	def initialize(date_to_save, length_to_save, title_to_save, attendees_to_save)
		@start_date = Time.parse(date_to_save)
		@length = length_to_save
		@title = title_to_save
		@attendees = attendees_to_save
		@@event_all << self
	end

	def postpone_24h
		@start_date = @start_date + 60 * 60 * 24
		puts @start_date
	end

	def end_date
		end_date = @start_date + 60 * @length
		puts end_date
	end

	def is_past
		puts @start_date < Time.now
	end

	def is_future
		puts @start_date > Time.now
	end

	def is_soon
		if @start_date - Time.now <= 30 * 60
			puts "L'évènement commence bientôt"
		end
	end

	def to_s
		puts "Titre : #{@title}
Date de début : #{@start_date.to_s}
Durée : #{@length} minutes
Invités : #{@attendees.join(", ")}"
	end

	def self.all
		@@event_all.uniq
	end



end