//
//  QuestionaireView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/14/24.
//

import SwiftUI

struct QuestionaireView: View {
    @State private var request: String = ""
    
    @State private var generalSizesExpanded = false
    @State private var waistSizesExpanded = false
    @State private var shoeSizesExpanded = false
    
    @Environment (\.dismiss) var dismiss
    
    let generalSizes = ["One size", "US 0", "US 1", "US 2", "US 3", "US 4", "US 5", "US 6", "US 7", "US 8", "US 9", "US 10", "US 11", "US 12", "US 14", "US 16", "US 18", "US 20", "US 22", "US 24", "US 26", "US 28", "US 30", "US 32", "US 34", "US 36", "XXS", "XS", "S", "M", "L", "XL", "2XL", "3XL", "4XL", "5XL", "6XL"]
    let waistSizes = ["22\"", "23\"", "24\"", "25\"", "26\"", "27\"", "28\"", "29\"", "30\"", "31\"", "32\"", "33\"", "34\"", "35\"", "36\"", "37\"", "38\"", "39\"", "40\"", "41\"", "42\"", "43\"", "44\""]
    let shoeSizes = ["US 5", "US 5.5", "US 6", "US 6.5", "US 7", "US 7.5", "US 8", "US 8.5", "US 9", "US 9.5", "US 10", "US 10.5", "US 11", "US 11.5", "US 12"]

    var body: some View {
        
        ZStack(alignment: .topLeading){
            NavigationView {
                Form {
                    Section(header: Text("General Information")) {
                        TextField("I'm looking for...", text: $request, axis: .vertical)
                            .lineLimit(10, reservesSpace: true)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                    )
                            )
                            .shadow(radius: 5, x: 0, y: 3)
                    }
                    Section(header: Text("Sizes")){
                        Section() {
                            DisclosureGroup(
                                isExpanded: $generalSizesExpanded,
                                content: {
                                    SizeButtonView(sizeOptions: generalSizes)
                                },
                                label: {
                                    Text("General Sizes")
                                        .font(.headline)
                                }
                            )
                        }
                        Section() {
                            DisclosureGroup(
                                isExpanded: $waistSizesExpanded,
                                content: {
                                    SizeButtonView(sizeOptions: waistSizes)
                                },
                                label: {
                                    Text("Waist Sizes")
                                        .font(.headline)
                                }
                            )
                        }
                        Section() {
                            DisclosureGroup(
                                isExpanded: $shoeSizesExpanded,
                                content: {
                                    SizeButtonView(sizeOptions: shoeSizes)
                                },
                                label: {
                                    Text("Shoe Sizes")
                                        .font(.headline)
                                }
                            )
                        }
                    }
                    
                    Section {
                        Button(action: {
                            // Handle form submission
                            print("Form submitted!")
                        }) {
                            Text("Submit")
                        }
                    }
                } //end Form
                .navigationTitle("Style Questionaire")
                .tint(.purple)
                .scrollContentBackground(.hidden)
            } //end NavigationView
            Button(action: { dismiss() }) {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .tint(.purple)
                    .padding()
            }
        } //end VStack
    } //end view
} //end struct
#Preview {
    QuestionaireView()
}
