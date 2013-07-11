function deleteIngredient(ingredient) {
  var ingredientId = ingredient.attr('data-id');
  console.log(ingredientId);
  var url = '/ingredients/' + ingredientId;

  $.post(url, { "_method": "delete" });
}