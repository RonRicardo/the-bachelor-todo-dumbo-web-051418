require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      return contestant["name"].split(" ")[0] if contestant["status"].include?('Winner')
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant["occupation"] == (occupation)
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      hometown_count += 1 if contestant["hometown"] == hometown
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = 0
  ages = data[season].collect do |contestant|
     contestant["age"].to_i
     contestants += 1
  end
end
