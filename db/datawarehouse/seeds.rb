require "faker"

result = ["Success", "Failure", "Incomplete"]
status = ["Pending", "In Progress", "Interrupted", "Resumed", "Complete"]

50.times do |i|
  intervention = FactIntervention.create!(
    Employee_ID: rand(50),
    Building_ID: rand(50),
    Battery_ID: rand(100),
    Column_ID: rand(300),
    Elevator_ID: rand(1000),
    Start_date: Faker::Datetime.between(from: '2021-06-15', to: '2021-12-30'),
    End_date: Faker::Datetime.between(from: '2021-06-15', to: '2021-12-30'),
    Result: result.sample,
    Report: Faker::Lorem.sentence(word_count: 3),
    Status: status.sample,
  )
end