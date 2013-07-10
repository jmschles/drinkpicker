module DrinksHelper

  def random_suggest
    suggestions = [
      "You should whip up a...",
      "How 'bout a fucking...",
      "For instant oblivion, knock back a...",
      "Thirsty?  Fuckin' make a...",
      "Wet your fuckin whistle with a...",
      "You aren't too good for a...",
      "Fuck off, make a..."
    ]

    suggestions.sample
  end
end
