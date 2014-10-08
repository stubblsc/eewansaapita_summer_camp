json.array!(@profiles) do |profile|
  json.extract! profile, :id, :userId, :firstName, :midInitial, :lastName, :dateOfBirth, :enrollNum, :gender, :email, :streetAddr, :cityAddr, :stateAddr, :zipAddr, :guard1Name, :guard2Name, :guardEmail, :homePhone, :cellPhone
  json.url profile_url(profile, format: :json)
end
