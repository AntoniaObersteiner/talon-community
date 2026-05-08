date insert: insert(user.time_format("%Y-%m-%d"))
date insert UTC: insert(user.time_format_utc("%Y-%m-%d"))
timestamp insert: insert(user.time_format("%Y-%m-%d %H:%M:%S"))
timestamp insert high resolution: insert(user.time_format("%Y-%m-%d %H:%M:%S.%f"))
timestamp insert UTC: insert(user.time_format_utc("%Y-%m-%d %H:%M:%S"))
timestamp insert UTC high resolution:
    insert(user.time_format_utc("%Y-%m-%d %H:%M:%S.%f"))
time insert: insert(user.time_format("%H:%M"))
time seconds insert: insert(user.time_format("%H:%M:%S"))
<user.time_two_numbers>: insert(time_two_numbers)
<user.time_one_number> clock:
    insert(time_one_number)
    insert("00")
<user.time_one_number> half:
    insert(time_one_number)
    insert("30")
<user.time_one_number> one quarter:
    insert(time_one_number)
    insert("15")
<user.time_one_number> three quarter:
    insert(time_one_number)
    insert("45")
<user.date_two_numbers>: insert(date_two_numbers)
<user.iso_date_two_numbers>: insert(iso_date_two_numbers)
year <user.date_two_numbers>:
    insert(date_two_numbers)
    insert(user.time_format("%Y"))
