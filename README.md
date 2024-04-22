# polaris_meter

A  Polaris Meter is a Server form Application.

Which build on Flutter version 3.19.5


Polaris Meter build on the DDD Domain-Driven Design.



Simply said, it's better on every level.
We still have a good separation into layers which brings beautiful traits ease of navigation and testability.
So no, we still don't put all of our code into the UI or state management.
We will go over everything in more detail later but for now just know that the diagram below outlines the key architectural layers present in a DDD Flutter app.
We're going to use BLoC in this application.

   [presentation](lib/presentation)
                            ^ ^
                            . .
                            . .
                            . .
                            ⌄ ⌄
   [application](lib/application)
                            ^ ^ 
                            . .
                            . .
                            . .
                            ⌄ ⌄
   [domain](lib/domain)
                            ^ ^
                            . .
                            . .
                            . .
                            ⌄ ⌄
   [infrastructure](lib/infrastructure)


The the DDD is the basic working Principle is Functional Programing with MicroServices


1. User Impression on the button Communicate with  the application Layer

2. Application Communicate with the Domain Layer 

3. Domain Communicate with the Infrastructure Layer,
   And get the data from local or  call the api and return the response to the function

4. Infrastructure Layer Return to the domain Layer

5. Domain Layer Return to the Application Layer

6. Application Layer Return to the Presentation Layer






[main.dart](lib/main.dart)



main.dart is the main file of the application where dart start execution of the code 


1. Loads environment variables from a .env file.

2. App Config Read from config folder, Where a json file contains the app data

3. Initialize Hive & Adopter by giving it a home directory. and Adopter

4. Register GetIt Instance


[app_widget.dart](lib/presentation/core/app_widget.dart)

1. App Widget Contain the Router Config and MultiBlocProvider 

2. On the App Widget Class calling the HomeEvent.read() for loading the data on the home screen


[presentation](lib/presentation)

1. Presentation Layer Contain the Route , Core , UI
2. Router Folder Contain Router file and Generated Router File
3. Core Folder Contain the Common and the Custom Widgets
4. Home Folder Contain the  Home Page and the home Ui Widgets which is use only Home Page

  Home Page Contain the AppBar Widget and HomeOverView Widget


  Home AppBar Contain A title Widget which shows the internet change status in form of the red and
  green color of the container

  HomeOverView Widget Contain the Home Bloc BlocConsumer, in side the builder return the ListView 
  ListView Contains children of widget which are comes fom the formDate and through the switch providing
  the widget on the base of the componentType 
  [CustomTextFieldWidget,CustomDropdownWidget,CustomCheckBoxWidget,CustomRadioWidget,CustomImagePickerWidget] 
  to the ListView children and the last added ElevatedButton for the Submit the form
  

[widgets](lib/presentation/home/widgets)

The home Widgets are the custom Stateless widget and it has some basic futility
And wrap with the HomeBloc for getting the the user input using the (HomeEvent.getUserInput())

[custom_checkbox_widget.dart](lib/presentation/home/widgets/custom_checkbox_widget.dart)  CheckBox Widget
[custom_dropdown_widget.dart](lib/presentation/home/widgets/custom_dropdown_widget.dart)  Dropdown Widget
[custom_error_widget.dart](lib/presentation/home/widgets/custom_error_widget.dart)     Error Widget
[custom_image_picker_widget.dart](lib/presentation/home/widgets/custom_image_picker_widget.dart)  Image Picker Widget
[custom_radio_widget.dart](lib/presentation/home/widgets/custom_radio_widget.dart)   Radio Widget
[custom_textfield_widget.dart](lib/presentation/home/widgets/custom_textfield_widget.dart) TextField Widget

Label widget is use for the Showing Required widget

[label_widget.dart](lib/presentation/home/widgets/label_widget.dart)






[application](lib/application)

Application layer Contain the all bloc and direct connected with Presentation layer and the Domain Layer

[home](lib/application/home)

HomeBloc is responsible for the all CRUD Operation for the survey form and CRUD Event call the [home_repository.dart](lib/domain/home/home_repository.dart)

HomeBloc Working

Application trigger Read event for survey form data if internet is available then read data from the 

apiServices.getSurveyForm() api and return the data if internet not available  survey form data from

await AppUtil.localJson() it read data from the config json file

both function return the json data that json data converted in to the model using of SurveyFormDtos.fromJson() 

and the Future<Either<Failure, SurveyForm>> read() read return type is SurveyForm 

so calling toDomain() function which return the SurveyFormDtos to SurveyForm it return to the app
Application layer and shown in the ui





[home_event.dart](lib/application/home/home_event.dart)

All Event are created in the file file 




[internet](lib/application/internet)

InterNetBloc is responsible for the listen the internet status




[domain](lib/domain)


Domain Layer Contain Core features of the application 


1. Core Folder [core](lib/domain/core)

     [app_util](lib/domain/core/app_util) AppUtil contains the some core and common function 
     [config](lib/domain/core/config)  Config contains the app config read file 
     [di](lib/domain/core/di) Folder contain the Dependency injection file
     [error](lib/domain/core/error) Folder contain the All Errors 
     [mapper](lib/domain/core/mapper) Mapper Folder Contain the  model_to_dbmodel  dbmodel_to_model

     model_to_dbmodel Means Model Data save to Hive Data Using of the [mapper.dart](lib/domain/core/mapper/mapper.dart)
     dbmodel_to_model Means Hive Data  to Model Data Using of the [mapper.dart](lib/domain/core/mapper/mapper.dart)

     [network](lib/domain/core/network) It Provide the information about the internet is connected or not in terms for bool
     buy the using of the connectivity_plus 

     [network_client](lib/domain/core/network_client) Network Client Folder contains the api configurations bu the using of the Chopper





2. Home Folder [home](lib/domain/home) This folder contain the IHomeRepository  [is a abstract it have some functions ] and Home Model [home Model In for of the application needed structure and some additional data parameter]

3. AWS_s3 [aws_image_upload](lib/domain/aws_image_upload)  IAWSImageUploadRepository  [is a abstract it have some functions ]

4. Local  [local](lib/domain/local) Local contain the offline functionality Hive Model and hive CRUD Operation Repository


[infrastructure](lib/infrastructure)



1. Home Folder [home](lib/infrastructure/home) This folder contain the HomeRepository is extends the IHomeRepository  and Home Model [home_dtos Model which is created on the base of the json response]


Explanation of data Upload on the server

   a. Internet Bloc Listener the internet connection status
      if the internet is connected then Internet Bloc call the HomeEvent.update() and it call update function


HomeRepository update Working

1.  final localDataResponse = await localDataSourceImpl.reade();
 for getting data from local in side the reade function the hive data converted in to the SurveyForm 
2. SurveyForm contains image then Upload on the AWS using of the IAWSImageUploadRepository
3. awsS3.create( ) call [AWS Configuration is already done in the Dependency injection file]
and it return the fileName if internet is connected else InternetFailure
4. Once all the image uploaded on the aws  or Error it [localDataSourceImpl.reade] return the [Either<Failure, List<SurveyForm>> localDataResponse]
if response is right the the data is converted to the toDomain to toDtos()  
5. upload on the server data is need in the json formed so calling toJson()
6. And convert in required structure and call the [apiServices.updateSurveyForm(bodyParam)]
and pass the bodyParam which is converted data

7. if response is response.isSuccessful the call the [await localDataSourceImpl.delete();] for clear the local data base



2. AWS_s3 [aws_image_upload](lib/infrastructure/aws_image_upload)  AWSImageUploadRepository  is extends the IAWSImageUploadRepository 




