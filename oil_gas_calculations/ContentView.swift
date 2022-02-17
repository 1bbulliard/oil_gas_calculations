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
      
        VStack  {
            Image("oil_rig")
                .resizable()
               .frame(width: 385.0, height: 100.0, alignment: .center)
             //   .scaledToFit()
      //         .ignoresSafeArea()
            
            Divider()
      //      Text("Oil Gas Calculations")
           //     .font(.largeTitle)
        //        .fontWeight(.semibold)
        //
    
           
        NavigationView{
                List{
                    ScrollView {
                        
                    
                    Group{

                       
                    NavigationLink("Pressure Gradient--> ", destination: PressureGradientView())
                  //          .frame(width: 255.0, height: 150.0, alignment: .center)
                            .modify1()
                        Divider()
                    NavigationLink("Hydrostatic Pressure---->", destination: HydrostaticPressureView())
                            .modify1()
                     Divider()
                    }
                        Group {
                        NavigationLink("Convert Drilling pressure into mud weight-->", destination: nextview12())
                        Divider()
                        NavigationLink("Convert Specific Gravity-->", destination: specific_gravity())
                        Divider()
                        NavigationLink("Equivalent Circulating Density, ppg-->", destination: nextview14())
                        NavigationLink("Pump output-->", destination: pumpoutput())
                        Divider()
                            NavigationLink("Annular Velocity-->", destination: annular_velocity())
                            Divider()
                            //annular_velocity
                    }
                        
                    .modify1()
                    .navigationBarHidden(true)
                    }
        
                   
                    
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
                   
                        Text("Pressure Gradient")
                        .fontWeight(.semibold)
                        .padding(.all, 15.0)
                        .modify1()
                    Group {
        NavigationLink("Pressure Gradient - Using Mud Weight, ppg ", destination: nextview())
                            .modify1()
        NavigationLink("Pressure Gradient - Using Mud Weight, lb/ft³", destination: nextview2())
                            .modify1()
        NavigationLink("Pressure Gradient - Using Mud Weight, specific gravity", destination: nextview3())
                            .modify1()
        NavigationLink("Pressure Gradient bar/m - Using drill fluid density kg/l", destination: nextview4())
                            .modify1()
   //     NavigationLink("Pressure Gradient bar/10m - Using drill fluid density kg/l", //destination: nextview5())
          //                  .modify1()
        NavigationLink("S.i units calc - press grad using drill fluid dens kg/m**³", destination: nextview6())
                            .modify1()
        NavigationLink("Convert press grad to mud wt(ppg) using psi/ft", destination: nextview7())
                            .modify1()
        NavigationLink("Convert Drill fluid dens, kg/l using pressure gradient bar/m and bar/10m", destination: nextview8())
                            .modify1()
        NavigationLink("Convert Drilling fluid density, kg/m³ using kPa/m:", destination: nextview9())
                            .modify1()
                            
                //            .frame(width: 233, height: 3, alignment: .leading)
                    }                        }
                    .modify1()
   // Spacer()
               
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
                    Group{
                        
                    
                   Text("Hydrostatic pressure")
                            .fontWeight(.semibold)
                            .padding(.all, 15.0)
                        NavigationLink("Convert to Hydrostatic Pressure using 1). ppg and ft 2).psi/ft and vertical depth 3). mud wt 4).meters as depth, 5). metric 6). S.I. units calculation", destination: nextview10())
                        Divider()
                        NavigationLink("Convert to Hydrostatic Pressure using 1.Metric (hydrostatic pressure, bar and 2. S.I. Calculation (hydrostatic pressure kPa)", destination: nextview11())
                       
                    Spacer()
                    Spacer()
                    }
                    .modify1()
                    }
               }
  //      .navigationBarHidden(true)
                }
            }
    
}

