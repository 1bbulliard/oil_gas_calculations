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
                .frame(width: 385.0, height: 100.0, alignment: .leading)
             //   .scaledToFit()
      //         .ignoresSafeArea()
            
            Divider()
      
           
        NavigationView{
                List{
                   ScrollView  {
                        
                    
                    Group{

                    Text("scroll slider is to the right------------>")
                            .font(.system(size: 18))
                            .foregroundColor(Color.white)
                            .background(Color.black.cornerRadius(10))
                            .background(RoundedRectangle(cornerRadius: 14))
                    NavigationLink("Pressure Gradient--> ", destination: PressureGradientView())
                   //         .frame(width: 255.0, height: 150.0, alignment: .leading)
                            .modify1()
               //         Divider()
                    NavigationLink("Hydrostatic Pressure---->", destination: HydrostaticPressureView())
                            .modify1()
                //     Divider()
                    }
                        Group {
                        NavigationLink("Convert Drilling pressure into mud weight-->", destination: nextview12())
                  //      Divider()
                        NavigationLink("Convert Specific Gravity-->", destination: specific_gravity())
                  //       Divider()
                        }
                        .modify1()
                        Group {
                        NavigationLink("Equivalent Circulating Density, ppg-->", destination: nextview14())
                   //         Divider()
                        NavigationLink("Pump output-->", destination: pumpoutput())
                   //     Divider()
                        NavigationLink("Annular Velocity-->", destination: annular_velocity())
                    //    Divider()
                        NavigationLink("Capacity Formulas-->", destination: capacity_formulas())
                    //        Divider()
                        }
                        .modify1()
                        Group {
                        
                          
                            
                            NavigationLink("Capacity Tubular and open holes-->", destination: capacity_hole())
                      //          Divider()
                            NavigationLink("amount of cuttings drilled per foot of hole drilled:-->", destination: cuttings_drilled())
                       //         Divider()
                            NavigationLink("Control Drilling maximum drilling rate(MDR), when drilling large hole ( 14 3/4 + Inches):-->", destination: Control_Drilling())
                          //      Divider()
                            NavigationLink("Buoyancy factor using mud weight ppg and mud wieght, lb/ft**3:-->", destination: buoyancy_factor())
                      //          Divider()
                            NavigationLink("Hydrostatic pressure Decrease pulling dry and wet pipe-->", destination: hydrostatic_pressure_pulling_pipe())
                      //          Divider()
                            
                        }
                        .modify1()
                       Group {
                           NavigationLink("Calculate overbalance  due to falling mud level (wet/dry)->", destination: overbalance_pulling_pipe())
                           NavigationLink("Hydraulic horsepower calculation:", destination: Hydraulic_horsepower())
                       //        Divider()
                            NavigationLink("For problems or issues-->", destination: sendit())
                        //        Divider()
                            
                    }
                 //       .frame(width: 300, height: 100, alignment: .leading)

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
                      //  .padding(.all, 15.0)
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
                            
               
                    }                        }
                   

               
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
                 //       Divider()
                        NavigationLink("Convert to Hydrostatic Pressure using 1.Metric (hydrostatic pressure, bar and 2. S.I. Calculation (hydrostatic pressure kPa)", destination: nextview11())
                       
            //        Spacer()
             //       Spacer()
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
                        .frame(width:380, height: 62, alignment: .leading)
            TextField("Enter mud weight/ppg", text: $amt)
                        .modify1()
                    
                }
           
                Divider()
            let amtx = (amt as NSString).doubleValue
                Text("--------------")
        Text("PSI/ft: \(psift(parm1: amtx, parm2: 2))")
                    .frame(width:380, height: 62, alignment: .leading)
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
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                Text("Enter mud weight/lb/ft³")
                        .frame(width:380, height: 62, alignment: .leading)
                     
        TextField("Enter mud weight/lb/ft³", text: $amt)
             
                        .modify1()
        let amtx = (amt as NSString).doubleValue
                    Text("---------------")
        Text("PSI/ft: \(psift2(parm1: amtx, parm2: 2))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
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
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Text("Enter mud weight/specific gravity:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter mud weight/specific gravity", text: $amt)
                    
                        .modifier(Modify1())
                    let amtx = (amt as NSString).doubleValue
                    Text("------------")
                    Text("PSI/ft: \(psift3(parm1: amtx, parm2: 2))")
                        .frame(width:380, height: 62, alignment: .leading)
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
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Text("Enter Drilling fluid density kg/l")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter drilling fluid density kg/l", text: $amt)
                    //    Divider()
                        .modify1()
                    //   .keyboardType(.decimalPad)
                    let amtx = (amt as NSString).doubleValue
                    Group{
                        Text("---------------")
                        Text("-->Pressure gradient, bar/m: \(metricgrad(parm1: amtx, parm2: 2))")
                            .frame(width:380, height: 62, alignment: .leading)
                        Text("-->Pressure gradient, bar/10m: \(metricgrad2(parm1: amtx, parm2: 2))")
                            .frame(width:380, height: 62, alignment: .leading)
                    }
                    .modify1()
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
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    
                    Text("Enter drilling fluid density kg/l")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    
                    TextField("Enter drilling fluid density kg/l", text: $amt)
                        .modify1()
                }
                
           
             
                let amtx = (amt as NSString).doubleValue
                Text("---------------")
                Text("Pressure gradient, bar/10m: \(metricgrad2(parm1: amtx, parm2: 2))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                //  Spacer()
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
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify3()
                Text("Enter drilling fluid density kg/m3")
                    .frame(width:380, height: 62, alignment: .leading)
                
                TextField("Enter drilling fluid density kg/m³", text: $amt)
                    .modify1()
                
                let amtx = (amt as NSString).doubleValue
                Text("------------")
                Text("press grad, kPa/m \(siunits_calc(parm1: amtx, parm2: 2))")
                    .frame(width:380, height: 62, alignment: .leading)
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
            Text("---------------")
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
                    
                    Text("Convert Drill fluid dens, kg/l using pressure gradient bar/m and bar/10m")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Text("Enter pressure Gradient, bar/m")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter pressure gradient, bar/m", text: $amt)
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Divider()
                }
                let amtx = (amt as NSString).doubleValue
                
                
                Group{
                    Text("-------------")
                    Text("Drill Dens, kg/l using bar/m:  \(drill_fluid_density(parm1: amtx, parm2: 2))")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    
                    Text("Drill fluid Dens, kg/l using bar/10m:   \(drill_fluid_density2(parm1: amtx, parm2: 2))")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                }
                
            }
            
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
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify3()
                Text("Enter pressure gradient,kPa/m")
                    .frame(width:380, height: 62, alignment: .leading)
                
                TextField("Enter pressure gradient, kPa/m", text: $amt)
                    .modify1()
                
                let amtx = (amt as NSString).doubleValue
                Text("---------")
                Text("Drilling Fluid density, kg/m₃ \(drill_fluid_density4(parm1: amtx, parm2: 2))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                
            }
            
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
           
            Text("Convert to Hydrostatic Pressure using mud wt ppg, mud wt psi, mud wt lb/ft**3,unit of depth/meters:")
                .frame(width:380, height: 62, alignment: .leading)
                .modify3()
            Text("Enter mud weight (ppg)")
                .frame(width:380, height: 62, alignment: .leading)
            TextField("Enter mud weight(ppg)", text: $amt)
                .modify1()
            
            Text("Enter true vert depth (ft)")
                .frame(width:380, height: 62, alignment: .leading)
            TextField("Enter true vert depth (ft)", text: $amt2)
                .modify1()
            
            
                }

        
            Group {
                Text("Enter PSI/ft")
                    .frame(width:380, height: 62, alignment: .leading)
                 
                TextField("Enter PSI/ft", text: $amt3)
                .modify1()
                Divider()
                
                
                Text("Enter mud wt(lb/ft 3")
                    .frame(width:380, height: 62, alignment: .leading)
                    
                TextField("Enter mud wt(lb/ft 3)", text: $amt4)
               .modify1()
              
                Text("Enter true vertical depth, meters:")
                    .frame(width:380, height: 62, alignment: .leading)
                     
                TextField("Enter true vertical depth, meters:", text: $amt5)
               .modify2()
              
                
                 }
                 
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
                let amtx5 = (amt5 as NSString).doubleValue
          Text("--------------")
        Text("Hydrostat press/psi(using ppg):  \(hd1(parm1: amtx, parm2: amtx2))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
        Text("Hydrostat press/psi(using psi/ft:  \(hd2(parm1: amtx3, parm2: amtx2))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
        Text("Hydrostat press/psi(using mud wt lb/ft3:  \(hd3(parm1: amtx4, parm2: amtx2))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
        Text("Hydrostat press, psi, using meters as depth  \(hd4(parm1: amtx, parm2: amtx5))")
                    .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                    
   
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
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
            Text("Enter Drilling Fluid Density,kg/l:")
                        .frame(width:380, height: 62, alignment: .leading)
                      
            TextField("Enter Drilling Fluid Density,kg/l", text: $amt)
            .modify1()
           Divider()
                    
            Text("Enter Drilling Fluid Density,kg/m**3:")
                        .frame(width:380, height: 62, alignment: .leading)
                         
            TextField("Enter pressure gradient, bar/10m", text: $amt2)
            .modify1()
            
                    
            Text("Enter true vertical depth:")
                        .frame(width:380, height: 62, alignment: .leading)
                        
            TextField("Enter true vertical depth(meters):", text: $amt3)
            .modify2()
                }
          
      
            let amtx = (amt as NSString).doubleValue
            let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                    
                Group{
                    
                
        Text("-------------")
        Text("Hydrostatic Pressure, bar:  \(h_pressure_bar(parm1: amtx, parm2: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify2()
             
    Text("Hydrostatic pressure kPa   \(h_pressure_kpa(parm1: amtx2, parm2: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify2()
                }
            
        }
       
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
              
            Text("Convert Drilling Pressure to Mud Weight using PSI,depth(meters+feet):")
                .frame(width:380, height: 62, alignment: .leading)
                .modify3()
                Text("Enter pressure(PSI)")
                .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter pressure(PSI)", text: $amt)
                .frame(width:380, height: 62, alignment: .leading)
                .modify1()
             
                
                Text("Enter true vert depth (ft)")
                .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter true vert depth (ft)", text: $amt2)
                .modify1()
                Text("Enter true vertical depth (meters):")
                .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter true vertical depth (meters)", text: $amt3)
                .modify2()
           
                    }
           
        
        Group {
                Text("Enter pressure bar:")
                .frame(width:380, height: 62, alignment: .leading)
                
                TextField("Enter pressure bar:", text: $amt4)
                .modify1()
           
               
                Text("Enter pressure  kPa")
                .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter pressure kPas", text: $amt5)
                .modify2()
              
                }
            
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
                let amtx5 = (amt5 as NSString).doubleValue
         Text("-----------------")
        Text("Mud Weight PPG (using feet):  \(mw1(parm1: amtx, parm2: amtx2))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
        Text("Mud Weight PPG (using meters):  \(mw2(parm1: amtx, parm2: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
        Text("Equivalent drilling fluid density, kg/l  \(eq1(parm1: amtx4, parm2: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
        Text("Equivalent drilling fluid density, kg/m**3  \(eq2(parm1: amtx5, parm2: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                    
  
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
                
            Text("Convert Specific Gravity:")
                .frame(width:380, height: 62, alignment: .leading)
                .modify3()
                Text("Enter mud wt (ppg)")
                .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter mud wt (ppg)", text: $amt)
                .modify1()
              
                
                Text("Enter Pressure Gradient (psi/ft)")
                .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter Pressure Gradient (psi/ft)", text: $amt2)
                .modify1()
            
                Text("Enter mud weight, lb/ft**3")
                .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter mud weight, lb/ft**3", text: $amt3)
                .modify1()
          
                    }
           
        
        Group {
                Text("Enter specific gravity:")
                .frame(width:380, height: 62, alignment: .leading)
             //   .modify1()
                TextField("Enter specific gravity:", text: $amt4)
                .modify2()
            Text ("------------------------")
            
               

                }
            
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx4 = (amt4 as NSString).doubleValue
           //     let amtx5 = (amt5 as NSString).doubleValue
         Text("-------------")
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
                    
                    Text("Equivalent Circulating Density, PPG:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Text("Enter Annular pressure loss, psi")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Annular pressure loss, psi", text: $amt)
                        .modify1()
                    
                    Text("Enter true vertical depth, ft:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter true vertical depth, ft:", text: $amt2)
                        .modify1()
                    
                    
                    Text("Enter mud weight, ppg")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter mud weight, ppg", text: $amt3)
                        .modify1()
                    
                    
                }
                
                
                Group {
                    Text("Enter annualar pressure loss, bar")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter annual pressure loss, bar", text: $amt4)
                        .modify1()
                    
                    
                    Text("Enter Total vertical depth (meters): ")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter total vertical depth (meters): ", text: $amt5)
                        .modify1()
                    
                    
                    Text("Enter mud weight, kg/l ")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter mud weight, kg/l ", text: $amt6)
                        .modify1()
                    
                    
                }
                
                Group {
                    Text("Enter Annular pressure loss, kPa: ")
                        .frame(width:380, height: 62, alignment: .leading)
                    //     .modify1()
                    TextField("Enter Annular pressure loss, kPa: ", text: $amt7)
                        .modify1()
                    
                    
                    Text("Enter mud density, kg/m: ")
                        .frame(width:380, height: 62, alignment: .leading)
                    //      .modify1()
                    TextField("Enter mud density,kg/m: ", text: $amt8)
                        .modify1()
                    
                    
                }
                
                Group {
                    Text("Enter Leak off pressure, psi: ")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter leak off pressure, psi: ", text: $amt9)
                        .modify1()
                    
                    
                    Text("Enter Casing shoe total vertical depth, ft ")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Casing shoe total vertical depth, ft  ", text: $amt10)
                        .modify2()
                    
                    
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
                Text("-------------------")
                Text("Equivalent Circulating Density, ppg:   \(ecd1(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                Text("Equivalent Drilling Density,m kg/l \(ecd2(parm1: amtx4, parm2: amtx5, parm3: amtx6))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                Text("Equivalent circulating Density:  \(ecd3(parm1: amtx7, parm2: amtx8, parm3: amtx5))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                Text("Maximum allowable mud weight from leak off test \(ecd4(parm1: amtx9, parm2: amtx10, parm3: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                
                
                
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
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Text("Enter liner diameter,inches:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter liner diameter,in:", text: $amt)
                        .modify1()
                    Divider()
                    
                    
                    Text("Enter stroke length, inches")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter true vertical depth, ft:", text: $amt2)
                        .modify1()
                    
                    Text("Enter strokes per minute:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter strokes per minute:", text: $amt3)
                        .modify2()
                    
                    
                }
                
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                
                Text("---------------------")
                Text("Formula 1: Pump output, bbl/stk:  \(tpf1(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                let amtx4 = 0.95 * tpf1(parm1: amtx, parm2: amtx2, parm3: amtx3)
                Text("Formula 1: Pump output, bbl/stk(95%):  \(amtx4)")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                Text("Formula 2: Pump output, gpm \(tpf2(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
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
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    
                    Text("Enter stroke length, inches")
                        .frame(width:380, height: 62, alignment: .leading)
                    //       .modify1()
                    TextField("Enter stroke length, inches:", text: $amt)
                        .modify1()
                    
                    Text("Enter liner diameter,inches:")
                        .frame(width:380, height: 62, alignment: .leading)
                    //          .modify1()
                    TextField("Enter liner diameter,in:", text: $amt2)
                        .modify1()
                    
                }
                Group {
                    
                    
                    
                    Text("Enter  rod diameter, inches:")
                        .frame(width:380, height: 62, alignment: .leading)
                    //        .modify1()
                    TextField("Enter  rod diameter, inches", text: $amt3)
                        .modify1()
                    
                    Text("Enter liters / minute:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter liters/minute:", text: $amt6)
                        .modify1()
                    
                    Text("Enter pump speed, spm:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter pump speed, spm:", text: $amt7)
                        .modify2()
                    
                }
                
                
                let amtx = (amt as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                let amtx3 = (amt3 as NSString).doubleValue
                let amtx6 = (amt6 as NSString).doubleValue
                let amtx7 = (amt7 as NSString).doubleValue
                Text("---------------------")
                Text("Formula1:  0.000324 x liner diam,in**2 x stroke length, in **2")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify3()
                Text("Formula 1: Pump output, bbl/stk:  \(dpf1(parm2: amtx2, parm1: amtx, parm3: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                let amtx4 = 0.85 * dpf1(parm2: amtx2, parm1: amtx, parm3: amtx3)
                Text("Formula 1: Pump output, bbl/stk(85%):  \(amtx4)")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify2()
                Text("Formula 2: 0.000162 x stroke length in x (2 x (liner diam)**2 - rod diam**2)")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify3()
                Text("Formula 2: Pump output, bbl/stk \(dpf2(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                let amtx5 = 0.85 * (dpf2(parm1: amtx, parm2: amtx2, parm3: amtx3))
                Text ("Formula 2: adjust pump output for 85% efficiancy: \(amtx5)")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                
                Text("Pump output (liters/minute): \(dpf3(parm1: amtx6, parm2: amtx7, parm3: amtx3))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modify1()
                
                
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
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Annular Velocity:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                        .modify3()
                    Text("Input for formula 1:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                
                    Text("Enter pump output, bbl/min:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    
                    TextField("Enter pump output, bbl/min:", text: $amt4)
                        .modify1()
                    
                    Text("Enter annual capacity, bbl/ft:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter annual capacity, bbl/ft:", text: $amt5)
                        .modify1()
               
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    Text("---------------")
                    Text("Formula 1: annular velocity, ft/min:  \(av1(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("----------------")
                }
                Group {
               
                    Text("Input for formula 2:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                
                    Text("Enter  circulation rate, gpm:")
                        .frame(width:380, height: 62, alignment: .leading)
                    //     .modify1()
                    TextField("Enter  circulation rate, gpm:", text: $amt)
                        .modify1()
                    
                    Text("Enter inside diameter of casing or hole size, in:")
                        .frame(width:380, height: 62, alignment: .leading)
                    //    .modify1()
                    TextField("Enter inside diameter of casing or hole size, in:", text: $amt2)
                        .modify1()
                }
                Group {
                    Text("Enter outside diameter of pipe, tubing or collars, in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                    //       .modify1()
                    TextField("Enter outside diameter of pipe, tubing or collars, in.:", text: $amt3)
                        .modify1()
                    let amtx = (amt as NSString).doubleValue
                    let amtx2 = (amt2 as NSString).doubleValue
                    let amtx3 = (amt3 as NSString).doubleValue
                    Text("---------------")
                    Text("Formula 2: AV ft/min: \(av2(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("--------------")
                    
          
                    Text("Input for formula 3:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                
                    Text("Enter PO, bbl/min")
                        .frame(width:380, height: 62, alignment: .leading)
                    //       .modify1()
                    TextField("Enter outside diameter of pipe, tubing or collars, in.:", text: $amt6)
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                }
                Group{
                    Text("Enter hole size, inches:")
                        .frame(width:380, height: 62, alignment: .leading)
                    //     .modify1()
                    TextField("Enter hole size, inches:", text: $amt7)
                        .modify1()
                    Text("Enter OD, inches:")
                        .frame(width:380, height: 62, alignment: .leading)
                    //    .modify1()
                    TextField("Enter OD, inches:", text: $amt8)
                        .modify1()
                    let amtx6 = (amt6 as NSString).doubleValue
                    let amtx7 = (amt7 as NSString).doubleValue
                    let amtx8 = (amt8 as NSString).doubleValue
                    Text("-----------------")
                    Text("Formula 3: AV ft/min: \(av3(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Formula 3: AV ft/sec: \(av4(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("---------------")
                }
                Group{
                   
                    Text("Input for Metric Calculations:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                   
                    
                    Text("Enter pump output, liters/min:")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                    TextField("Enter pump output, liters/min:", text: $amt9)
                        .modify1()
                    Text("Enter Annular volume, l/m:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Annular volume, l/m:", text: $amt10)
                        .modify1()
                    let amtx8 = (amt8 as NSString).doubleValue
                    let amtx9 = (amt9 as NSString).doubleValue
                    let amtx10 = (amt10 as NSString).doubleValue
                    Text("-----------------")
                    Text("Annual velocity,m/min using metric: \(av5(parm1: amtx9, parm2: amtx10, parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annual velocity,m/sec using metric:: \(av6(parm1: amtx9, parm2: amtx10, parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("-----------------")
                  
                }
                
                Group{
                    Text("Input for S.I. Calculations:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
             
                    Text("Enter pump output, m**3/min")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter pump output, m**3/min", text: $amt11)
                    
                        .modify1()
                    Text("Enter Annular volume, m**3/min:")
                    TextField("Enter Annular volume, m**3/m:", text: $amt12)
                        .modify2()
                    let amtx8 = (amt8 as NSString).doubleValue
                    let amtx11 = (amt11 as NSString).doubleValue
                    let amtx12 = (amt12 as NSString).doubleValue
                    Text("-------------")
                    Text("Annual velocity,m/min using S.i. units: \(av7(parm1: amtx11, parm2: amtx12,parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                  Text("---------------")
                }
                
                
                Group{
                    Text("Input for Pump output, gpm, required for a desired annuar velocity, ft/min:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                  
                    
                    Text("Enter Desired annular velocity, ft/min:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Desired annular velocity, ft/min:", text: $amt13)
                    
                        .modify1()
                    Text("Inside diameter of casing or hole size:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Inside diameter of casing or hole size, inches:", text: $amt14)
                        .modify1()
                    Text("Outside diameter of pipe, tubing or collars, inches:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Outside diameter of pipe, tubing or collars, inches:", text: $amt15)
                        .modify2()
                    let amtx13 = (amt13 as NSString).doubleValue
                    let amtx14 = (amt14 as NSString).doubleValue
                    let amtx15 = (amt15 as NSString).doubleValue
                    Text("-----------------")
                    Text("Pump output required for a desired annular velociy, gpm \(av8(parm1: amtx13, parm2: amtx14,parm3: amtx15))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("--------------")
                    
                }
                
                Group{
                    Text("Strokes per minute for a given annular velocity:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                   
                    
                    Text("Enter annular velocity, ft/min:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter annular velocity, ft/min:", text: $amt16)
                    
                        .modify1()
                    Text("Enter annular capacity, bbl/ft:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter annular capacity, bbl/ft:", text: $amt17)
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Enter pump output, bbl/stk:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter pump output, bbl/stk:", text: $amt18)
                        .modify2()
                    let amtx16 = (amt16 as NSString).doubleValue
                    let amtx17 = (amt17 as NSString).doubleValue
                    let amtx18 = (amt18 as NSString).doubleValue
                    Text("--------------")
                    Text("Strokes per minute (SPM) for a given annular velocity: \(av9(parm1: amtx16, parm2: amtx17,parm3: amtx18))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("-------------")
                   
                }
                
                Group {
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
                    let amtx11 = (amt11 as NSString).doubleValue
                    let amtx12 = (amt12 as NSString).doubleValue
                    let amtx13 = (amt13 as NSString).doubleValue
                    let amtx14 = (amt14 as NSString).doubleValue
                    let amtx15 = (amt15 as NSString).doubleValue
                    let amtx16 = (amt16 as NSString).doubleValue
                    
                    let amtx17 = (amt17 as NSString).doubleValue
                    
                    let amtx18 = (amt18 as NSString).doubleValue
                    Text("*******************************")
                    Text("Summary of all Formulas:")
                    Text("*******************************")
                      //  .frame(width:380, height: 62, alignment: .leading)
                      //  .modify3()
                    Group {
                        
                      
                        
                        Text("Formula 1: annular velocity, ft/min:  \(av1(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                            .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                        
                        
                        Text("Formula 2: AV ft/min: \(av2(parm1: amtx, parm2: amtx2, parm3: amtx3))")
                            .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                        
                        Text("Formula 3: AV ft/min: \(av3(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                            .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                        Text("Formula 3: AV ft/sec: \(av4(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                            .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                        
                        Text("Annual velocity,m/min using metric: \(av5(parm1: amtx9, parm2: amtx10, parm3: amtx8))")
                            .modify1()
                        Text("Annual velocity,m/sec using metric:: \(av6(parm1: amtx9, parm2: amtx10, parm3: amtx8))")
                            .modify1()
                        Text("Annual velocity,m/min using S.i. units: \(av7(parm1: amtx11, parm2: amtx12,parm3: amtx8))")
                            .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                        Text("Pump output required for a desired annular velociy, gpm \(av8(parm1: amtx13, parm2: amtx14,parm3: amtx15))")
                            .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                        Text("Strokes per minute (SPM) for a given annular velocity: \(av9(parm1: amtx16, parm2: amtx17,parm3: amtx18))")
                            .frame(width:380, height: 62, alignment: .leading)
                            .modify1()
                        
                    }
                    
                    
                }
                
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
func av5(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (parm1 / parm2)
    return total}
func av6(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  ((parm1 / 60) / parm2)
    return total}
func av7(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  parm1 / parm2
    return total}
func av8(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (parm1 * (pow(parm2,2) - pow(parm3,2))) / 24.5
    return total}
func av9(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  ((parm1 * parm2) / parm3)
    return total}

// begin code
struct capacity_formulas: View {
    
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
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    @State private var amtx3 = ""
    @State private var amtx4 = ""
    @State private var amtx5 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Capacity Formulas:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                  
                   
                    Text("Enter Hole Size (DH), in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Hole Size (DH):", text: $amt4)
                        .modify1()
                    
                    Text("Enter Drill Pipe OD (DP), in:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Drill Pipe OD (DP), in:", text: $amt5)
                        .modify1()
                    
                    Divider()
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    Text("-----------------")
                    Text("Annular capacity, bbl/ft:  \(cf1(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annular capacity, ft/bbl:  \(cf2(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annular capacity, gal/ft:  \(cf3(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    
                    
                }
                Group {
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    Divider()
                    Text("Annular capacity, ft/gal:  \(cf4(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annular capacity, ft/linft:  \(cf5(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annular capacity, lin ft/ft**3:  \(cf6(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annular capacity between casing and multiple strings of tubing:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    
                }
                Group {
                 
                    Text("Enter Casing Hole Size (ID), in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Casing Hole Size (ID), in.:", text: $amt6)
                        .modify1()
                    Text("Enter Tubing 1. Inner diam, in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Tubing 1. Inner diam, in.:", text: $amt7)
                        .modify1()
                    Text("Enter Tubing 2. Inner diam, in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Tubing 2. Inner diam, in.:", text: $amt8)
                        .modify1()
                }
                Group {
                    let amtx6 = (amt6 as NSString).doubleValue
                    let amtx7 = (amt7 as NSString).doubleValue
                    let amtx8 = (amt8 as NSString).doubleValue
                    Text("-----------------")
                    Text("Annular capacity, bbl/ft:  \(cf7(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annular capacity, ft/bbl:  \(cf8(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                        .modify1()
                    Text("Annular capacity, gal/ft:  \(cf9(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Annular capacity, ft/gal:  \(cf10(parm1: amtx6, parm2: amtx7, parm3: amtx8))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("-------------------")
                    Text("Enter Tubing 3 for next calculation please. Inner diam, in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    TextField("Enter Tubing 3 for next calculation please. Inner diam, in.:", text: $amt9)
                        .modify1()
                    let amtx9 = (amt9 as NSString).doubleValue
               
                    Text("Annular capacity, ft**3/lin.ft.:  \(cf11(parm1: amtx6, parm2: amtx7, parm3: amtx8, parm4: amtx9))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                
                    Text("Annular capacity, lin ft/ ft**3.:  \(cf12(parm1: amtx6, parm2: amtx7, parm3: amtx8, parm4: amtx9))")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                }
                    
                }
                
            }
        }
        
        
    }

func cf1(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - pow(parm2,2)) / 1029.4
    return total}

func cf2(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total = 1029 / (pow(parm1,2) - pow(parm2,2))
    return total}

func cf3(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - pow(parm2,2)) / 24.51
    return total}
func cf4(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  24.51 / (pow(parm1,2) - pow(parm2,2))
    return total}
func cf5(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - pow(parm2,2)) / 183.35
    return total}
func cf6(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total = 183.35 / (pow(parm1,2) - pow(parm2,2))
    return total}
func cf7(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2))) / 1029.4
    return total}
func cf8(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  1029.4 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2)))
    return total}
func cf9(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2))) / 24.51
    return total}
func cf10(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  24.51 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2)))
    return total}
func cf11(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2) + pow(parm4,2))) / 183.35
    return total}
func cf12(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  183.35 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2) + pow(parm4,2)))
    return total}


struct capacity_hole: View {
    
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
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    @State private var amtx3 = ""
    @State private var amtx4 = ""
    @State private var amtx5 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Capacity tubuluars and open hole: drill pipe, drill collars, tubing and any cylindrical object")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Divider()
                    
                    Text("Enter hole size (DH), in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter hole size (DH), in.:", text: $amt5)
                        .modify2()
                    
                    Divider()
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    Text("---------------")
                    Text("Capacity BBL/ft:  \(ch1(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .modify1()
                    Text("Capacity ft/bbl: \(ch2(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .modify1()
                    Text("capacity, gal/ft:  \(ch3(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .modify1()
                    
                    
                }
                Group {
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    Divider()
                    Text("capacity, ft/gal:  \(ch4(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .modify1()
                    Text("capacity, ft**3/linft:  \(ch5(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .modify1()
                    Text("capacity, lin ft/ft**3:  \(ch6(parm1: amtx4, parm2: amtx5, parm3: amtx3))")
                        .modify1()
                    
                    
                }
                
                
                
            }
            
        }
    }
    
    
}

func ch1(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm2,2) ) / 1029.4
    return total}

func ch2(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =   1029.4 / (pow(parm2,2) )
    return total}

func ch3(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm2,2) ) / 24.51
    return total}
func ch4(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  24.51 / (pow(parm2,2) )
    return total}
func ch5(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm2,2) ) / 183.35
    return total}
func ch6(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total = 183.35 /  pow(parm2,2)
    return total}
func ch7(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2))) / 1029.4
    return total}
func ch8(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  1029.4 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2)))
    return total}
func ch9(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2))) / 24.51
    return total}
