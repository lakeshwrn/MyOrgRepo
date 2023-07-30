public class HelloWorld {
    public String getDay(Integer day){
        String dayName;
        Switch on day{
            when 1{
                return dayName = 'Sunday';
            }
            when 2{
                return dayName = 'Monday';
            }
            when 3{
                return dayName = 'Tuesday';
            }
            when 4{
                return dayName = 'Wednesday';
            }
            when 5{
                return dayName = 'Thursday';
            }
            when 6{
                return dayName = 'Friday';
            }
            when 7{
                return dayName = 'Saturday';
            }
            when else{
                return dayName = 'Invalid day Number';
            }
        }
   }
}