struct pumpoutput: View {
   // @State var navigated = true
    var body: some View {
      
        VStack {
        NavigationView{
                List{
                    Group{
                        
                    
                   Text("Pump Output:")
                            .fontWeight(.semibold)
                            .padding(.all, 15.0)
                        NavigationLink("Pump output (Triplex Pump): ", destination: triplex_pumpview())
                        NavigationLink("Pump output (Duplex Pump): ", destination: duplex_pumpview())
                        Divider()
                        
                        
                       
                    Spacer()
                    Spacer()
                    }
                    .modify1()
                    }
               }
  //      .navigationBarHidden(true)
                }
            }
    
}

struct nextview: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack  {
            ScrollView{
                Group{
                    
                Text("Pressure Gradient using mud wt ppg:")
                        .modify3()
                        Spacer()
                Text("Enter mud wt ppg: ")
            TextField("Enter mud weight/ppg", text: $amt)
                        .modify1()
                    
                }
           
                Divider()
            let amtx = (amt as NSString).doubleValue
        Text("PSI/ft: \(psift(parm1: amtx, parm2: 2))")
                    .modifier(Modify1())
         Spacer()
        }
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
        VStack{
            ScrollView{
                Group{
                    
               Text("Pressure Gradient - Using Mud Weight, lb/ft³:")
                        .modify3()
                Text("Enter mud weight/lb/ft³")
                     
        TextField("Enter mud weight/lb/ft³", text: $amt)
             
                        .modify1()
        let amtx = (amt as NSString).doubleValue
        Text("PSI/ft: \(psift2(parm1: amtx, parm2: 2))")
                }

             
        Spacer()
    }
}
    }
}
func psift2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.006944
        return total}

struct nextview3: View   {
    @State private var amt = ""
    var body: some View {
        VStack  {
            ScrollView{
                Group{
                    
                    
               Text("Pressure Gradient - Using specific gravity:")
                        .modify3()
                Text("Enter mud weight/specific gravity:")
        TextField("Enter mud weight/specific gravity", text: $amt)
        
                    .modifier(Modify1())
        let amtx = (amt as NSString).doubleValue
        Text("PSI/ft: \(psift3(parm1: amtx, parm2: 2))")
                }
               
        Spacer()
    }
}
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
        VStack  {
            ScrollView{
                Group{
                    
               Text("Pressure Gradient - Using drilling fluid density kg/l):")
                        .modify3()
                Text("Enter Drilling fluid density kg/l")
            TextField("Enter drilling fluid density kg/l", text: $amt)
            //    Divider()
                        .modify1()
                     //   .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("-->Pressure gradient, bar/m: \(metricgrad(parm1: amtx, parm2: 2))")
        Text("-->Pressure gradient, bar/10m: \(metricgrad2(parm1: amtx, parm2: 2))")
                              
                }
             
          Spacer()
        }
        
    }
}
}
func metricgrad(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.0981
        return total}
func metricgrad2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.981
        return total}

struct nextview5: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack  {
            ScrollView{
                Group{
                    Text("Pressure Gradient - Using drilling fluid density(bar/10m):")
                             .modify3()
                
                Text("Enter drilling fluid density kg/l")
            TextField("Enter drilling fluid density kg/l", text: $amt)
                }

                .modify1()
                Divider()
        //   .background(.green)
         //               .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("Pressure gradient, bar/10m: \(metricgrad2(parm1: amtx, parm2: 2))")
                    .modifier(Modify1())
            Spacer()
        }
        
    }
}
}