func ch10(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  24.51 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2)))
    return total}
func ch11(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2) + pow(parm4,2))) / 183.35
    return total}
func ch12(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  183.35 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2) + pow(parm4,2)))
    return total}




struct cuttings_drilled: View {
    
    @State private var amt1 = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
    @State private var amt8 = ""
    @State private var amt9 = ""
    @State private var amt10 = ""
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    @State private var amtx3 = ""
    @State private var amtx4 = ""
    @State private var amtx5 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Amount of cuttings drilled per foot of hole drilled:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Divider()
                    Text("Enter hole size (DH), in.:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter hole size (DH), in.:", text: $amt1)
                        .modify2()
                    Text("Enter porosity as a fraction (ie 20%= .20):")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter porosity as a fraction ", text: $amt2)
                        .modify2()
                    
                    
                    let amtx1 = (amt1 as NSString).doubleValue
                    let amtx2 = (amt2 as NSString).doubleValue
                    let amtx3 = (amt3 as NSString).doubleValue
                    Text("-----------------")
                    Text("Barrels of cutting drilled for one foot of \(amt1) hole drilled with \(amt2) porosity: \(cd1(parm1: amtx1, parm2: amtx2, parm3: amtx3))")
                        .modify1()
                    Text("cubic feet of cuttings drilled for one foot of \(amt1) hole drilled with \(amt2) porosity: \(cd2(parm1: amtx1, parm2: amtx2, parm3: amtx3))")
                        .modify1()
                    
                }
                
                Group {
                    
                    Text("Total solids generated in pounds calculation:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    
                    Text("Enter capacity of hole, bbl/ft:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter capacity of hole, bbl/ft:", text: $amt4)
                        .modify2()
                    Text("Enter footage drilled in feet:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter footage drilled in feet:", text: $amt5)
                        .modify2()
                    Text("Enter specific gravity gm/cc:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter specific gravity gm/cc:", text: $amt6)
                        .modify2()
                }
                Group {
                    Text("Enter porosity as a fraction (ie 20%= .20):")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter porosity as a fraction ", text: $amt7)
                        .modify2()
                    
                    
                    
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    let amtx6 = (amt6 as NSString).doubleValue
                    let amtx7 = (amt7 as NSString).doubleValue
                    Text("---------------------")
                    Text("Total pounds of solids generated in drilling \(amtx5)  ft of a \(amtx4) bbl/ft with SG of cutting gm/cc = \(amtx6) and porosity of \(amtx7) is: \(cd3(parm1: amtx4, parm2: amtx5, parm3: amtx6, parm4: amtx7))")
                        .modify1()
                    
                    
                }
                
                
            }
            
        }
    }
    
    
}

