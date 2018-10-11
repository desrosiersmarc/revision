element=document.querySelectorAll('.CalendarDay');

for (var i = 0; i < element.length ; i++){
  date_informations = element[i].attributes["aria-label"].value;
  date_to_display = date_informations.split(', ')[1].split(' as ')[0];

  if (element[i].firstElementChild.firstElementChild.firstElementChild !== null) {
    price_to_display = element[i].firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerHTML;
    console.log('1- ' + price_to_display);
    price_to_display = price_to_display.split(/\</)[1];
    console.log('2- ' + price_to_display);
    price_to_display = price_to_display.split(/\>/)[1];
    console.log('3- ' + price_to_display);
  } else {
    price_to_display = 0;
  };
  // stop on the last firstElementChild and test the number of Child Element.
  // If one there is no day price
  // else there is a day price and I can use the last child to find the price

  available = element[i].classList;
  available = available.contains('CalendarDay__blocked_calendar');

  console.log(date_to_display + ": " + price_to_display + "€ " + available);
  price_to_display = "0";
  available = "no";
}

// CalendarDay__blocked_calendar class to identify

// or for only one element
element=document.querySelector('.CalendarDay')
element.firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerHTML

// REGEX \>(.....) MATCH1

// this class _1jnk2 dispay that the day is'nt available
