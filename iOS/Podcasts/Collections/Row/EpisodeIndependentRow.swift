//
//  EpisodeTableRow.swift
//  Audiobooks
//
//  Created by Rasmus Krämer on 08.10.23.
//

import SwiftUI
import SPBase

struct EpisodeIndependentRow: View {
    let episode: Episode
    
    var body: some View {
        HStack {
            ItemImage(image: episode.image)
                .frame(width: 90)
            
            VStack(alignment: .leading) {
                Group {
                    if let formattedReleaseDate = episode.formattedReleaseDate {
                        Text(formattedReleaseDate)
                    } else {
                        Text(verbatim: "")
                    }
                }
                .font(.caption.smallCaps())
                .foregroundStyle(.secondary)
                
                Text(episode.name)
                    .font(.headline)
                    .lineLimit(1)
                
                if let description = episode.descriptionText {
                    Text(description)
                        .lineLimit(1)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                
                HStack {
                    EpisodePlayButton(episode: episode)
                    Spacer()
                    DownloadIndicator(item: episode)
                }
            }
            
            Spacer()
        }
        .frame(height: 90)
        .modifier(EpisodeContextMenuModifier(episode: episode))
    }
}