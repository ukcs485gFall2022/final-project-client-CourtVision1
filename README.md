<!--
Name of your final project
-->
# Shower Tracker
![Swift](https://img.shields.io/badge/swift-5.5-brightgreen.svg) ![Xcode 14.2+](https://img.shields.io/badge/xcode-13.2%2B-blue.svg) ![iOS 16.0+](https://img.shields.io/badge/iOS-15.0%2B-blue.svg) ![watchOS 9.0+](https://img.shields.io/badge/watchOS-8.0%2B-blue.svg) ![CareKit 2.1+](https://img.shields.io/badge/CareKit-2.1%2B-red.svg) ![ci](https://github.com/netreconlab/CareKitSample-ParseCareKit/workflows/ci/badge.svg?branch=main)

## Description
<!--
Give a short description on what your project accomplishes and what tools is uses. Basically, what problems does it solve and why it's different from other apps in the app store.
-->
I created an app called Shower Tracker intended to let users keep track of their shower taking and cleanliness habits. My app allows users to track things such as: shower length, shoulder mobility, water usage, shampoo usage, if they took a shower today, times they washed their face, amount of shampoo and clean towels they have, and how dirty they feel.

### Demo Video
<!--
Add the public link to your YouTube or video posted elsewhere.
-->
Like to the demo video [here](https://www.youtube.com/watch?v=1-cOTB7EfDs)


### Designed for the following users
<!--
Describe the types of users your app is designed for and who will benefit from your app.
-->
This app is designed for anyone who takes showers or baths. It will benefit everyone who uses it as they will become more efficient in their shower habbits. It will also benefit the environment as I hope peope who use this app will be more conscious of their water and shampoo usage.
<!--
In addition, you can drop screenshots directly into your README file to add them to your README. Take these from your presentations.
-->
<img width="458" alt="1" src="https://user-images.githubusercontent.com/96318326/206094144-fae8b505-570c-4bd7-b683-20b3b2e47ffb.png">

<img width="438" alt="2" src="https://user-images.githubusercontent.com/96318326/206094190-1e79b5e7-adcc-4036-93cb-bd5a7c274db0.png">

<img width="442" alt="3" src="https://user-images.githubusercontent.com/96318326/206094216-4226b558-518e-473a-9e84-b9d311438d7a.png">

<img width="432" alt="4" src="https://user-images.githubusercontent.com/96318326/206094240-74ccb77c-4550-4b20-9246-c12260804f99.png">

<img width="430" alt="5" src="https://user-images.githubusercontent.com/96318326/206094277-c7a3cdb8-b3d8-45f3-b037-99cd25513703.png">

<img width="436" alt="6" src="https://user-images.githubusercontent.com/96318326/206094305-8d3a03b8-01fc-47ce-8fde-dced0b857e42.png">

<img width="426" alt="7" src="https://user-images.githubusercontent.com/96318326/206094321-aaa557c3-b90b-4ece-9110-68def9cf9ef4.png">

<img width="436" alt="8" src="https://user-images.githubusercontent.com/96318326/206094342-834aa2d5-a759-43dc-a3a5-ed2dec660b87.png">

<img width="432" alt="9" src="https://user-images.githubusercontent.com/96318326/206094375-42e0bb39-a1e1-4e41-81c2-a41ad192da39.png">

<img width="436" alt="10" src="https://user-images.githubusercontent.com/96318326/206094386-5d8c046c-2996-418d-b57e-9690ad96b686.png">

<img width="435" alt="11" src="https://user-images.githubusercontent.com/96318326/206094402-2efa3452-bb63-441f-96c0-5753d1da3249.png">

<!--
List all of the members who developed the project and
link to each members respective GitHub profile
-->
Developed by: 
- Alex Cox(https://github.com/CourtVision1) - `University of Kentucky`, `Computer Science`

ParseCareKit synchronizes the following entities to Parse tables/classes using [Parse-Swift](https://github.com/parse-community/Parse-Swift):

- [x] OCKTask <-> Task
- [x] OCKHealthKitTask <-> HealthKitTask 
- [x] OCKOutcome <-> Outcome
- [x] OCKRevisionRecord.KnowledgeVector <-> Clock
- [x] OCKPatient <-> Patient
- [x] OCKCarePlan <-> CarePlan
- [x] OCKContact <-> Contact

**Use at your own risk. There is no promise that this is HIPAA compliant and we are not responsible for any mishandling of your data**

<!--
What features were added by you, this should be descriptions of features added from the [Code](https://uk.instructure.com/courses/2030626/assignments/11151475) and [Demo](https://uk.instructure.com/courses/2030626/assignments/11151413) parts of the final. Feel free to add any figures that may help describe a feature. Note that there should be information here about how the OCKTask/OCKHealthTask's and OCKCarePlan's you added pertain to your app.
-->
## Contributions/Features
* Users can click on the shower picture and they will be redirected to a website with 10 useful shower tips.
* Users can test their shoulder mobility which could be needed for scrubbing all areas.
* Users can do a check in survey to log how long they took a shower and how much shampoo they used.
* Users can track their water usage throughout a day
* Users can keep track if they took a shower on a given day
* Users can keep track if they have clean towels, soap, and shampoo in stock
* Users can keep track of when they wash their face
* Users can keep track of when they feel dirty
* Users can view the data from some of these tasks in the insights tab
* Users can add contacts from their device to the app
* Users can search their contact list in the app
* Users can add information to their own profile and save that information

## Final Checklist
<!--
This is from the checkist from the final [Code](https://uk.instructure.com/courses/2030626/assignments/11151475). You should mark completed items with an x and leave non-completed items empty
-->
- [x] Signup/Login screen tailored to app
- [x] Signup/Login with email address
- [x] Custom app logo
- [x] Custom styling
- [x] Add at least **5 new OCKTask/OCKHealthKitTasks** to your app
  - [x] Have a minimum of 7 OCKTask/OCKHealthKitTasks in your app
  - [ ] 3/7 of OCKTasks should have different OCKSchedules than what's in the original app
- [x] Use at least 5/7 card below in your app
  - [x] InstructionsTaskView - typically used with a OCKTask
  - [x] SimpleTaskView - typically used with a OCKTask
  - [x] Checklist - typically used with a OCKTask
  - [x] Button Log - typically used with a OCKTask
  - [x] GridTaskView - typically used with a OCKTask
  - [ ] NumericProgressTaskView (SwiftUI) - typically used with a OCKHealthKitTask
  - [ ] LabeledValueTaskView (SwiftUI) - typically used with a OCKHealthKitTask
- [x] Add the LinkView (SwiftUI) card to your app
- [x] Replace the current TipView with a class with CustomFeaturedContentView that subclasses OCKFeaturedContentView. This card should have an initializer which takes any link
- [x] Tailor the ResearchKit Onboarding to reflect your application
- [x] Add tailored check-in ResearchKit survey to your app
- [x] Add a new tab called "Insights" to MainTabView
- [x] Replace current ContactView with Searchable contact view
- [x] Change the ProfileView to use a Form view
- [x] Add at least two OCKCarePlan's and tie them to their respective OCKTask's and OCContact's 

## Wishlist features
<!--
Describe at least 3 features you want to add in the future before releasing your app in the app-store
-->
1. Before adding Shower Tracker to the app store, I would like to add achievements and badges for completing those achievements to the app. 
2. Before adding Shower Tracker to the app store, I would like to add the ability for users to post questions and other users can answer them. 
3. Before adding Shower Tracker to the app store, I would like to add pop up notifications to remind people to stay clean or display shower tips

## Challenges faced while developing
<!--
Describe any challenges you faced with learning Swift, your baseline app, or adding features. You can describe how you overcame them.
-->
The biggest challenge I faced while doing this project is working with the existing CareKit codebase. I believe I have a solid enough knowledge of swift and MVVM but I still had a hard time understanding why code was/was not working at times. 
Another challenge I faced was trying to get researchKit to work correctly with the on campus computers. It was a big hassle to build researchKit every time I started a new assignment.
## Setup Your Parse Server

### Heroku
The easiest way to setup your server is using the [one-button-click](https://github.com/netreconlab/parse-hipaa#heroku) deplyment method for [parse-hipaa](https://github.com/netreconlab/parse-hipaa).


## View your data in Parse Dashboard

### Heroku
The easiest way to setup your dashboard is using the [one-button-click](https://github.com/netreconlab/parse-hipaa-dashboard#heroku) deplyment method for [parse-hipaa-dashboard](https://github.com/netreconlab/parse-hipaa-dashboard).
