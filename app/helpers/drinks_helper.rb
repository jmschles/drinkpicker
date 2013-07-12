module DrinksHelper

  def random_suggest
    suggestions = [
      "You should whip up a...",
      "How 'bout a fucking...",
      "For instant oblivion, knock back a...",
      "Thirsty?  Fuckin' make a...",
      "Wet your fuckin' whistle with a...",
      "You aren't too good for a...",
      "Fuck off, make a..."
    ]

    suggestions.sample
  end

  def refresh_text
    refusals = [
      "Fuck off",
      "That sounds gross",
      "Nasty",
      "I'd rather puke",
      "Thanks but no fucking way",
      "Eeew!",
      "Ugh...",
      "Rat poison sounds more palatable",
      "Gag me"
    ]

    refusals.sample
  end
end
