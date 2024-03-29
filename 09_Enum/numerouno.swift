enum ProductType: String, CaseIterable {
  case aceRepository = "Ace Repository"
  case dealForcer = "Deal Forcer"
  case kadencePlanner = "Kadence Planner"
  case mailCannon = "Mail Cannon"
}

func displayProductOffering() {
  print("There are \(ProductType.allCases.count) products:\n")
    for product in ProductType.allCases {
    print(product.rawValue)
  }
}

enum Edition: String {
  case basic = "basic"
  case premium = "premium"
  case ultimate = "ultimate"

  mutating func upgrade() {
    switch self {
    case .basic:
      self = .premium
    case .premium:
      self = .ultimate
    case .ultimate:
      print("Can't upgrade further\n")
    }

  }
}

enum DeliveryMethod {
  case cloudDigital(isLifetime: Bool)
  case shipping(weight: Int)

  var shippingCost : Int {
        switch self {
            // use let to extract value from associated value in enum
            case .shipping(let weight): 
                return weight * 2
            case .cloudDigital:
                return 0
            }
    }
}

func sendOrderInformation(of productType: ProductType, in edition: Edition, by deliveryMethod: DeliveryMethod) {
  print("\nThank you for purchasing the \(edition.rawValue) edition of \(productType.rawValue)\n")
  switch deliveryMethod {
  case .shipping:
    print("Your order will be shipped to you at a cost of $\(deliveryMethod.shippingCost)\n")
  case .cloudDigital(let isLifetime):
    if isLifetime {
      print("You have lifetime cloud access")
    } else {
      print("You can access your subscription information on the cloud\n")
    }
  }
}

displayProductOffering()
var myEdition = Edition.basic
myEdition.upgrade()
sendOrderInformation(of: ProductType.aceRepository, in: myEdition, by: DeliveryMethod.shipping(weight: 1))