func cd1(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  ((pow(parm1,2) ) / 1029.4) * (1 - parm2)
    return total}

func cd2(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  ((pow(parm1,2) ) / 144) * 0.7854 * (1 - parm2)
    return total}

func cd3(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  350 * parm1 * parm2 * (1.0 - parm4) * parm3
    return total}
func cd4(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  24.51 / (pow(parm2,2) )
    return total}
func cd5(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm2,2) ) / 183.35
    return total}
func cd6(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total = 183.35 /  pow(parm2,2)
    return total}
func cd7(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2))) / 1029.4
    return total}
func cd8(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  1029.4 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2)))
    return total}
func cd9(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2))) / 24.51
    return total}
func cd10(parm1: Double, parm2: Double, parm3: Double) -> Double {
    var total: Double = 0
    total =  24.51 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2)))
    return total}
func cd11(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2) + pow(parm4,2))) / 183.35
    return total}
func cd12(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  183.35 / (pow(parm1,2) - (pow(parm2,2) + pow(parm3,2) + pow(parm4,2)))
    return total}
// end
// begin
struct Control_Drilling: View {
    
    @State private var amt1 = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
    @State private var amt8 = ""
    @State private var amt9 = ""
    @State private var amt10 = ""
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    @State private var amtx3 = ""
    @State private var amtx4 = ""
    @State private var amtx5 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Max drilling rate (MDR),ft/hr, when drilling large diameter holles (14 3/4in. and larger)")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Divider()
                    Text("Enter mud wt out, ppg:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter mud wt out, ppg::", text: $amt1)
                        .modify2()
                    Text("Enter mud wt in, ppg:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter mud wt in, ppg::", text: $amt2)
                        .modify2()
                    Text("Enter circulation rate, gpm:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter circulationi rate, gpm:", text: $amt3)
                        .modify2()
                    Text("Enter hole size, inches:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter hole size, inches", text: $amt4)
                        .modify2()
                }
                
                Group {
                    Divider()
                    let amtx1 = (amt1 as NSString).doubleValue
                    let amtx2 = (amt2 as NSString).doubleValue
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    Text("-----------------")
                    Text("Maximum drilling Rate: \(md1(parm1: amtx1, parm2: amtx2, parm3: amtx3, parm4: amtx4)) with mud in: \(amt2) , mud out: \(amt1), circulation rate/gpm of \(amt3) and hole size of \(amt4)")
                        .modify1()
                }
            }
            
        }
    }
    
    
}

