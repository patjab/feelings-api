
puts "Destroying all previous records"
Cohort.destroy_all
Student.destroy_all
Feeling.destroy_all

puts "Creating seed cohorts"
#  => Cohort(id: integer, name: string, start: date, created_at: datetime, updated_at: datetime)
cohort_ta = Cohort.create({name: "Timbledore's Army", start: Date.new(2018, 04, 23)})
cohort_sot = Cohort.create({name: "Straight Outta Terminal", start: Date.new(2018, 05, 14)})

puts "Creating seed students"
# => Student(id: integer, name: string, location: string, favorite_language: string, cohort_id: integer, created_at: datetime, updated_at: datetime)
sot_pa = Student.create({name: "Patrick Abejar", location: "Long Island, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_pl = Student.create({name: "Paul Ly", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_mc = Student.create({name: "Malorie Casimir", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_jgo = Student.create({name: "Jee Graeff", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_mb = Student.create({name: "Michael Ballard", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_lh = Student.create({name: "Lawrence Hon", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_pm = Student.create({name: "Pablo Moreira", location: "Hillsboro, NJ", favorite_language: "Ruby", cohort_id: cohort_sot.id})
sot_sa = Student.create({name: "Sammy Akharaz", location: "Brooklyn, NY", favorite_language: "Solidity", cohort_id: cohort_sot.id})
sot_al = Student.create({name: "Anthony Lam", location: "Manhattan, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_aw = Student.create({name: "Angelina Wong", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_jgr = Student.create({name: "Jathmel Gordon", location: "Brooklyn, NY", favorite_language: "Java", cohort_id: cohort_sot.id})
sot_rr = Student.create({name: "Roniece Ricardo", location: "Bronx, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_ad = Student.create({name: "Aisatou Diallo", location: "Bronx, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_ra = Student.create({name: "Razibul Ahmed", location: "Bronx, NY", favorite_language: "SQL", cohort_id: cohort_sot.id})
sot_er = Student.create({name: "Eric Razor", location: "Manhattan, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})
sot_sw = Student.create({name: "Steven Weiss", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_sot.id})

ta_mc = Student.create({name: "Mike Cronin", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_sl = Student.create({name: "Saige Leslie", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_td = Student.create({name: "Travis Docker", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_db = Student.create({name: "Daiane Bushey", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_te = Student.create({name: "Tara Ellicot", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_dk = Student.create({name: "Drin Kazu", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_el = Student.create({name: "Eva Leake", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_jb = Student.create({name: "Jessie Billard", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_fh = Student.create({name: "Faraz Hanif", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_jr = Student.create({name: "John Rodriguez", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_ds = Student.create({name: "Daniel Shimon", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_ms = Student.create({name: "Marie Sonko", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})
ta_sk = Student.create({name: "Shawn Koski", location: "Brooklyn, NY", favorite_language: "Javascript", cohort_id: cohort_ta.id})

puts "Creating seed feelings"
# => Feeling(id: integer, title: string, description: string, student_id: string, created_at: datetime, updated_at: datetime)
Feeling.create({title: "Stressed", description: "1000 labs per second", student_id: sot_pa.id})
Feeling.create({title: "Rushed", description: "Love Implementing Ruby on Rails", student_id: sot_pa.id})

Feeling.create({title: "Thirsty", description: "Flat White", student_id: sot_pl.id})
Feeling.create({title: "Hungry", description: "Food Trucks", student_id: sot_pl.id})

Feeling.create({title: "Organized", description: "Trello", student_id: sot_sa.id})
Feeling.create({title: "Investing", description: "Blockchain", student_id: sot_sa.id})

Feeling.create({title: "Sorting", description: "Bubble Sort", student_id: sot_al.id})
Feeling.create({title: "Smash", description: "Like, comment, subscribe", student_id: sot_al.id})

Feeling.create({title: "Feelings", description: "Feelings", student_id: sot_rr.id})
Feeling.create({title: "Intrigued", description: "Munchausen stories on reddit", student_id: sot_rr.id})

Feeling.create({title: "Running", description: "On the bridge after a challenge", student_id: sot_lh.id})
Feeling.create({title: "Not Warm", description: "From LA", student_id: sot_lh.id})

Feeling.create({title: "Happy", description: "Son Born", student_id: sot_pm.id})
Feeling.create({title: "Worried", description: "Need Job", student_id: sot_pm.id})

Feeling.create({title: "Hacker", description: "Hacking", student_id: sot_ad.id})
Feeling.create({title: "Cronuts", description: "Donut + croissant", student_id: sot_ad.id})

Feeling.create({title: "Accomplished", description: "Became a Java Master", student_id: sot_jgo.id})
Feeling.create({title: "Tracks", description: "Ended up under me", student_id: sot_jgo.id})

Feeling.create({title: "Mathematical", description: "Need to improve calculus", student_id: sot_sw.id})

puts "Finished"
