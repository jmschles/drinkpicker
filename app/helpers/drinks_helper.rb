module DrinksHelper

  def random_suggest
    suggestions = [
      "You should whip up a...",
      "How 'bout a fucking...",
      "For instant oblivion, knock back a...",
      "Thirsty?  Fuckin' make a...",
      "Wet your fuckin' whistle with a...",
      "You aren't too good for a...",
      "Fuck off, make a...",
      "If I were you, I'd make a fucking...",
      "Have a fucking...",
      "You look like you could use a...",
      "Life would be better with a..."
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
      "Gag me",
      "No fucking thank you",
      "Sounds awful",
      "Barf",
      "Not on your life",
      "I don't fucking think so"
    ]

    refusals.sample
  end
end