func md1(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  (67 * (parm1 - parm2) * parm3 ) / pow(parm4,2)
    return total}


struct buoyancy_factor: View {
    
    @State private var amt1 = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
    @State private var amt8 = ""
    @State private var amt9 = ""
    @State private var amt10 = ""
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    @State private var amtx3 = ""
    @State private var amtx4 = ""
    @State private var amtx5 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Buoyancy Factor (BF)")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Divider()
                    Text("Enter mud wt, ppg:")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter mud wt, ppg:", text: $amt1)
                        .modify1()
                    Text("Enter mud wt, lb/ft**3")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter mud wt, lb/ft**3", text: $amt2)
                        .modify2()
                    
                }
                
                Group {
                    Divider()
                    let amtx1 = (amt1 as NSString).doubleValue
                    let amtx2 = (amt2 as NSString).doubleValue
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    Text("------------------")
                    Text("Buoyancy factor is \(bf1(parm1: amtx1, parm2: amtx2, parm3: amtx3, parm4: amtx4)) using mud weight with ppg of \(amt1) ")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify1()
                    Text("Buoyancy factor is \(bf2(parm1: amtx1, parm2: amtx2, parm3: amtx3, parm4: amtx4)) using mud weight with lb/ft**3 of \(amt2) ")
                        .frame(width:380, height: 62, alignment: .leading)
                    
                        .modify1()
                }
            }
            
        }
    }
    
    
}

