//
//  MainView.swift
//  PicturePipette
//
//  Created by hyun woo cho on 2022/05/02.
//

import SwiftUI

struct MainView: View {
    
    @State var showImagePicker: Bool = false
    @State var image: Image? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                self.image?.resizable().frame(width: 300, height: 400, alignment: .center)
            }
            .navigationTitle("Picture Pipette")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    self.showImagePicker.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(sourceType: .photoLibrary) { image in
                    self.image = Image(uiImage: image)
                }
            }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
