class TipCalculator{
    let total : Double
    let taxPct : Double
    let subtotal : Double
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (total+1)
    }
    func calcTipWithTipPct(tipPct:Double)->Double {
        return subtotal * tipPct
    }
    func returnPossibleTips() ->[Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var retval = [Int: Double]()
        for possibleTips in possibleTipsInferred{
            let intPct = Int(possibleTips*100)
            retval[intPct] = calcTipWithTipPct(possibleTips)
        }
        return retval
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()





class x {
    int r;
}
