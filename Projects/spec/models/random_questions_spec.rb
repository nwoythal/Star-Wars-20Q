describe Bus do
  load "#{Rails.root}/db/seeds.rb"
  i = 0
  while i <= 1000 do
    Bus.grab_object
    i += 1
  end
end