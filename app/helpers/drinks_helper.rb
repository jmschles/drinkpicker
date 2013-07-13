module DrinksHelper

  def random_suggest
    suggestions = [
      "You should whip up a...",
      "How 'bout a...",
      "For instant oblivion, knock back a...",
      "Thirsty?  Make a...",
      "Wet your whistle with a...",
      "You aren't too good for a...",
      "Hey, make a...",
      "If I were you, I'd make a...",
      "Have a...",
      "You look like you could use a...",
      "Life would be better with a..."
    ]

    suggestions.sample
  end

  def refresh_text
    refusals = [
      "Buzz off",
      "That sounds gross",
      "Nasty",
      "I'd rather puke",
      "Thanks but no way",
      "Eeew!",
      "Ugh...",
      "Rat poison sounds more palatable",
      "Gag me",
      "No thank you",
      "Sounds awful",
      "Barf",
      "Not on your life",
      "I don't think so"
    ]

    refusals.sample
  end
end
