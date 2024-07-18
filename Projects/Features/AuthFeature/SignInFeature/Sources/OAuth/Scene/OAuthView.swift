//
//  OAuthView.swift
//  SignInFeature
//
//  Created by 선민재 on 7/17/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

import BaseFeature
import DesignSystem

struct OAuthView: View {
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
                .ignoresSafeArea()
            
            VStack {
                PlaceNavigationView()
                
                HStack {
                    Text("간편 로그인으로\n간단하게")
                        .font(PlaceFontSystem.headline2)
                        .foregroundStyle(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                        .lineLimit(2)
                        .padding(.leading, 16)
                    Spacer()
                }
                .padding(.top, 16)
                
                Button(action: {
                    print("구글로 시작하기 버튼 클릭됨")
                }) {
                    
                    ZStack {
                        HStack {
                            DesignSystemAsset.PlaceImage.googleIcon.swiftUIImage
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.leading, 16)
                            
                            Spacer()
                        }
                        
                        Text("구글로 시작하기")
                            .font(PlaceFontSystem.subHeadline3)
                            .foregroundColor(DesignSystemAsset.PlaceColor.black.swiftUIColor)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 48)
                .background(DesignSystemAsset.PlaceColor.google.swiftUIColor)
                .cornerRadius(8)
                .padding(.top, 16)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
                Button(action: {
                    print("카카오로 시작하기 버튼 클릭됨")
                }) {
                    
                    ZStack {
                        HStack {
                            DesignSystemAsset.PlaceImage.kakaoIcon.swiftUIImage
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.leading, 16)
                            
                            Spacer()
                        }
                        
                        Text("카카오로 시작하기")
                            .font(PlaceFontSystem.subHeadline3)
                            .foregroundColor(DesignSystemAsset.PlaceColor.black.swiftUIColor)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 48)
                .background(DesignSystemAsset.PlaceColor.kakao.swiftUIColor)
                .cornerRadius(8)
                .padding(.top, 12)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
                Button(action: {
                    print("애플로 시작하기 버튼 클릭됨")
                }) {
                    ZStack {
                        HStack {
                            DesignSystemAsset.PlaceImage.appleIcon.swiftUIImage
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.leading, 16)
                            
                            Spacer()
                        }
                        
                        Text("애플로 시작하기")
                            .font(PlaceFontSystem.subHeadline3)
                            .foregroundColor(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 48)
                .background(DesignSystemAsset.PlaceColor.apple.swiftUIColor)
                .cornerRadius(8)
                .padding(.top, 12)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
                Spacer()
                
                Spacer()
            }
        }
        .toolbar(.hidden)
    }
}
