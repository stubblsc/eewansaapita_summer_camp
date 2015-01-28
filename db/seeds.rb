User.create!([
  {email: "stubblsc@miamioh.edu", encrypted_password: "$2a$10$mPZQThfgVHJgf7uxpJFEyezgWPlqhzdB25rkG7SdfGCP59.PQ8l1a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 40, current_sign_in_at: "2015-01-28 16:41:56", last_sign_in_at: "2014-05-27 19:39:53", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "stub6225@gmail.com", encrypted_password: "$2a$10$CULv5A8HxhpueGvmWw4Bs.YqQfDilRGzEGU/fI.AT/rtyCB7eeBfy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 15, current_sign_in_at: "2014-05-09 17:27:23", last_sign_in_at: "2014-05-09 17:22:52", current_sign_in_ip: "10.33.1.151", last_sign_in_ip: "10.33.1.151"},
  {email: "asdasdasd@gmail.com", encrypted_password: "$2a$10$M96Us6t57wZnjjb1qlI6puLOS7/aR9JDIgJIFoFcrJCUKaY3XrjcG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-04-25 22:46:40", last_sign_in_at: "2014-04-25 22:46:40", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "fake-email@not-admin.com", encrypted_password: "$2a$10$bmL1985eRwSyOIOCp7s4f.xNB/bRQIu1FMfofSyWllgJE9mZQ0RJW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2014-05-06 18:45:45", last_sign_in_at: "2014-05-06 18:43:36", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "ernst.sukram@gmail.com", encrypted_password: "$2a$10$s/Ner4864rZcgtsdKZx1X.JwWtVn.7AoJdbH5HPwklhyylmqOyVVK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-05-09 17:28:45", last_sign_in_at: "2014-05-09 17:28:45", current_sign_in_ip: "10.33.1.136", last_sign_in_ip: "10.33.1.136"},
  {email: "admin@admin.com", encrypted_password: "$2a$10$jI1kEv4HrqiO0RXL6RIEX.w.g15Zm3iIHszLFIfpn6TLpKTlh8Z9O", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-05-09 19:11:07", last_sign_in_at: "2014-05-09 19:10:04", current_sign_in_ip: "192.168.1.103", last_sign_in_ip: "192.168.1.103"},
  {email: "user@user.com", encrypted_password: "$2a$10$rUl5u1ondPYkyRKso8jaPuVbKySYWVbT67WPfg5EJY..SUESUwbWe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-05-09 19:10:33", last_sign_in_at: "2014-05-09 19:10:33", current_sign_in_ip: "192.168.1.103", last_sign_in_ip: "192.168.1.103"}
])
Essay.create!([
  {essay: "Test Essaysadfasdf;sadf;aafsdfsadfsadlasdm kmf;lasdmf ;la  k asdlk fkas;d f;ksad;k ;sd;f as;d fa;skd f;kasdf;k    asdf; sad;f sa;df  as fd;l asd;fl ;sadf kl;asdf ;la df;lasdlf;k   dasl;kf as;ld l;kasd f;lasdf ;als  lsad;kf sad;lfk ;l  l;sadk f;lsd f;la sd asdlfk asd;lfk  ", year: 2014, user_id: 2},
  {essay: "This is an essay. But not really. It's only three sentences.", year: 2013, user_id: 4},
  {essay: "Test Essay", year: 2014, user_id: 4}
])
Profile.create!([
  {firstName: "Scott", midInitial: "C", lastName: "Stubblebine", dateOfBirth: "1990-07-11", enrollNum: 12345, gender: "M", email: "stubblsc@miamioh.edu", streetAddr: "352 Arrowhead Dr", cityAddr: "Oxford", stateAddr: "Ohio", zipAddr: 45056, guard1Name: "Patrick", guard2Name: "Lynn", guardEmail: "stub6225@gmail.com", homePhone: "5555555555", cellPhone: "5555555555", user_id: nil, userType: "User"},
  {firstName: "Test", midInitial: "S", lastName: "User", dateOfBirth: "2014-09-04", enrollNum: 948567, gender: "M", email: "stub6225@gmail.com", streetAddr: "912 Arrowhead Dr", cityAddr: "Oxford", stateAddr: "Ohio", zipAddr: 45056, guard1Name: "Guardian1", guard2Name: "Guardian2", guardEmail: "stubblsc@miamioh.edu", homePhone: "5139360332", cellPhone: "5137200216", user_id: nil, userType: nil},
  {firstName: "John", midInitial: "", lastName: "Smith", dateOfBirth: "1990-07-11", enrollNum: 876386, gender: "m", email: "stubblsc@miamioh.edu", streetAddr: "12312", cityAddr: "fwdf", stateAddr: "oh", zipAddr: nil, guard1Name: "", guard2Name: "", guardEmail: "", homePhone: "", cellPhone: "", user_id: nil, userType: "Admin"},
  {firstName: "a", midInitial: "", lastName: "", dateOfBirth: "2014-05-15", enrollNum: nil, gender: "", email: "", streetAddr: "", cityAddr: "", stateAddr: "", zipAddr: nil, guard1Name: "", guard2Name: "", guardEmail: "", homePhone: "", cellPhone: "", user_id: 2, userType: nil},
  {firstName: "Test", midInitial: "A", lastName: "User", dateOfBirth: nil, enrollNum: 12345, gender: "M", email: "email@server.com", streetAddr: "123 road street", cityAddr: "Oxford", stateAddr: "OH", zipAddr: 45056, guard1Name: "Pat", guard2Name: "Lynn", guardEmail: "parent-email@server.com", homePhone: "5137200216", cellPhone: "5137200216", user_id: 4, userType: nil},
  {firstName: "cse385", midInitial: "", lastName: "admin", dateOfBirth: nil, enrollNum: nil, gender: "", email: "", streetAddr: "", cityAddr: "", stateAddr: "", zipAddr: nil, guard1Name: "", guard2Name: "", guardEmail: "", homePhone: "", cellPhone: "", user_id: 6, userType: "Admin"},
  {firstName: "", midInitial: "", lastName: "", dateOfBirth: nil, enrollNum: nil, gender: "", email: "", streetAddr: "", cityAddr: "", stateAddr: "", zipAddr: nil, guard1Name: "", guard2Name: "", guardEmail: "", homePhone: "", cellPhone: "", user_id: 1, userType: "Admin"}
])
YearlyInfo.create!([
  {comments: "hope this works", year: 1914, role: "Staff", user_id: 1},
  {comments: "test", year: 1925, role: "Staff", user_id: 1},
  {comments: "sdfadfad", year: 1914, role: "Counselor", user_id: 2},
  {comments: "sdfadfad", year: 1914, role: "Counselor", user_id: 2},
  {comments: "asd", year: 1914, role: "Staff", user_id: 2},
  {comments: "asd", year: 1914, role: "Teacher", user_id: 2},
  {comments: "", year: 1914, role: "Staff", user_id: 1},
  {comments: "commetns on john smith", year: 1914, role: "Volunteer", user_id: 1},
  {comments: "daSD", year: 1933, role: "Staff", user_id: 1},
  {comments: "", year: 1914, role: "Staff", user_id: 1},
  {comments: "asdasd", year: 1914, role: "Staff", user_id: 1}
])
