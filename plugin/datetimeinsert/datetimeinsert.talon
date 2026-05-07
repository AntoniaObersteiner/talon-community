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
<user.date_two_numbers>: insert(date_two_numbers)
year <user.date_two_numbers>:
    insert(date_two_numbers)
    insert(user.time_format("%Y"))
