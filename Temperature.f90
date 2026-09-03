program TemperatureConversion
    implicit none
    real :: temp_in, temp_out
    character(1) :: unit_in, unit_out

    ! Prompt the user for input temperature and its unit (C or F)
    print *, "Enter temperature followed by its unit (C or F):"
    read *, temp_in, unit_in

    ! Convert the temperature based on the input unit
    if (unit_in == 'C' .or. unit_in == 'c') then
        ! Convert from Celsius to Fahrenheit
        temp_out = temp_in * 9.0 / 5.0 + 32.0
        unit_out = 'F'
    else if (unit_in == 'F' .or. unit_in == 'f') then
        ! Convert from Fahrenheit to Celsius
        temp_out = (temp_in - 32.0) * 5.0 / 9.0
        unit_out = 'C'
    else
        ! Invalid unit
        print *, "Invalid temperature unit."
        stop
    end if

    ! Display the result
    print *, "Converted temperature: ", temp_out, " ", unit_out

end program TemperatureConversion
