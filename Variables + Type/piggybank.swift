var pesos: Double = 4
var reais: Double = 5
var soles: Double = 6

// 1 pesos = 0.00026 usd
// 1 reais = 0.20 usd
// 1 soles = 0.27 usd

var total: Double = (0.00026 * pesos) + (0.20 * reais) + (0.27 * soles)
print("US Dollars = $\(total)")
