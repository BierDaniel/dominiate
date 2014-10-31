{
  name: 'Big MoneyMarket'
  author: 'BierDaniel'
  requires: ['Market']
  gainPriority: (state, my) -> [
        "Province" if my.getTotalMoney() > 18
        "Duchy" if state.gainsToEndGame() <= 4
        "Estate" if state.gainsToEndGame() <= 2
        "Gold"
        "Duchy" if state.gainsToEndGame() <= 6
		"Market"
        "Silver"
      ]
}
