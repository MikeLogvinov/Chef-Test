name "starter"
description "Chef install guestbook app"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "Mike Logvinov",
})
