function deleteDrink(drink) {
  var drinkId = drink.attr('data-id');
  console.log(drinkId);
  var url = '/drinks/' + drinkId;

  $.post(url, { "_method": "delete" });
}