struct nextview6: View {
    @State private var amt = ""
    //var amt = ""
    var body: some View {
        VStack  {
            ScrollView{
                Text("Pressure gradient(kPa/m) using drill fluid density,kg/m³")
                    .modify3()
                Text("Enter drilling fluid density kg/m3")
                    
            TextField("Enter drilling fluid density kg/m³", text: $amt)
                    .modify1()
        //   .background(.green)
        //                .keyboardType(.decimalPad)
            let amtx = (amt as NSString).doubleValue
        Text("press grad, kPa/m \(siunits_calc(parm1: amtx, parm2: 2))")
                    .modify1()
         Spacer()
        }
        
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
        VStack  {
            ScrollView{
                Text("Convert press grad to mud wt(ppg) using psi/ft")
                    .modify3()
                Text("Enter pressure gradient, psi/ft")
                
                Divider()
            TextField("Enter pressure gradient, psi/ft", text: $amt)
                    .modify1()
            let amtx = (amt as NSString).doubleValue
                Divider()
        Text("ppg/ mud weight: \(convtomud(parm1: amtx, parm2: 2))")
                    .modifier(Modify1())
        Text("lb/ft³/ mud weight: \(convtomud2(parm1: amtx, parm2: 2))")
                    .modifier(Modify1())
        Text("sg/ mud weight: \(convtomud3(parm1: amtx, parm2: 2))")
                    .modify1()
         Spacer()
        }
        
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
        VStack {
            ScrollView{
                Group{
                    Divider()
                    Text("Convert Drill fluid dens, kg/l using pressure gradient bar/m and bar/10m")
                        .modify3()
                    Text("Enter pressure Gradient, bar/m")
                    TextField("Enter pressure gradient, bar/m", text: $amt)
                        .modify1()
           Divider()
           }
               let amtx = (amt as NSString).doubleValue
           
                
                Group{
                    Divider()
        Text("Drill Dens, kg/l using bar/m:  \(drill_fluid_density(parm1: amtx, parm2: 2))")
                
                Divider()
    Text("Drill fluid Dens, kg/l using bar/10m:   \(drill_fluid_density2(parm1: amtx, parm2: 2))")
                   
                }
                .modify1()
                Divider()
          Spacer()
        }
        Spacer()
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
        VStack  {
            ScrollView{
                Text("Convert Drilling fluid density, kg/m³ using kPa/m:")
                    .modify3()
                Text("Enter pressure gradient,kPa/m")
              
            TextField("Enter pressure gradient, kPa/m", text: $amt)
                    .modify1()

            let amtx = (amt as NSString).doubleValue
        Text("Drilling Fluid density, kg/m₃ \(drill_fluid_density4(parm1: amtx, parm2: 2))")
                    .modify1()
          Spacer()
        }
        Spacer()
    }
}
}
func drill_fluid_density4(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 102
        return total}

struct nextview10: View {
    @State private var amt = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
  //  @FocusState private var amountisfocused: Bool
    //var amt = ""
    var body: some View {
        
        VStack  {
            
            ScrollView{
        Group {
            Divider()
            Text("Convert to Hydrostatic Pressure using mud wt ppg, mud wt psi, mud wt lb/ft**3,unit of depth/meters:")
                .modify3()
            Text("Enter mud weight (ppg)")
            TextField("Enter mud weight(ppg)", text: $amt)
                .modify1()
             Divider()
            Text("Enter true vert depth (ft)")
            TextField("Enter true vert depth (ft)", text: $amt2)
                .modify1()
            
            Divider()
                }

        
            Group {
                Text("Enter PSI/ft")
                 
                TextField("Enter PSI/ft", text: $amt3)
                .modify1()
                Divider()
                
                
                Text("Enter mud wt(lb/ft 3")
                    
                TextField("Enter mud wt(lb/ft 3)", text: $amt4)
               .modify1()
                Divider()
                Text("Enter true vertical depth, meters:")
                     
                TextField("Enter true vertical depth, meters:", text: $amt5)
               .modify2()
                Divider()
                
                 }
                 
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
                let amtx5 = (amt5 as NSString).doubleValue
                
        Text("Hydrostat press/psi(using ppg):  \(hd1(parm1: amtx, parm2: amtx2))")
                    .modify1()
        Text("Hydrostat press/psi(using psi/ft:  \(hd2(parm1: amtx3, parm2: amtx2))")
                    .modify1()
        Text("Hydrostat press/psi(using mud wt lb/ft3:  \(hd3(parm1: amtx4, parm2: amtx2))")
                    .modify1()
        Text("Hydrostat press, psi, using meters as depth  \(hd4(parm1: amtx, parm2: amtx5))")
                            .modify1()
                    
     //     Spacer()
                    }
                                                      }
         
        
}
}
func hd1(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * parm2 * 0.052
        return total}
func hd2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * parm2
        return total}
func hd3(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * parm2 * 0.006944
        return total}
func hd4(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.052 * parm2 * 3.281
        return total}

struct nextview11: View {
    @State private var amt = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    //var amt = ""
    var body: some View {
        VStack {
            ScrollView{
                Group{
                    Divider()
                    Text("Hydrostatic pressure using 1). Metric 2). S.I Calc:")
                        .modify3()
            Text("Enter Drilling Fluid Density,kg/l:")
                      
            TextField("Enter Drilling Fluid Density,kg/l", text: $amt)
            .modify1()
           Divider()
                    
            Text("Enter Drilling Fluid Density,kg/m**3:")
                         
            TextField("Enter pressure gradient, bar/10m", text: $amt2)
            .modify1()
            Divider()
                    
            Text("Enter true vertical depth:")
                        
            TextField("Enter true vertical depth(meters):", text: $amt3)
            .modify2()
                }
              //  .modify1()
      
            let amtx = (amt as NSString).doubleValue
            let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                    
                Group{
                    
                
                Divider()
        Text("Hydrostatic Pressure, bar:  \(h_pressure_bar(parm1: amtx, parm2: amtx3))")
                
                Divider()
    Text("Hydrostatic pressure kPa   \(h_pressure_kpa(parm1: amtx2, parm2: amtx3))")
                   
                }
                .modifier(Modify1())
                Divider()
          Spacer()
        }
        Spacer()
    }
}
}
func h_pressure_bar(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = parm1 * 0.0981 * parm2
        return total}
func h_pressure_kpa(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 / 102) * parm2
        return total}

//
// Convert drilling pressure into mud weight
//
struct nextview12: View {
    @State private var amt = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
  //  @FocusState private var amountisfocused: Bool
    //var amt = ""
    var body: some View {
        
        VStack  {
            
            ScrollView{
        Group {
                Divider()
            Text("Convert Drilling Pressure to Mud Weight using PSI,depth(meters+feet):")
                .modify3()
                Text("Enter pressure(PSI)")
                TextField("Enter pressure(PSI)", text: $amt)
                .modify1()
                Divider()
                
                Text("Enter true vert depth (ft)")
                TextField("Enter true vert depth (ft)", text: $amt2)
                .modify1()
                Text("Enter true vertical depth (meters):")
                TextField("Enter true vertical depth (meters)", text: $amt3)
                .modify3()
                Divider()
                    }
           
        
        Group {
                Text("Enter pressure bar:")
                .modify1()
                TextField("Enter pressure bar:", text: $amt4)
                .modify1()
                Divider()
               
                Text("Enter pressure  kPa")
                .modify1()
                TextField("Enter pressure kPas", text: $amt5)
                .modify2()
                Divider()
                }
            
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
                let amtx5 = (amt5 as NSString).doubleValue
                
        Text("Mud Weight PPG (using feet):  \(mw1(parm1: amtx, parm2: amtx2))")
                    .modify1()
        Text("Mud Weight PPG (using meters):  \(mw2(parm1: amtx, parm2: amtx3))")
                    .modify1()
        Text("Equivalent drilling fluid density, kg/l  \(eq1(parm1: amtx4, parm2: amtx3))")
                    .modify1()
        Text("Equivalent drilling fluid density, kg/m**3  \(eq2(parm1: amtx5, parm2: amtx3))")
                            .modify1()
                    
     //     Spacer()
                    }
                                                      }
         
        
}
}
func mw1(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 / parm2) / 0.052
        return total}
