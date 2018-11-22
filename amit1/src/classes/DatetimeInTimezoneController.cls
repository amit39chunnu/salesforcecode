public class DatetimeInTimezoneController{

public DateTime date_time { get; set; }
public String timezone { get; set; }
public String reason { get; set; }
public String translationLanguage { get; set; }
public Boolean timezonetype { get; set; }

public String getFormattedDatetime()
{
if (date_time == null) 
{
return ''; 
}
else 
{ 
if(timezone !=null && timezone !='')
return ' ' + date_time.format('d MMMM yyyy hh:mm a', timezone) ;
else
return ' ' + date_time.format('d MMMM yyyy hh:mm a') ;
}

}
}