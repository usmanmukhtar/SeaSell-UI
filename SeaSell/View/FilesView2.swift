//
//  FilesView.swift
//  SeaSell
//
//  Created by Usman Mukhtar on 03/11/2021.
//

import SwiftUI

struct FilesView2: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Profile")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("black"))
                    
                    Spacer()
                    
                    Button(action: {

                    }, label: {
                        ZStack (alignment: Alignment(horizontal: .center, vertical: .center)) {
                            Circle()
                                .foregroundColor(Color("light-purple"))
                                .frame(width: 30, height: 30)
                            Image(systemName: "plus.circle")
                                .foregroundColor(Color("purple"))
                        }
                    })
                }
                .padding(.vertical)
                HStack {
                    AsyncImage(url: URL(string: "https://cdn.dribbble.com/users/1179659/screenshots/11289411/img_9651_4x.png")) { remote in
                        if let image = remote.image {
                            image
                                .resizable()
                                .scaledToFill()
                        }else if remote.error != nil {
                            Image("no-image")
                                .resizable()
                                .scaledToFit()
                        }else {
                            ProgressView()
                        }
                    }
                    .frame(width: 80, height: 80, alignment: .center)
                    .clipShape(Circle())
                    VStack (alignment: .leading){
                        Group{
                            Text("Marvin")
                            Text("McKinney")
                        }
                        .font(Font.headline.bold())
                        HStack{
                            Text("1.3k Followers").font(.caption).foregroundColor(.gray)
                            Text("1k Following").font(.caption).foregroundColor(.gray)
                        }
                    }
                    Spacer()
                    Button(action: {}) {
                        Text("EDIT PROFILE").font(.system(size: 10)).foregroundColor(Color("black"))
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                    .background(Color("green"))
                    .clipShape(Capsule())
                }
                .padding(.bottom, 30)
                VStack(alignment: .leading, spacing: 10) {
                    Text("BIO")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.init(white: 0.2))
                    
                    Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. Veritatisobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquamnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,netur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos ")
                        .font(.caption.weight(.light))
                        .foregroundColor(.init(white: 0.3))
                    
                    HStack {
                        Button(action: {}) {
                            HStack {
                                Text("Collection")
                                Text("5")
                            }
                            .foregroundColor(Color("black"))
                            .font(.subheadline)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color("green"))
                        .clipShape(Capsule())
                        
                        Button(action: {}) {
                            HStack {
                                Text("Products")
                                Text("3")
                            }
                            .foregroundColor(Color("black"))
                            .font(.subheadline)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color("green").opacity(0.2))
                        .clipShape(Capsule())
                    }
                    .padding(.top, 30)
                }
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(1...4, id: \.self) { index in
                        Image("\(index)")
                            .resizable()
                            .aspectRatio(1, contentMode: .fill)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .padding(.horizontal, 5)
                    }
                }
                .padding(.top, 20)
                Spacer()
            }.padding(.horizontal)
        }
    }
}

struct FilesView2_Previews: PreviewProvider {
    static var previews: some View {
        FilesView2()
    }
}
