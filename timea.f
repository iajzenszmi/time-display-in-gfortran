    implicit none
    integer :: year, month, day, hour, minute, second
    character(len=8) :: date_string, time_string
    character(len=5) :: zone

    ! Use date_and_time to get the current date and time
    call date_and_time(date_string, time_string, zone)

    ! Convert the date and time strings into integers
    read(date_string(1:4), *) year
    read(date_string(5:6), *) month
    read(date_string(7:8), *) day
    read(time_string(1:2), *) hour
    read(time_string(3:4), *) minute
    read(time_string(5:6), *) second

    ! Display the results
    print *, "Current Date:"
    print *, "Year: ", year
    print *, "Month: ", month
    print *, "Day: ", day
    print *, ""
    print *, "Current Time:"
    print *, "Hour: ", hour
    print *, "Minute: ", minute
    print *, "Second: ", second

end program time_date_demo

 