func bf1(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  (65.5 - parm1) / 65.5
    return total}
func bf2(parm1: Double, parm2: Double, parm3: Double, parm4: Double) -> Double {
    var total: Double = 0
    total =  (489 - parm2) / 489
    return total}

struct hydrostatic_pressure_pulling_pipe: View {
    
    @State private var amt1 = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
    @State private var amt8 = ""
    @State private var amt9 = ""
    @State private var amt10 = ""
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    @State private var amtx3 = ""
    @State private var amtx4 = ""
    @State private var amtx5 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Hydrostatic pressure pulling wet and dry pipe")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                    Divider()
                    
                    
                    Text("Enter number of stands:")
                    
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter number of stands:", text: $amt1)
                        .modify1()
                    Text("Enter avg length per stand (ft):")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter avg length per stand (ft):", text: $amt2)
                        .modify1()
                    Text("Enter pipe displacement (bbl/ft):")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter pipe displacement (bbl/ft):", text: $amt3)
                        .modify1()
                }
                Group {
                    Text("Enter casing capacity (bbl/ft):")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter casing capacity  (bbl/ft):", text: $amt4)
                        .modify1()
                    Text("Enter mud wt (ppg):")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter mud wt (ppg):", text: $amt5)
                        .modify1()
                    Text("Enter pipe capacity(bbl/ft) for wet pipe calc:")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter pipe capacity(bbl/ft) for wet pipe calc:", text: $amt6)
                        .modify2()
                    
                    
                }
                
                Group {
                    Divider()
                    let amtx1 = (amt1 as NSString).doubleValue
                    let amtx2 = (amt2 as NSString).doubleValue
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    let amtx6 = (amt6 as NSString).doubleValue
                    Text("-----------------------")
                    Text("Hydrostatic pressure (PSI) pulling dry pipe is  is \(hpp1(parm1: amtx1, parm2: amtx2, parm3: amtx3, parm4: amtx4, parm5: amtx5, parm6: amtx6))  ")
                        .frame(width:380, height: 42, alignment: .leading)
                        .modify1()
                    Text("Hydrostatic pressure (PSI) pulling wet pipe is  is \(hpp2(parm1: amtx1, parm2: amtx2, parm3: amtx3, parm4: amtx4, parm5: amtx5, parm6: amtx6))  ")
                        .frame(width:380, height: 42, alignment: .leading)
                        .modify1()
                   
                }
            }
            
        }
    }
    
    
}