func mw2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = ((parm1 / 0.052) / parm2) / 3.281
        return total}
func eq1(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 / 0.0981) / parm2
        return total}
func eq2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 * 102) / parm2
        return total}


//
// Convert Specific Gravity
//
struct specific_gravity: View {
    @State private var amt = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""


    var body: some View {
        
        VStack  {
            
            ScrollView{
        Group {
                Divider()
            Text("Convert Specific Gravity:")
                .modify3()
                Text("Enter mud wt (ppg)")
                TextField("Enter mud wt (ppg)", text: $amt)
                .modify1()
                Divider()
                
                Text("Enter Pressure Gradient (psi/ft)")
                TextField("Enter Pressure Gradient (psi/ft)", text: $amt2)
                .modify1()
            
                Text("Enter mud weight, lb/ft**3")
                TextField("Enter mud weight, lb/ft**3", text: $amt3)
                .modify1()
            Divider()
                    }
           
        
        Group {
                Text("Enter specific gravity:")
             //   .modify1()
                TextField("Enter specific gravity:", text: $amt4)
                .modify2()
                Divider()
               

                }
            
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
           //     let amtx5 = (amt5 as NSString).doubleValue
                
        Text("Specific gravity using mud weight, ppg:  \(sp1(parm1: amtx, parm2: amtx2))")
                    .modify1()
        Text("Specific gravity using pressure grad, psi/ft: \(sp2(parm1: amtx2, parm2: amtx3))")
                    .modify1()
        Text("Specific gravity using mud wt, lb/ft**3:  \(sp3(parm1: amtx3, parm2: amtx3))")
                    .modify1()
        Text("Mud weight, ppg using specific gravity: \(sp4(parm1: amtx4, parm2: amtx3))")
                            .modify1()
                Text("Pressure gradiebnt, psi/ft using specific gravity:  \(sp5(parm1: amtx4, parm2: amtx3))")
                                    .modify1()
                Text("mud weight using spec gravity:  \(sp6(parm1: amtx4, parm2: amtx3))")
                                    .modify1()
                    
     //     Spacer()
                    }
                                                      }
         
        
}
}
func sp1(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 / 8.33)
        return total}
