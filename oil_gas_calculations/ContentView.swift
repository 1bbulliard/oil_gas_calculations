//
//  ContentView.swift
//  oil_gas_calculations
//
//  Created by Bob Bulliard on 1/23/22.
//

//
//  ContentView.swift
//  Shared
//
//  Created by Bob Bulliard on 10/26/21.
//

import SwiftUI
struct ContentView: View {
   // @State var navigated = true
    var body: some View {
      
        VStack {
            Image("oil_rig")
                .resizable()
               .frame(width: 320.0, height: 100.0, alignment: .center)
             //   .scaledToFit()
               .ignoresSafeArea()
            
            Divider()
            Text("Oil Gas Calculations")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.all, 5.0)
    
           
        NavigationView{
                List{
                    Group{
                    NavigationLink("Pressure Gradient ", destination: PressureGradientView())
                    NavigationLink("Hydrostatic Pressure", destination: HydrostaticPressureView())
                    }
                    .navigationBarHidden(true)
               }
                }
            }
    
}
}


struct PressureGradientView: View {
   
    var body: some View {
      VStack {
            NavigationView{
                List{
                    Group {
                        Text("Pressure Gradient")
                        .fontWeight(.semibold)
                        .padding(.all, 15.0)
        NavigationLink("Pressure Gradient - Using Mud Weight, ppg ", destination: nextview())
        NavigationLink("Pressure Gradient - Using Mud Weight, lb/ft³", destination: nextview2())
        NavigationLink("Pressure Gradient - Using Mud Weight, specific gravity", destination: nextview3())
        NavigationLink("Pressure Gradient bar/m - Using drill fluid density kg/l", destination: nextview4())
        NavigationLink("Pressure Gradient bar/10m - Using drill fluid density kg/l", destination: nextview5())
        NavigationLink("S.i units calc - pressure gradient using drilling fluid density kg/m**³", destination: nextview6())
        NavigationLink("Convert pressure gradient to mud weight(ppg, lb/ft,sg) using psi/ft", destination: nextview7())
        NavigationLink("Convert Drilling fluid density, kg/l using pressure gradient bar/m and bar/10m", destination: nextview8())
        NavigationLink("Convert Drilling fluid density, kg/m³", destination: nextview9())
                                        }
    
               }
               .navigationBarHidden(true)
            }
            
  
            
    
}
}
}

struct HydrostaticPressureView: View {
   // @State var navigated = true
    var body: some View {
      
        VStack {
        NavigationView{
                List{
                   Text("Hydrostatic pressure")
                            .fontWeight(.semibold)
                            .padding(.all, 15.0)
                        NavigationLink("Convert to Hydrostatic Pressure using 1). ppg and ft 2).psi/ft and vertical depth 3). mud wt 4).meters as depth, 5). metric 6). S.I. units calculation", destination: nextview9())
                    }
               }
                }
            }
    
}
struct nextview: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack{
            TextField("Enter mud weight/ppg", text: $amt)
           .background(.green)
                        .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("PSI/ft: \(psift(parm1: amtx, parm2: 2))")
        .background(.green)
            
        }
        
    }
}
func psift(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.052
        return total}

struct nextview2: View {
    @State private var amt = ""
    var body: some View {
        TextField("Enter mud weight/lb/ft³", text: $amt)
        .background(.green)
        let amtx = (amt as NSString).doubleValue
        Text("PSI/ft: \(psift2(parm1: amtx, parm2: 2))")
        .background(.green)
    }
}
func psift2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.006944
        return total}

struct nextview3: View {
    @State private var amt = ""
    var body: some View {
        TextField("Enter mud weight/specific gravity", text: $amt)
        .background(.green)
        let amtx = (amt as NSString).doubleValue
        Text("PSI/ft: \(psift3(parm1: amtx, parm2: 2))")
        .background(.green)
    }
}
func psift3(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.433
        return total}

struct nextview4: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack{
            TextField("Enter drilling fluid density kg/l", text: $amt)
           .background(.green)
                        .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("Pressure gradient, bar/m: \(metricgrad(parm1: amtx, parm2: 2))")
        .background(.green)
            
        }
        
    }
}
func metricgrad(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.0981
        return total}

struct nextview5: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack{
            TextField("Enter drilling fluid density kg/l", text: $amt)
           .background(.green)
                        .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("Pressure gradient, bar/10m: \(metricgrad2(parm1: amtx, parm2: 2))")
        .background(.green)
        }
        
    }
}
func metricgrad2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.981
        return total}

struct nextview6: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack{
            TextField("Enter drilling fluid density kg/m³", text: $amt)
           .background(.green)
                        .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("S.i.units calculation - pressure gradient, kPa/m \(siunits_calc(parm1: amtx, parm2: 2))")
        .background(.green)
            
        }
        
    }
}
func siunits_calc(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 / 102
        return total}

struct nextview7: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack{
            TextField("Enter pressure gradient, psi/ft", text: $amt)
           .background(.green)
                        .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("ppg/ mud weight: \(convtomud(parm1: amtx, parm2: 2))")
                .background(.green)
        Text("lb/ft³/ mud weight: \(convtomud2(parm1: amtx, parm2: 2))")
                .background(.green)
        Text("sg/ mud weight: \(convtomud3(parm1: amtx, parm2: 2))")
        .background(.green)
            
        }
        
    }
}
func convtomud(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 / 0.052
        return total}
func convtomud2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 / 0.006944
        return total}
func convtomud3(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 / 0.433
        return total}

struct nextview8: View {
    @State private var amt = ""
    @State private var amt2 = ""
    //var amt = ""
    var body: some View {
        VStack{
            TextField("Enter pressure gradient, bar/m", text: $amt)
                .background(.green)
            TextField("Enter pressure gradient, bar/10m", text: $amt2)
           .background(.green)
                        .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
            let amtx2 = (amt2 as NSString).doubleValue
        Text("Drilling fluid Density, kg/l using bar/m:  \(drill_fluid_density(parm1: amtx, parm2: 2))")
            .background(.green)
    Text("Drilling fluid Density, kg/l using bar/10m:   \(drill_fluid_density2(parm1: amtx2, parm2: 2))")
        .background(.green)
            
        }
        
    }
}

func drill_fluid_density(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 / 0.0981
        return total}
func drill_fluid_density2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 / 0.981
        return total}

struct nextview9: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack{
            TextField("Enter pressure gradient, kPa/m", text: $amt)
           .background(.green)
                        .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("Drilling Fluid density, kg/m₃ \(drill_fluid_density4(parm1: amtx, parm2: 2))")
        .background(.green)
            
        }
        
    }
}
func drill_fluid_density4(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 102
        return total}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
     }
}
