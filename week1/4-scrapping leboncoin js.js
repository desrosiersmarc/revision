element=document.querySelectorAll('.CalendarDay');

arrayOfHashes = [];

for (var i = 0; i < element.length ; i++){
  date_informations = element[i].attributes["aria-label"].value;
  date_to_display = date_informations.split(', ')[1].split(' as ')[0];

  date_test = element[i].classList

  if (date_test.contains('CalendarDay__blocked_out_of_range')) {
    price_to_display = 'Out of range';
    console.log(date_to_display + 'Out of range');
  } else {
    price_collected = element[i].querySelectorAll('.x1FOW');
    price_to_display = price_collected[0].innerText;

    available = element[i].classList;
    available = !available.contains('CalendarDay__blocked_calendar');

    console.log('no : ' + i + '-' + date_to_display + ": " + price_to_display + "€ " + available);
    dateInformations = {date: date_to_display,
                        price: price_to_display,
                        availibility: available
                      };
    arrayOfHashes.push(dateInformations);
    // price_to_display = "0";
    // available = "no";
    if (parseInt(date_to_display.split(' ')[0]) === 1){
      alert('Changement de mois' + element[i].innerText.trim());
      break;
    };

  }

};

button_next = document.querySelectorAll('.DayPickerNavigation_button')[1];
button_next.click();
// CalendarDay__blocked_calendar class to identify

// or for only one element
// element=document.querySelector('.CalendarDay')
// element.firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerHTML

// REGEX \>(.....) MATCH1

// this class _1jnk2 dispay that the day is'nt available
//
// ARCHIVES
  // if (element[i].firstElementChild.firstElementChild.firstElementChild !== null) {
  //   price_to_display = element[i].firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerHTML;
  //   console.log('1- ' + price_to_display);
  //   price_to_display = price_to_display.split(/\</)[1];
  //   console.log('2- ' + price_to_display);
  //   price_to_display = price_to_display.split(/\>/)[1];
  //   console.log('3- ' + price_to_display);
  // } else {
  //   price_to_display = 0;
  // };
  // stop on the last firstElementChild and test the number of Child Element.
  // If one there is no day price
  // else there is a day price and I can use the last child to find the price