func hpp1(parm1: Double, parm2: Double, parm3: Double, parm4: Double, parm5: Double, parm6: Double) -> Double {
    var total: Double = 0
    total =  ((parm1 * parm2 * parm3) / (parm4 - parm3) ) * 0.052 * parm5
    return total}
func hpp2(parm1: Double, parm2: Double, parm3: Double, parm4: Double, parm5: Double, parm6: Double) -> Double {
    var total: Double = 0
    total =  (parm1 * parm2 * (parm3 + parm6)) / (parm4 - (parm3 + parm6)) * 0.052 * parm5
    return total}

struct overbalance_pulling_pipe: View {
    
    @State private var amt1 = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    @State private var amt4 = ""
    @State private var amt5 = ""
    @State private var amt6 = ""
    @State private var amt7 = ""
    @State private var amt8 = ""
    @State private var amt9 = ""
    @State private var amt10 = ""
    @State private var amt11 = ""
    @State private var amt12 = ""
    @State private var amt13 = ""
    @State private var amt14 = ""
    @State private var amt15 = ""
    @State private var amt16 = ""
    @State private var amt17 = ""
    @State private var amt18 = ""
    @State private var amtx3 = ""
    @State private var amtx4 = ""
    @State private var amtx5 = ""
    // @State private var amtx: Double
    var body: some View {
        
        VStack  {
            
            ScrollView{
                Group {
                    
                    Text("Loss of overbalance due to falling mud level:")
                        .modify3()
                    
                    Divider()
                    Text("Enter amount of overbalance (PSI):")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter amount of overbalance (PSI):", text: $amt1)
                        .modify1()
                    Text("Enter casing capacity (bbl/ft):")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter casing capacity (bbl/ft):", text: $amt2)
                        .modify1()
                    Text("Enter pipe displacement (bbl/ft)")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter pipe displacement (bbl/ft):", text: $amt3)
                        .modify1()
                }
                Group {
                    Text("Enter mud weigth (PPG):")
                        .frame(width:380, height: 42, alignment: .leading)
                    TextField("Enter mud weigth (PPG):", text: $amt4)
                        .modify1()
                    Text("Enter Pipe capacity (bbl/ft)/ (needed for Wet Calculation):")
                        .frame(width:380, height: 62, alignment: .leading)
                    TextField("Enter Pipe capacity (bbl/ft)", text: $amt5)
                        .modify2()
                
                    
                    
                }
                
                Group {
                    Divider()
                    let amtx1 = (amt1 as NSString).doubleValue
                    let amtx2 = (amt2 as NSString).doubleValue
                    let amtx3 = (amt3 as NSString).doubleValue
                    let amtx4 = (amt4 as NSString).doubleValue
                    let amtx5 = (amt5 as NSString).doubleValue
                    let amtx6 = (amt6 as NSString).doubleValue
                    Text("----------------")
                    Text("Feet of dry pipe that must be pulled to lose the overbalance: \(fml1(parm1: amtx1, parm2: amtx2, parm3: amtx3, parm4: amtx4, parm5: amtx5, parm6: amtx6))  ")
                        .frame(width:380, height: 42, alignment: .leading)
                        .modify1()
                    Text("Feet of wet pipe that must be pulled to lose the overbalance: \(fml2(parm1: amtx1, parm2: amtx2, parm3: amtx3, parm4: amtx4, parm5: amtx5, parm6: amtx6))  ")
                        .frame(width:380, height: 42, alignment: .leading)
                        .modify1()
                   
                }
            }
            
        }
    }
    
    
}

