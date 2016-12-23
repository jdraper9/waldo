helpers do
  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.clear
  end

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end

  def find_by_abbr(abbr)
    Station.find_by(abbr: abbr).station_name
  end

  def find_by_fullname(station_name)
    Station.find_by(station_name: station_name).abbr
  end

  def get_departures(abbr)
    station = Bart::Station.new(abbr: abbr)
    station.load_departures
    station.departures.map do |d|
      [d.destination.name, d.estimates.map { |e | e.minutes }]
    end
  end

  def generate_key
    Faker::Superhero.name
  end

  def get_end_time(station_at, awaiting_train)
    departures = get_departures(station_at)
    minutes_until_arrival = (departures.find{ |train| train[0] == find_by_abbr(awaiting_train)} )[1].first
    p '*'*50
    p Time.now
    p minutes_until_arrival
    p Time.now + 60*minutes_until_arrival
    p '*'*50
    Time.now + 60*minutes_until_arrival
  end
end