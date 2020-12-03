json.extract! student, :id, :first_name, :last_name, :email, :yaer_of_birth, :gender,:fathers_name,:mothers_name,:address, :created_at, :updated_at
json.url student_url(student, format: :json)