func fml1(parm1: Double, parm2: Double, parm3: Double, parm4: Double, parm5: Double, parm6: Double) -> Double {
    var total: Double = 0
    total =  ((parm1 * (parm2 - parm3))) / (parm4 * 0.052 * parm3)
    return total}
func fml2(parm1: Double, parm2: Double, parm3: Double, parm4: Double, parm5: Double, parm6: Double) -> Double {
    var total: Double = 0
    total =  (parm1 * (parm2 - parm5 - parm3))  / (parm4 * 0.052 * (parm5 + parm3))
    return total}

struct Hydraulic_horsepower: View {
   
    @State private var amt1 = ""
    @State private var amt2 = ""
    @State private var amt3 = ""
    var body: some View {
        VStack  {
            ScrollView{
                Group{
                    
                Text("Calculate Hydraulic Horsepower:")
                        .frame(width:380, height: 62, alignment: .leading)
                        .modify3()
                       
                Text("Enter circulating pressure(PSI): ")
                        .frame(width:380, height: 62, alignment: .leading)
            TextField("Enter circulating pressure(PSI):", text: $amt1)
                        .modify1()
                    Text("Enter Circulatig rate:(GPM): ")
                            .frame(width:380, height: 62, alignment: .leading)
                TextField("Enter Circulatig rate:(GPM):", text: $amt2)
                            .modify1()
                    
                }
           
                Divider()
            let amtx1 = (amt1 as NSString).doubleValue
                let amtx2 = (amt2 as NSString).doubleValue
                Text("--------------")
        Text("Hydraulic Horsepower: \(hh1(parm1: amtx1, parm2: amtx2))")
                    .frame(width:380, height: 62, alignment: .leading)
                    .modifier(Modify1())
         Spacer()
        }
        }
    }
}
func hh1(parm1: Double, parm2: Double) -> Double {
        var total: Double = 0
    total = (parm1 * parm2) / 1714
        return total}


