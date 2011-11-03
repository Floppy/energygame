$game.define_cards {
  # Fossil Fuels
  fossil {
    name "Coal"
    units 30
    start true
  }
  # Sustainable Power
  supply {
    name "Tidal"
    units 11
    popularity -1
    description "All barrages, lagoons, streams possible"
    cost 22
    land 0
    coast 0
  }
  # Starting demand
  demand {
    name "Stuff"
    units 48
    popularity 0
    start true
  }
  # Replacement demand
  demand {
    name "Stuff"
    units 24
    popularity -2
    description "High carbon price/tax"
  }
}