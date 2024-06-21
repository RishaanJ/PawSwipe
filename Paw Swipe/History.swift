//
//  History.swift
//  Paw Swipe
//
//  Created by Rishaan Jain on 6/19/24.
//

import SwiftUI

struct History: View {
    

    var body: some View {
        NavigationView{
            ScrollView{
                    Grid{
                        GridRow{
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.blue)
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.green)
                        }
                        GridRow{
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.red)
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.yellow)
                        }
                        GridRow{
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.blue)
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.green)
                        }
                        GridRow{
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.red)
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.yellow)
                        }
                        GridRow{
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.blue)
                            Rectangle()
                                .frame(width: 180, height: 220)
                                .cornerRadius(15)
                                .foregroundColor(.green)
                        }
                }.navigationTitle("History")
            }
            
        }
        
    }
}

#Preview {
    History()
}