struct sendit: View {
    @State var numbertomessage = ""
    @State var message = ""
    var body: some View {
      Text("For problems, issues, law suits or copyright infringements,")
            .font(.headline)
        Text("please contact Gabriel Bulliard at 3372778386")
            .font(.headline)
        Text("Thanking you in advance for your help with this..")
            .font(.headline)
        TextField("Enter a Mobile num:(1xxxxxxxxxx", text: $numbertomessage)
       // keyboardType(.numberPad)
        TextField("Enter a message", text: $message)
      //  keyboardType(.alphabet)
        
        Button("send") {
            sendmessage(parm1: numbertomessage, parm2: message)
        }
        
        
    }
}

func sendmessage(parm1: String, parm2: String) {
    //func av4(parm1: Double, parm2: Double, parm3: Double) -> Double {
    let sms: String = "sms:\(parm1)&body=\(parm2)"
    let strurl: String =  sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    UIApplication.shared.open(URL.init(string:strurl)!, options: [:], completionHandler: nil)
}

struct Modify1: ViewModifier {
    func body(content: Content) -> some View {
        content
          //  .multilineTextAlignment(.leading)
            .frame(width:380, height: 62, alignment: .leading)
     //     .frame(width:250, height: 42, alignment: .leading)
            .font(.system(size: 14))
            .foregroundColor(Color.black)
            .background(Color.teal.cornerRadius(10))
            .background(RoundedRectangle(cornerRadius: 14))
      //      .background(Color.green)
            .keyboardType(.decimalPad)
          //  .padding(.horizontal,22)
           // .padding(.vertical,1)
            
            
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
            .frame(width:380, height: 62, alignment: .leading)
         //   .frame(width:250, height: 42, alignment: .leading)
            .font(.system(size: 12))
            .foregroundColor(Color.black)
            .background(Color.teal.cornerRadius(10))
            .background(RoundedRectangle(cornerRadius: 14))
      //      .background(Color.green)
        //    .keyboardType(.decimalPad)
         //   .padding(.horizontal,20)
          //  .padding(.horizontal,20)
          //  .padding(.vertical,1)
            
            
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
        //    Divider()
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
      //  overbalance_pulling_pipe()
      //  hydrostatic_pressure_pulling_pipe()
     //  buoyancy_factor()
     //   Control_Drilling()
     //   cuttings_drilled()
       // capacity_hole()
      //  capacity_formulas()
      //  annular_velocity()
      //  duplex_pumpview()
      //  triplex_pumpview()
    //    specific_gravity()
      //  nextview14()
      //
       //
       //
      // HydrostaticPressureView()
      //  PressureGradientView()
    //nextview10()
     }
}
