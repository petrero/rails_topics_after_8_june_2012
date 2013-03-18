module EuroTimeZones

		def euro_zones
  		@euro_zones ||= all.find_all { |z| z.name =~ /Dublin|Lisbon|London|Amsterdam|Belgrade|Berlin|Bern|Bratislava|Brussels|Budapest|Copenhagen|Ljubljana|Madrid|Paris|Prague|Rome|Sarajevo|Skopje|Stockholm|Vienna|Warsaw|Zagreb|Athens|Bucharest|Helsinki|Sofia/ }
		end

end

ActiveSupport::TimeZone.send(:extend, EuroTimeZones)
