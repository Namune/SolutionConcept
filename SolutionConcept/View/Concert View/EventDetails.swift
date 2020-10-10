//
//  EventDetails.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct EventDetails: View {
    var body: some View {
        Text("Coachella is North America's most famous music festival, held each April at its now iconic home at the Empire Polo Club in Indio, California.\n\nA festival on every true music fan's bucket list, Coachella will make its eagerly anticipated return in April 2021 after a year off, once again returning with a world-beating lineup of some of music's biggest stars, covering a range of genres, including rock, indie, hip-hop and dance.\n\nCoachella's illustrious history has seen it feature legendary headline sets from the likes of Beyoncé, Daft Punk, Prince, Radiohead, and Bob Dylan over its two decade-long lifespan.")
            .modifier(LeadingModifier())
    }
}

struct EventDetails_Previews: PreviewProvider {
    static var previews: some View {
        EventDetails()
    }
}
