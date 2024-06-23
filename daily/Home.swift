import SwiftUI

struct Home: View {
    var body: some View {
        let colorTitle: Color = Color(red: 89/255, green: 80/255, blue: 133/255)
        @State var height:Double = 150
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
            HStack {
                Spacer()
                Text("Inicio")
                    .bold()
                Spacer()
                Image(systemName: "gearshape")
                    .foregroundColor(Color(red:65/255, green: 53/255, blue: 114/255))
            }
            Spacer()
            Text("Nuevos")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(colorTitle)
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                       HStack(spacing: 10) {
                           NewsButton(text: "Novedades", titleImage: "one")
                           NewsButton(text: "Tendencias", titleImage: "two")
                           NewsButton(text: "Actividades", titleImage: "three")
                           
                           // Puedes añadir más NewsButtons aquí
                       }
                       .padding(.horizontal)
                   }
            Spacer()
            Text("Tareas Diarias")
                .font(.title)
                .foregroundColor(colorTitle)
            Spacer()
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:10){
                    CardButton(title:"Astro", value: "3", color: Color(red:246/255, green: 245/255, blue: 251/255), colorLetter: Color(red:64/255, green: 53/255, blue: 114/255))
                    CardButton(title: "Horas de sueño", value: "6", color: Color(red:255/255, green: 244/255, blue: 244/255), colorLetter: Color(red:255/255, green: 86/255, blue: 72/255))
                    CardButton(title: "Mantra", value: "4", color: Color(red:245/255, green: 249/255, blue: 249/255),
                               colorLetter: Color(red:71/255, green: 150/255, blue: 150/255)
                    )
                }
            }
            
            Text("Tu progreso está en 60%")
                .foregroundColor(colorTitle)
            Barra(selected: $height)
            Spacer()
            Spacer()
            DetailButton(title: "¿Como fué tu día?", image: "calendar",color: Color(red:246/255, green: 245/255, blue: 251/255), colorLetter: Color(red:65/255, green: 53/255, blue: 114/255))
            DetailButton(title: "Actvidades", image: "clock",
            color: Color(red:255/255, green: 244/255, blue: 244/255), colorLetter: Color(red:255/255, green: 86/255, blue: 72/255))
        }
        .padding([.leading, .trailing], 25)
      
    }
}

struct Barra: View {
    @Binding var selected: Double
    var body: some View {
        Slider(
            value: $selected,
            in: 100...220, step: 1
        )
        .accentColor(Color(red: 201/255, green: 63/255, blue: 141/255))
        
    }
}

struct NewsButton: View {
    let text: String
    let titleImage: String
    var body: some View {
        Button(action: {
            
        }){
            ZStack{
                Image(titleImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 0)
                                    )
                Text(text)
                    .foregroundColor(.white)
                    .font(.headline)
            }
        }
        .frame(width: 160, height: 60)
                .aspectRatio(contentMode: .fit)
               
     
      
    }
}

struct CardButton: View {
    let title: String
    let value: String
    let color: Color
    let colorLetter: Color
    var body: some View {
        Button(action: {
            
        }){
            VStack{
                Text(title)
                    .font(.system(size: 16))
                    .padding()
                    .foregroundColor(colorLetter)
                Spacer()
                
                Text(value)
                    .bold()
                    .font(.system(size: 29))
                    .foregroundColor(colorLetter)
                Spacer()
                   
            }
        }
        .frame(width: 150, height: 110 )
        .background(color)
        .cornerRadius(20)
        
    }
}

struct DetailButton: View {
    let title: String
    let image: String
    let color: Color
    let colorLetter: Color
    var body: some View {
        Button(action: {
            
        }){
            HStack {
                Spacer()
                Image(systemName: image)
                    .foregroundColor(colorLetter)
                VStack(alignment: .leading){
                    Text(title)
                        .font(.system(size: 19))
                        .bold()
                        .padding()
                        .foregroundColor(colorLetter)
                    Text("Lorem ipsum dolor sit amet, consectetur adipscing elit...")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red:155/255, green: 149/255, blue: 182/255))
                        .padding([.leading, .trailing], 20)
                    Spacer()
                }
                Image(systemName: "arrowtriangle.right.fill")
                    .foregroundColor(colorLetter)
                Spacer()
            }
        }
        .frame(minHeight: 100)
        .background(color)
        .cornerRadius(20)
        
    }
        
}





#Preview {
    Home()
}
