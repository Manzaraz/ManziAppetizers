//
//  AccountView.swift
//  ManziAppetizers
//
//  Created by Christian Manzaraz on 22/07/2024.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    DatePicker("Birthday",
                               selection: $birthdate,
                               displayedComponents: .date)
                    
                    Button {
                        print("Save")
                        print(firstName, lastName, email.lowercased(), birthdate)
                    } label: {
                        Text("Save Changes")
                    
                    }
                } header: {
                    Text("Personal Info")
                }

                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("🤔 Account")
        }
    }
}

#Preview {
    AccountView()
}
