$game.define_cards {
  # Fossil Fuels
  fossil {
    name "Coal"
    units 30
    popularity 0
    start true
  }
  fossil {
    name "Gas"
    units 48
    popularity 0
    start true
  }
  fossil {
    name "Oil"
    units 44
    popularity 0
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
  supply {
    name "Nuclear"
    units 5
    description "100 years' supply"
    cost 5
    land 5
    coast 0
    popularity 0
  }
  supply {
    name "Nuclear"
    units 1
    description "1000 years' supply"
    cost 1
    land 1
    coast 0
    popularity 0
  }
  supply {
    name "Coal with CCS"
    units 7
    description "100 years' supply"
    cost 7
    land 7
    coast 0
    popularity 0
  }
  supply {
    name "Coal with CCS"
    units 1
    description "1000 years' supply"
    cost 1
    land 1
    coast 0
    popularity 0
  }
  3.times do
    supply {
      name "Biofuel"
      units 10
      description "20% of land"
      cost 0
      land 20
      coast 0
      popularity -2
    }
  end
  10.times do
    supply {
      name "Solar PV"
      units 10
      description "1% of land"
      cost 160
      land 1
      coast 0
      popularity -2
    }
  end
  supply {
    name "Solar Thermal"
    units 13
    description "All south facing roofs"
    cost 156
    land 0
    coast 0
    popularity 2
  }
  supply {
    name "Solar Thermal"
    units 7
    description "Half of all south facing roofs"
    cost 84
    land 0
    coast 0
    popularity 1
  }
  5.times do
    supply {
      name "Offshore Wind"
      units 10
      description "20% of the coast"
      cost 20
      land 0
      coast 20
      popularity -2
    }
  end
  8.times do
    supply {
      name "Onshore Wind"
      units 20
      description "10% of the land available (can still be used for other things)"
      cost 20
      land 1
      coast 0
      popularity -3
    }
  end
  4.times do
    supply {
      name "Deep Offshore Wind"
      units 20
      description "20% of the coast"
      cost 60
      land 0
      coast 0
      popularity 0
    }
  end
  10.times do
    supply {
      name "Desert Solar"
      units 16
      description "6000 square km in North Africa"
      cost 48
      land 0
      coast 0
      popularity 0
    }
  end
  # Starting demand
  demand {
    name "Defence"
    units 4
    popularity 0
    start true
  }
  demand {
    name "Flights"
    units 7
    popularity 0
    start true
  }
  demand {
    name "Gadgets"
    units 5
    popularity 0
    start true
  }
  demand {
    name "Food"
    units 3
    popularity 0
    start true
  }
  demand {
    name "Freight"
    units 12
    popularity 0
    start true
  }
  demand {
    name "Cars"
    units 25
    popularity 0
    start true
  }
  demand {
    name "Heating"
    units 45
    popularity 0
    start true
  }
  demand {
    name "Stuff"
    units 48
    popularity 0
    start true
  }
  # Replacement demand
  demand {
    name "Defence"
    units 2
    popularity 0
    description "Halve the military"
  }
  demand {
    name "Defence"
    units 6
    popularity 0
    description "A larger military"
  }
  demand {
    name "Flights"
    units 1
    popularity -2
    description "Make airships the only way"
  }
  demand {
    name "Freight"
    units 6
    popularity -2
    description "High carbon price/tax"
  }
  demand {
    name "Cars"
    units 15
    popularity -1
    description "Hybrid cars"
  }
  demand {
    name "Cars"
    units 5
    popularity -1
    description "Electric cars"
  }
  demand {
    name "Heating"
    units 23
    popularity 3
    description "Insulate, double-glaze and cavity wall fill all buildings"
  }
  demand {
    name "Heating"
    units 12
    popularity 4
    description "Insulate and install heat pumps on all buildings"
  }
  demand {
    name "Stuff"
    units 24
    popularity -2
    description "High carbon price/tax"
  }
}