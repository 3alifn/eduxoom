function generate_year_range(start, end) {
   var years = "";
   for (var year = start; year <= end; year++) {
      years += "<option value='" + year + "'>" + year + "</option>";
   }
   return years;
}

today = new Date();
currentMonth = today.getMonth();
currentYear = today.getFullYear();
selectYear = document.getElementById("year");
selectMonth = document.getElementById("month");
var myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var myDate= `${myMonth[currentMonth]}-${currentMonth+1}-${currentYear}`
// console.log(myDate);

createYear = generate_year_range(2024, 2050);
/** or
 * createYear = generate_year_range( 2024, currentYear );
 */

document.getElementById("year").innerHTML = createYear;

var calendar = document.getElementById("calendar");
var lang = calendar.getAttribute('data-lang');

var months = "";
var days = "";

var monthDefault = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

var dayDefault = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

if (lang == "en") {
   months = monthDefault;
   days = dayDefault;
} else {
   months = monthDefault;
   days = dayDefault;
}


var $dataHead = "<tr>";
for (dhead in days) {
// console.log(days[dhead]);
     
   $dataHead += "<th class='"+days[dhead]+"' data-days='" + days[dhead] + "'>" + days[dhead] + "</th>";
}
$dataHead += "</tr>";
//alert($dataHead);
document.getElementById("thead-month").innerHTML = $dataHead;


monthAndYear = document.getElementById("monthAndYear");
showCalendar(currentMonth, currentYear);



function next() {
   currentYear = (currentMonth === 11) ? currentYear + 1 : currentYear;
   currentMonth = (currentMonth + 1) % 12;
   showCalendar(currentMonth, currentYear);
}

function previous() {
   currentYear = (currentMonth === 0) ? currentYear - 1 : currentYear;
   currentMonth = (currentMonth === 0) ? 11 : currentMonth - 1;
   showCalendar(currentMonth, currentYear);
}

function jump() {
   currentYear = parseInt(selectYear.value);
   currentMonth = parseInt(selectMonth.value);
   showCalendar(currentMonth, currentYear);
}

function showCalendar(month, year) {

   var firstDay = (new Date(year, month)).getDay();
   tbl = document.getElementById("calendar-body");


   tbl.innerHTML = "";


   monthAndYear.innerHTML = months[month] + " " + year;
   selectYear.value = year;
   selectMonth.value = month;

   // creating all cells
   var date = 1;
   for (var i = 0; i < 6; i++) {

      var row = document.createElement("tr");


      for (var j = 0; j < 7; j++) {
         if (i === 0 && j < firstDay) {
            cell = document.createElement("td");
            cellText = document.createTextNode("");
            cell.appendChild(cellText);
            row.appendChild(cell);
         } else if (date > daysInMonth(month, year)) {
            break;
         } else {
            cell = document.createElement("td");
            cell.setAttribute("data-date", date);
            cell.setAttribute("data-month", month + 1);
            cell.setAttribute("data-year", year);
            cell.setAttribute("data-month_name", months[month]);
            // cell.className = "date-picker";
            cell.innerHTML = "<span>" + date + "</span>";
            cell.className = `date-picker ${months[month]}-${date}-${month+1}-${year}`;

            if (date === today.getDate() && year === today.getFullYear() && month === today.getMonth()) {
                cell.className = `date-picker selected ${months[month]}-${date}-${month+1}-${year}`;
               
            }
            row.appendChild(cell);
            date++;
         }


      }

      tbl.appendChild(row);
   }

}

function daysInMonth(iMonth, iYear) {
   return 32 - new Date(iYear, iMonth, 32).getDate();
}