func sp2(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 / 0.433)
        return total}
func sp3(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 / 62.4)
        return total}
func sp4(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 * 8.33)
        return total}
func sp5(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 * 0.433)
        return total}
func sp6(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 * 62.4)
        return total}

//
// Convert Specific Gravity
//
struct nextview14: View {
    @State private var amt = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
    @State private var amt8 = ""
    @State private var amt9 = ""
    @State private var amt10 = ""



    var body: some View {
        
        VStack  {
            
            ScrollView{
        Group {
                Divider()
                Text("Equivalent Circulating Density, PPG:")
                .modify3()
                Text("Enter Annular pressure loss, psi")
                TextField("Enter Annular pressure loss, psi", text: $amt)
                .modify1()
                Divider()
                
                Text("Enter true vertical depth, ft:")
                TextField("Enter true vertical depth, ft:", text: $amt2)
                .modify1()

                
                Text("Enter mud weight, ppg")
                TextField("Enter mud weight, ppg", text: $amt3)
                .modify1()

                Divider()
                    }
            
        
        Group {
                Text("Enter annualar pressure loss, bar")
                TextField("Enter annual pressure loss, bar", text: $amt4)
                .modify1()

                Divider()
               
               Text("Enter Total vertical depth (meters): ")
            
               TextField("Enter total vertical depth (meters): ", text: $amt5)
                .modify1()

               Divider()
               Text("Enter mud weight, kg/l ")
               TextField("Enter mud weight, kg/l ", text: $amt6)
                .modify1()

               Divider()
          }
        
        Group {
           Text("Enter Annular pressure loss, kPa: ")
       //     .modify1()
           TextField("Enter Annular pressure loss, kPa: ", text: $amt7)
            .modify1()
           Divider()
            
           Text("Enter mud density, kg/m: ")
      //      .modify1()
           TextField("Enter mud density,kg/m: ", text: $amt8)
          .modify1()
            Divider()
            
                }
                
                Group {
                   Text("Enter Leak off pressure, psi: ")
               //     .modify1()
                   TextField("Enter leak off pressure, psi: ", text: $amt9)
                    .modify1()
                   Divider()
                    
                   Text("Enter Casing shoe total vertical depth, ft ")
            //        .modify1()
                   TextField("Enter Casing shoe total vertical depth, ft  ", text: $amt10)
                  .modify2()
                    Divider()
                    
                        }
            
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
                let amtx5 = (amt5 as NSString).doubleValue
                let amtx6 = (amt6 as NSString).doubleValue
                let amtx7 = (amt7 as NSString).doubleValue
                let amtx8 = (amt8 as NSString).doubleValue
                let amtx9 = (amt9 as NSString).doubleValue
                let amtx10 = (amt10 as NSString).doubleValue
                
        Text("Equivalent Circulating Density, ppg:   \(ecd1(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .modify1()
        Text("Equivalent Drilling Density,m kg/l \(ecd2(parm1: amtx4, parm2: amtx5, parm3: amtx6))")
                    .modify1()
        Text("Equivalent circulating Density:  \(ecd3(parm1: amtx7, parm2: amtx8, parm3: amtx5))")
                    .modify1()
        Text("Maximum allowable mud weight from leak off test \(ecd4(parm1: amtx9, parm2: amtx10, parm3: amtx3))")
                            .modify1()
          
                    
     //     Spacer()
                    }
                                                      }
         
        
}
}
func ecd1(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = ((parm1 / 0.052) / parm2) + parm3
        return total}
func ecd2(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = (((parm1 / 0.0981)) / parm2) + parm3
        return total}
func ecd3(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = (((parm1 * 102) / parm3)) + parm2
        return total}
func ecd4(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = (((parm1 / 0.052) / parm2) + parm3)
        return total}

struct triplex_pumpview: View {
//    struct nextview14: View {


