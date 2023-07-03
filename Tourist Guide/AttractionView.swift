//
//  AttractionView.swift
//  Tourist Guide
//
//  Created by Traton Gossink on 6/28/23.
//

import SwiftUI

struct AttractionView: View {
    
    var city: City
    
    var body: some View {
        
        ScrollView (showsIndicators: false){
            
            VStack {
                
                ForEach(city.attractions){ attraction in
                    NavigationLink {
                        DetailView(attraction: attraction)
                    } label: {
                        AttractionCard(attraction: attraction)
                            .padding(.bottom, 50)
                    }
                    .buttonStyle(.plain)
                    
                }
            }
            .padding()
        }
    }
}

struct AttractionView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionView(city: City(name: "London",
                                  summary: "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times.",
                                  imageName: "london",
                                  attractions: [
                                     Attraction(name: "Buckingham Palace",
                                                summary: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
                                                longDesc: """
             Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning.

             Originally known as Buckingham House, the building at the core of today's palace was a large townhouse built for the Duke of Buckingham in 1703 on a site that had been in private ownership for at least 150 years. It was acquired by King George III in 1761 as a private residence for Queen Charlotte and became known as The Queen's House. During the 19th century it was enlarged by architects John Nash and Edward Blore, who constructed three wings around a central courtyard. Buckingham Palace became the London residence of the British monarch on the accession of Queen Victoria in 1837.
             """,
                                                imageName: "buckingham", latLong: "51.50148418749087, -0.1410746109020975")
                                  ]))
    }
}
