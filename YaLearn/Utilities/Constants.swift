//
//  Constants.swift
//  YaLearn
//
//  Created by Thabet on 3/1/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import Foundation
import UIKit

struct Constants {

    struct SegueIds {
        
        static let homeVC = "showHomeVC" //USED
        static let loginVC = "showLoginVC" //USED
    }
    
    struct ViewControllers {
        
        //launch page
        static let launchVC = "LaunchVC"
        
        //login pages
        static let loginVC = "SignInVC"
        static let registerVC = "SignUpVC"
        static let changePwdVC = "ChangePasswordVC"
        static let forgotPwdVC = "ForgotPasswordVC"
        static let updateProfileVC = "UpdateProfileVC"
        static let whoIsWatchingVC = "WhoIsWatchingVC"
        
        //baseVC
        static let baseVC = "BaseTabBarController"
        
        //tabbar main pages
        static let homeVC = "HomeVC"
        static let searchVC = "SearchVC"
        static let categoriesVC = "CategoriesVC"
        static let downloadVC = "DownloadsVC"
        static let moreVC = "MoreVC"
        
        //Single video page
        static let singleVC = "SingleVideoVC"
        static let playerVC = "PlayerVC"
        
        //****Tabbar Sub pages****
        //SettingsSub
        static let manageProVC = "ManageProVC"
        static let editProfileVC = "EditProfileVC"
        static let appSettingsVC = "AppSettingsVC"
        static let staticPagesVC = "StaticPagesVC"
        static let accountVC = "AccountVC"
        static let viewPlansVC = "ViewPlansVC"
        static let viewPlanDetailsVC = "ViewPlanDetailsVC"
        static let paymentsVC = "PaymentsVC"
        static let invoiceVC = "InvoiceVC"
        static let myPlansVC = "MyPlansVC"
        static let myPlanDetailsVC = "MyPlanDetailsVC"
        static let cardsVC = "CardsVC"
        static let videosListCommonVC = "VideosListCommonVC"
        static let paidVideosVC = "PaidVideosVC"
        static let editAccountVC = "EditAccountVC"
        static let notificationVC = "NotificationVC"
        
        // SeeAll page
        static let seeAllVC = "SeeAllVC"
        
        // Category detail
        static let categoryDetailedVC = "CategoryDetailedVC"
    }
    
    struct Cells {
        
        //TableView cells
        static let HomeBannerTopCell = "HomeBannerTopCell" //USED
        static let HomeCollectionCell = "HomeCollectionCell" //USED
        static let inCollectionCell = "inCollectionCell" //USED
        
        static let moreCell = "MoreCell"
        static let appSettingsCell = "AppSettingsCell"
        static let accountCell = "AccountCell"
        static let viewPlansCell = "ViewPlansCell"
        static let myPlansCell = "MyPlansCell"
        static let cardsCell = "CardsCell"
        static let homeBannerTCell = "HomeBannerCell"
        static let homeCommonCell = "HomeCommonCell"
        static let videosListTCell = "VideosListCommonCell"
        static let notificationCell = "NotificationCell"
        
        //Single video table cells:
        static let playerTableCell = "PlayerTableCell"
        static let detailedTableCell = "DetailedTableCell"
        static let utilityTableCell = "UtilityTableCell"
        static let trailerTableCell = "TrailersTableCell"
        static let seasonTableCell = "SeasonTableCell"
        static let moreLikeThisTableCell = "MoreLikeThisTableCell"
        
        //CollectionView cell
        static let moreCCell = "MoreCCell"
        static let manageCCell = "ManageCCell"
        
        static let homeDefaultCCell = "HomeDefaultCollectionCell"//USED
        
        static let categoryCollectionCell = "CategoriesCollectionCell"
        static let seeaAllCCell = "SeeAllCollectionCell"
        static let whoIsWatchingCCell = "WhoIsWatchingCCell"
        static let homeBannerCCell = "HomeBannerCollectionCell"
    }
    
}
