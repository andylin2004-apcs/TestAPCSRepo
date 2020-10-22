import Foundation

extension Bool {
    var intValue: Int {
        return self ? 1 : 0
    }
}

func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double{
    return ((y2-y1)*(y2-y1) + (x2-x1)*(x2-x1)).squareRoot()
}

func classify(x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double) -> String{
	if distance(x1: x1,y1: y1,x2: x2,y2: y2) == distance(x1: x3,y1: y3,x2: x2,y2: y2) && distance(x1: x3,y1: y3,x2: x2,y2: y2) == distance(x1: x1,y1: y1,x2: x3,y2: y3){
		return "Equilateral"
	}else if (distance(x1: x1,y1: y1,x2: x2,y2: y2) == distance(x1: x3,y1: y3,x2: x2,y2: y2) && distance(x1: x3,y1: y3,x2: x2,y2: y2) != distance(x1: x1,y1: y1,x2: x3,y2: y3)) ||
  (distance(x1: x1,y1: y1,x2: x2,y2: y2) != distance(x1: x3,y1: y3,x2: x2,y2: y2) && distance(x1: x3,y1: y3,x2: x2,y2: y2) == distance(x1: x1,y1: y1,x2: x3,y2: y3)){
    return "Isosceles"
  }
	return "Scalene"
}
func switchClassify(x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double) -> String{
  let a = (distance(x1: x1,y1: y1,x2: x2,y2: y2) == distance(x1: x3,y1: y3,x2: x2,y2: y2)).intValue
  let b = (distance(x1: x3,y1: y3,x2: x2,y2: y2) == distance(x1: x1,y1: y1,x2: x3,y2: y3)).intValue
  let total = a+b
  switch total{
    case 2:
      return "Equilateral"
    case 1:
        return "Isosceles"
    default:
      return "Scalene"
  }
}

func perimeter(x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double) -> Double{
  return distance(x1: x1,y1: y1,x2: x2,y2: y2) + distance(x1: x3,y1: y3,x2: x2,y2: y2) + distance(x1: x3,y1: y3,x2: x2,y2: y2)
}

func area(x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double) -> Double{
  let s = perimeter(x1: x1,y1: y1,x2: x2,y2: y2,x3: x3,y3: y3)/2
  let a = distance(x1: x1,y1: y1,x2: x2,y2: y2)
  let b = distance(x1: x3,y1: y3,x2: x2,y2: y2)
  let c = distance(x1: x3,y1: y3,x2: x2,y2: y2)
  return (s*(s-a)*(s-b)*(s-c)).squareRoot()
}

print(distance(x1: 0, y1: 0, x2: 12, y2: 12))
print(classify(x1: 0,y1: 0,x2: 3,y2: 0,x3: 1.5,y3: 1.5*((3).squareRoot())))
print(switchClassify(x1: 0,y1: 0,x2: 3,y2: 0,x3: 1.5,y3: 1.5*((3).squareRoot())))
print(perimeter(x1: 0,y1: 0,x2: 3,y2: 0,x3: 1.5,y3: 1.5*((3).squareRoot())))
print(area(x1: 0,y1: 0,x2: 3,y2: 0,x3: 1.5,y3: 1.5*((3).squareRoot())))
