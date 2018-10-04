element=document.querySelectorAll('.CalendarDay');

for (var i = 0; i < element.length ; i++){
  date_informations = element[i].attributes["aria-label"].value;
  date_to_display = date_informations.split(', ')[1].split(' as ')[0];
  price_to_display = element[i].firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerHTML;
  price_to_display = price_to_display.split(/\</)[1];
  price_to_display = price_to_display.split(/\>/)[1];
  console.log(date_to_display + ": " + price_to_display + "€");
  price_to_display = "";
}



#or for only one element
element=document.querySelector('.CalendarDay')
element.firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerHTML

#REGEX \>(.....) MATCH1

