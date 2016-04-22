require 'SecureRandom'

@urls = {}
time1 = Time.now

f = open("db/urls_edited.txt").read
f_clean = f.gsub(/[()]/, "")
f_array = f_clean.split(",\n")

f_array.each do |code|
    @urls[code] = Url.create(long_url: code, short_url: SecureRandom.hex[0..5])
end

time2 = Time.now
time_dif = time2 - time1
p time_dif

# 300 records = 0.89  ---- 5 hexa short_url
# 1000 records = 2.09
# 5000 records = 16.92