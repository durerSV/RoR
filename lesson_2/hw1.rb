month = {
  january: 31,
  february: 28,
  march: 31,
  april: 30,
  May: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}
month.each do |month, days|
  if days.to_i == 30
    puts month
  end
end