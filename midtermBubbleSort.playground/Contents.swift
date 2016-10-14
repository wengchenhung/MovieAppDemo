
// j不斷增加，而每次都跟最前面的i進行比較
//func sortArray(array1:[Int], array2:[Int]) -> [Int] {
//    var array3 = array1 + array2
//    array3 = Array(Set(array3))
//    for var i in 0 ..< array3.count - 1 {
//        for var j in 0 ..< array3.count - 1 {
//            if (array3[i] > array3[j+1] && i<j+1){
//                swap(&array3[i], &array3[j+1])
//                
//            }
//        }
//    }
//    return array3
//}
//
//sortArray(array1:[2,5,73,23,566,43,96,1],array2:[55,74,32,11,28,452,132])

func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    var array3 = array1 + array2
    array3 = Array(Set(array3))
    for var i in 0 ..< array3.count - 2 {
        for var j in 0 ..< array3.count - 2 - i {
            if array3[j] > array3[j+1]{
                swap(&array3[j], &array3[j+1])
                
            }
        }
    }
    return array3
}

sortArray(array1:[2,5,73,23,566,43,96,1],array2:[55,74,32,11,28,452,132])
