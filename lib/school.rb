class School
attr_reader :start_time,
            :hours_in_school_day,
            :student_names


  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []

  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
  no_colon = @start_time.delete":"
  to_integer = no_colon.to_i
  start_hour = to_integer/100
  end_hour = start_hour + @hours_in_school_day
  with_zeros = end_hour * 100
  to_string = with_zeros.to_s
  end_time = to_string.insert(-3, ":")

  end

  def full_time?
    if @hours_in_school_day >= 4
      true
    else
      false
    end
  end

  def standard_school_names
    standard_names = []
    @student_names.each do |name|
      standard_names << name.capitalize
    end
    return standard_names
  end

  def convert_end_to_clock_time
    no_colon = @start_time.delete":"
    to_integer = no_colon.to_i
    start_hour = to_integer/100
    end_hour = start_hour + @hours_in_school_day
      if end_hour > 12
        converted_time = end_hour - 12
      else
        with_zeros = end_hour * 100
        to_string = with_zeros.to_s
        return end_time = to_string.insert(-3, ":")
      end
    converted_time_with_zeros = converted_time * 100
    to_a_string = converted_time_with_zeros.to_s
    final_converted_end_time = to_a_string.insert(-3, ":")
  end

end
