# Product List Application

## Overview
This is a **Flutter** application that displays a list of products and allows users to view product details. Users can also add products to their cart and receive notifications upon adding an item.

## Features
- 📋 **Product List**: Displays a list of available products with name and price.
- 🔍 **Search Functionality**: Users can search for products dynamically.
- 🛍️ **Product Details Screen**: Shows detailed information about a selected product.
- 🛒 **Add to Cart**: Allows users to add products to the cart and receive a success notification.
- 🔔 **Push Notifications**: Displays local notifications when a product is added to the cart.
- ⏰ **Background Notifications**: Sends periodic notifications every 15 minutes.

## Screenshots
![image](https://github.com/user-attachments/assets/b7cb53ce-0484-4039-b16a-9166139201dd)

![image](https://github.com/user-attachments/assets/35893660-b79f-4f20-9402-52eac0bd484f)



## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/flutter-product-app.git
   ```
2. Navigate to the project directory:
   ```sh
   cd flutter-product-app
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the application:
   ```sh
   flutter run
   ```

## Dependencies
The following dependencies are used in this project:
- **GetX** for state management
- **flutter_local_notifications** for local push notifications
- **workmanager** for background tasks

To install dependencies, run:
```sh
flutter pub get
```

## Usage
- Open the application to see the product list.
- Search for a product using the search bar.
- Click on a product to view its details.
- Tap on "Add to Cart" to receive a notification.

## Configuration
For custom notification sounds, add a `.mp3` file to:
```
android/app/src/main/res/raw/custom_sound.mp3
```
Modify `notification_service.dart` to use the new sound:
```dart
sound: RawResourceAndroidNotificationSound('custom_sound')
```

## Contributing
Feel free to fork this repository and submit pull requests!

## License
This project is licensed under the MIT License.