    @State private var amt = ""
        @State private var amt2 = ""
        @State private var amt3 = ""
        @State private var amt4 = ""
        @State private var amt5 = ""
        @State private var amt6 = ""
        @State private var amt7 = ""
        @State private var amt8 = ""
        @State private var amt9 = ""
        @State private var amt10 = ""

    var body: some View {
        
        VStack  {
            
            ScrollView{
        Group {
                
            Text("Triplex Pump:")
                .modify3()
            Divider()
     
            
                Text("Enter liner diameter,inches:")
       //         .modify1()
                TextField("Enter liner diameter,in:", text: $amt)
                .modify1()
                Divider()
              

                Text("Enter stroke length, inches")
       //         .modify1()
                TextField("Enter true vertical depth, ft:", text: $amt2)
                .modify1()

                Text("Enter strokes per minute:")
         //       .modify1()
                TextField("Enter strokes per minute:", text: $amt3)
                .modify2()

                Divider()
                    }
            

                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
            
               
        Text("Formula 1: Pump output, bbl/stk:  \(tpf1(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .modify1()
        let amtx4 = 0.95 * tpf1(parm1: amtx, parm2: amtx2, parm3: amtx3)
        Text("Formula 1: Pump output, bbl/stk(95%):  \(amtx4)")
                            .modify1()
        Text("Formula 2: Pump output, gpm \(tpf2(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .modify1()
        
                            .modify1()
          
                    
     //     Spacer()
                    }
                                                      }
         
        
}
}
func tpf1(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = pow(parm1,2) * 0.000243 *  parm2
        return total}
func tpf2(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = (((3 * (pow(parm1,2)) * 0.7854) * parm2) * 0.00411 * parm3)
        return total}


struct duplex_pumpview: View {
//    struct nextview14: View {


    @State private var amt = ""
        @State private var amt2 = ""
        @State private var amt3 = ""
        @State private var amt4 = ""
        @State private var amt5 = ""
        @State private var amt6 = ""
        @State private var amt7 = ""
        @State private var amt8 = ""
        @State private var amt9 = ""
        @State private var amt10 = ""

    var body: some View {
        
        VStack  {
            
            ScrollView{
        Group {
                
            Text("Duplex Pump:")
                .modify3()
            Divider()
            Text("Enter stroke length, inches")
     //       .modify1()
            TextField("Enter stroke length, inches:", text: $amt)
            .modify1()
            
                Text("Enter liner diameter,inches:")
      //          .modify1()
                TextField("Enter liner diameter,in:", text: $amt2)
                .modify1()
                Divider()
        }
                Group {

                

                Text("Enter  rod diameter, inches:")
        //        .modify1()
                TextField("Enter  rod diameter, inches", text: $amt3)
                .modify1()
            
            Text("Enter liters / minute:")
       //     .modify1()
            TextField("Enter liters/minute:", text: $amt6)
            .modify1()

                    Text("Enter pump speed, spm:")
           //         .modify1()
                    TextField("Enter pump speed, spm:", text: $amt7)
                    .modify2()
                Divider()
                    }
            

                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx6 = (amt6 as NSString).doubleValue
                let amtx7 = (amt7 as NSString).doubleValue
               
        Text("Formula 1: Pump output, bbl/stk:  \(dpf1(parm2: amtx2, parm1: amtx, parm3: amtx3))")
                    .modify1()
        let amtx4 = 0.85 * dpf1(parm2: amtx2, parm1: amtx, parm3: amtx3)
        Text("Formula 1: Pump output, bbl/stk(85%):  \(amtx4)")
                            .modify1()
        Text("Formula 2: Pump output, bbl/stk \(dpf2(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .modify1()
        let amtx5 = 0.85 * (dpf2(parm1: amtx, parm2: amtx2, parm3: amtx3))
         Text ("Formula 2: adjust pump output for 85% efficiancy: \(amtx5)")
                    .modify1()
                
                Text("Pump output (liters/minute): \(dpf3(parm1: amtx6, parm2: amtx7, parm3: amtx3))")
                            .modify1()
                    
     //     Spacer()
                    }
                                                      }
         
        
}
}
func dpf1(parm2: Double, parm1: Double, parm3: Double) -> Double {
        var total: Double = 0
    var total2: Double = 0
    var total3: Double = 0
    
    total = 0.000324 * pow(parm2,2) *  parm1
    total2 = -0.000162 * (pow(parm3,2) * parm1)
    total3 = total + total2
        return total3}

func dpf2(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = 0.000162 * parm1 * (2 * (pow(parm2,2 )) - (pow(parm3,2)))
        return total}
func dpf3(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total =  parm1 * parm2
        return total}

struct annular_velocity: View {
//    struct nextview14: View {


    @State private var amt = ""
        @State private var amt2 = ""
        @State private var amt3 = ""
        @State private var amt4 = ""
        @State private var amt5 = ""
        @State private var amt6 = ""
        @State private var amt7 = ""
        @State private var amt8 = ""
        @State private var amt9 = ""
        @State private var amt10 = ""

    var body: some View {
        
        VStack  {
            
            ScrollView{
        Group {
                
            Text("Annular Velocity:")
          //      .font(.headline)
           //     .bold()
                .modify3()
            Text("Input for formula 1:")
            Divider()
            Text("Enter pump output, bbl/min:")
          //  .modify1()
            TextField("Enter pump output, bbl/min:", text: $amt4)
            .modify1()
            
                Text("Enter annual capacity, bbl/ft:")
          //      .modify1()
                TextField("Enter annual capacity, bbl/ft:", text: $amt5)
                .modify1()
                Divider()
        }
                Group {

                Text("Input for formula 2:")

                Text("Enter  circulation rate, gpm:")
           //     .modify1()
                TextField("Enter  circulation rate, gpm:", text: $amt)
                .modify1()
            
            Text("Enter inside diameter of casing or hole size, in:")
        //    .modify1()
            TextField("Enter inside diameter of casing or hole size, in:", text: $amt2)
            .modify1()
                }
                Group {
                    Text("Enter outside diameter of pipe, tubing or collars, in.:")
             //       .modify1()
                    TextField("Enter outside diameter of pipe, tubing or collars, in.:", text: $amt3)
                    .modify1()
                    
                    Text("Input for formula 3:")
                    Text("Enter PO, bbl/min")
             //       .modify1()
                    TextField("Enter outside diameter of pipe, tubing or collars, in.:", text: $amt6)
                    .modify1()
                    Text("Enter hole size, inches:")
               //     .modify1()
                    TextField("Enter hole size, inches:", text: $amt7)
                    .modify1()
                    Text("Enter OD, inches:")
                //    .modify1()
                    TextField("Enter OD, inches:", text: $amt8)
                    .modify2()
                Divider()
                    }
            

                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
                let amtx5 = (amt5 as NSString).doubleValue
                let amtx6 = (amt6 as NSString).doubleValue
                let amtx7 = (amt7 as NSString).doubleValue
                let amtx8 = (amt8 as NSString).doubleValue
               
        Text("Formula 1: annular velocity, ft/min:  \(av1(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                    .modify1()
       
        
        Text("Formula 2: AV ft/min: \(av2(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .modify1()
      
        Text("Formula 3: AV ft/min: \(av3(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                            .modify1()
        Text("Formula 3: AV ft/sec: \(av4(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                                    .modify1()
              
                
                    
     //     Spacer()
                    }
                                                      }
         
        
}
}
func av1(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total =  parm1 /  parm2
            return total}

func av2(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total = (24.5 * parm1) / ((pow(parm2,2)) - (pow(parm3,2)))
        return total}

func av3(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total =  (parm1 * 1029.4) / ((pow(parm2,2)) - (pow(parm3,2)))
        return total}
func av4(parm1: Double, parm2: Double, parm3: Double) -> Double {
        var total: Double = 0
    total =  (parm1 * 17.16) / ((pow(parm2,2)) - (pow(parm3,2)))
        return total}

struct Modify1: ViewModifier {
    func body(content: Content) -> some View {
        content
            //frame(width:250, height: 22, alignment: .leading)
          //  .font(.system(size: 12))
            .font(.system(size: 18))
            .foregroundColor(Color.black)
            .background(Color.teal.cornerRadius(10))
            .background(RoundedRectangle(cornerRadius: 14))
      //      .background(Color.green)
            .keyboardType(.decimalPad)
            .padding(.horizontal,22)
            .padding(.vertical,1)
            
            
        //    .onTapGesture {self.body(content: KeyboardShortcut)}
       //     .onTapGesture {
       //         self.}
         //   .onTapGesture {
         //               self.endEditing()
           
            
    }
    
}

extension View {
   func modify1() -> some View {
       modifier(Modify1())
    }
}
struct Modify2: ViewModifier {
    func body(content: Content) -> some View {
        content
          //  .frame(width:250, height: 22, alignment: .leading)
            .font(.system(size: 18))
            .foregroundColor(Color.black)
            .background(Color.teal.cornerRadius(10))
            .background(RoundedRectangle(cornerRadius: 14))
      //      .background(Color.green)
        //    .keyboardType(.decimalPad)
         //   .padding(.horizontal,20)
            .padding(.horizontal,20)
            .padding(.vertical,1)
            
            
        //    .onTapGesture {self.body(content: KeyboardShortcut)}
       //     .onTapGesture {
       //         self.}
         //   .onTapGesture {
         //               self.endEditing()
           
            
    }
    
}

extension View {
   func modify2() -> some View {
       modifier(Modify2())
    }
}

struct Modify3: ViewModifier {
    func body(content: Content) -> some View {
        content
            
            .font(.headline)
            Divider()
          // .bold()
            
         //   .padding(.horizontal,20)
            
            
            
        
            
    }
    
}

extension View {
   func modify3() -> some View {
       modifier(Modify3())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
      // HydrostaticPressureView()
      //  PressureGradientView()
    //nextview10()
     }
}
