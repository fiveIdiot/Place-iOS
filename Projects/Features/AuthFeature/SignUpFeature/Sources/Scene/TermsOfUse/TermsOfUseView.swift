//
//  TermsOfUseView.swift
//  SignUpFeature
//
//  Created by 선민재 on 7/18/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

import BaseFeature
import DesignSystem

struct TermsOfUseView: View {
    @State private var agreeAll: Bool = false
    
    @State private var agreeAllToggleImage: Image = DesignSystemAsset.PlaceImage.toggleOff.swiftUIImage
    
    private let viewModel: TermsOfUseViewModel
    
    init(viewModel: TermsOfUseViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
                .ignoresSafeArea()
            
            VStack {
                PlaceNavigationView()
                    .frame(height: 48)
                
                HStack {
                    Text("플레이스 이용약관에\n동의해주세요")
                        .font(PlaceFontSystem.headline2)
                        .foregroundStyle(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                        .lineLimit(2)
                        .padding(.leading, 16)
                    Spacer()
                }
                .padding(.top, 16)
                
                Button(action: {
                    self.agreeAll = !agreeAll
                    
                    if self.agreeAll {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOn.swiftUIImage
                    } else {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOff.swiftUIImage
                    }
                    
                }) {
                    HStack {
                        
                        agreeAllToggleImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.leading, 16)
                        
                        Text("모두 동의")
                            .font(PlaceFontSystem.subHeadline3)
                            .foregroundColor(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                            .padding(.leading, 8)
                        
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 52)
                .background(DesignSystemAsset.PlaceColor.grey10.swiftUIColor)
                .cornerRadius(8)
                .padding(.top, 12)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
                Button(action: {
                    self.agreeAll = !agreeAll
                    
                    if self.agreeAll {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOn.swiftUIImage
                    } else {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOff.swiftUIImage
                    }
                    
                }) {
                    HStack {
                        
                        agreeAllToggleImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("(필수) 이용약관")
                            .font(PlaceFontSystem.body1)
                            .foregroundColor(DesignSystemAsset.PlaceColor.grey6.swiftUIColor)
                            .padding(.leading, 8)
                        
                        Spacer()
                        
                        DesignSystemAsset.PlaceImage.arrowRight.swiftUIImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                            .padding(.trailing, 0)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 21)
                .padding(.top, 16)
                .padding(.leading, 32)
                .padding(.trailing, 32)
                
                Button(action: {
                    self.agreeAll = !agreeAll
                    
                    if self.agreeAll {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOn.swiftUIImage
                    } else {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOff.swiftUIImage
                    }
                    
                }) {
                    HStack {
                        
                        agreeAllToggleImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("(필수) 개인정보 제3자 제공 동의")
                            .font(PlaceFontSystem.body1)
                            .foregroundColor(DesignSystemAsset.PlaceColor.grey6.swiftUIColor)
                            .padding(.leading, 8)
                        
                        Spacer()
                        
                        DesignSystemAsset.PlaceImage.arrowRight.swiftUIImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                            .padding(.trailing, 0)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 21)
                .padding(.top, 16)
                .padding(.leading, 32)
                .padding(.trailing, 32)
                
                
                Button(action: {
                    self.agreeAll = !agreeAll
                    
                    if self.agreeAll {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOn.swiftUIImage
                    } else {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOff.swiftUIImage
                    }
                    
                }) {
                    HStack {
                        
                        agreeAllToggleImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("(필수) 위치정보 수집")
                            .font(PlaceFontSystem.body1)
                            .foregroundColor(DesignSystemAsset.PlaceColor.grey6.swiftUIColor)
                            .padding(.leading, 8)
                        
                        Spacer()
                        
                        DesignSystemAsset.PlaceImage.arrowRight.swiftUIImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                            .padding(.trailing, 0)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 21)
                .padding(.top, 16)
                .padding(.leading, 32)
                .padding(.trailing, 32)
                
                Button(action: {
                    self.agreeAll = !agreeAll
                    
                    if self.agreeAll {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOn.swiftUIImage
                    } else {
                        self.agreeAllToggleImage = DesignSystemAsset.PlaceImage.toggleOff.swiftUIImage
                    }
                    
                }) {
                    HStack {
                        
                        agreeAllToggleImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("(선택) SMS 및 이메일 메세지 전송 동의")
                            .font(PlaceFontSystem.body1)
                            .foregroundColor(DesignSystemAsset.PlaceColor.grey6.swiftUIColor)
                            .padding(.leading, 8)
                        
                        Spacer()
                        
                        DesignSystemAsset.PlaceImage.arrowRight.swiftUIImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                            .padding(.trailing, 0)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 21)
                .padding(.top, 16)
                .padding(.leading, 32)
                .padding(.trailing, 32)
                
                
                Spacer()
                
                Spacer()
                
                Button(action: {
                    self.viewModel.moveToEnterNickNameView()
                }) {
                    Text("다음")
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 48)
                        .font(PlaceFontSystem.subHeadline3)
                        .tint(DesignSystemAsset.PlaceColor.black.swiftUIColor)
                        .background(DesignSystemAsset.PlaceColor.orange5.swiftUIColor)
                        .cornerRadius(8)
                }
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .padding(.bottom, 16)
            }
        }
    }
}
