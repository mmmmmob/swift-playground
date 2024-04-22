/*
 Given an age in seconds, calculate how old someone would be on:
   - Mercury: orbital period 0.2408467 Earth years
   - Venus: orbital period 0.61519726 Earth years
   - Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
   - Mars: orbital period 1.8808158 Earth years
   - Jupiter: orbital period 11.862615 Earth years
   - Saturn: orbital period 29.447498 Earth years
   - Uranus: orbital period 84.016846 Earth years
   - Neptune: orbital period 164.79132 Earth years
  */

class SpaceAge {
    var second: Double

    init(_ second: Double) {
        self.second = second
    }

    static let yearInSecond: Double = 31_557_600

    var onMercury: Double {
        return second / (SpaceAge.yearInSecond * 0.2408467)
    }

    var onVenus: Double {
        return second / (SpaceAge.yearInSecond * 0.61519726)
    }

    var onEarth: Double {
        return second / SpaceAge.yearInSecond
    }

    var onMars: Double {
        return second / (SpaceAge.yearInSecond * 1.8808158)
    }

    var onJupiter: Double {
        return second / (SpaceAge.yearInSecond * 11.862615)
    }

    var onSaturn: Double {
        return second / (SpaceAge.yearInSecond * 29.447498)
    }

    var onUranus: Double {
        return second / (SpaceAge.yearInSecond * 84.016846)
    }

    var onNeptune: Double {
        return second / (SpaceAge.yearInSecond * 164.79132)
    }
}

let age = SpaceAge(2_134_835_688)
print(age.onEarth)
