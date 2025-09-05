//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2025 Jellyfin & Jellyfin Contributors
//

import SwiftUI

struct RatingIndicator: View {

    let rating: Double

    private var ratingText: String {
        String(format: "%.1f", rating)
    }

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.clear

            HStack(spacing: 2) {
                Image(systemName: "star.fill")
                    .font(.caption2)
                Text(ratingText)
                    .font(.caption2)
                    .fontWeight(.semibold)
            }
            .padding(.vertical, 2)
            .padding(.horizontal, 4)
            .background(Color.black.opacity(0.7))
            .foregroundColor(.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 3))
            .padding(5)
        }
    }
}
