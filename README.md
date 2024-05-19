# recepo

## Table of Contents

1. Demo
2. Introduction
3. Features
4. Installation
5. Dependencies
6. Usage
<!-- 9. License -->

## Demo

## Introduction

recepo is an ecommerce app that allows users to browse and purchase products online. It is designed for both sellers and buyers, providing a platform for sellers to showcase their products and for buyers to easily find and purchase items they need. The app aims to simplify the online shopping experience and make it convenient for users to explore a wide range of products from various sellers.

## Features

- User authentication: Users can create accounts and log in to access personalized features.
- Product browsing: Users can browse through a wide range of products from various sellers.
- Product search: Users can search for specific products based on keywords or categories.
- Product details: Users can view detailed information about each product, including images, descriptions, and prices.
- Order management: Users can view and manage their orders, including tracking the status of their deliveries.
- Ratings and reviews: Users can rate and review products, helping other users make informed purchasing decisions.
- Responsive design: The app is designed to work seamlessly across different devices and screen sizes.

## Installation

```bash
git clone https://github.com/OmarAmeer96/Recepo.git
cd Recepo
flutter pub get
flutter run
```

## Dependencies

This app uses several dependencies to enhance its functionality:

- **State Management**: The app uses `flutter_bloc` for state management.
- **Code Generation**: `freezed` and `freezed_annotation` are used for code generation.
- **Dependency Injection**: `get_it` is used for injection.
- **JSON Serialization**: `json_serializable` and `json_annotation` are used for JSON serialization.
- **Networking**: The app uses `dio`, `retrofit`, `retrofit_generator`, and `pretty_dio_logger` for networking.
- **Local Storage**: `shared_preferences` is used for local data storage.
- **SVG Support**: `flutter_svg` is used for SVG support.
- **Screen Adaptation**: `flutter_screenutil` is used for screen and font size adaptation.
- **Onboarding**: `flutter_onboarding_slider` is used for onboarding screens.
- **Splash Screen Animation**: `animated_splash_screen`, `page_transition`, and `lottie` are used for splash screen animations.
- **Navigation**: `get` is used for navigation.
- **Image Handling**: `cached_network_image` and `image_picker` are used for handling images.
- **Permission Handling**: `permission_handler` is used for handling permissions.
- **Product Deletion**: `flutter_slidable` is used for handling product deletion.
- **Icon Styling**: `font_awesome_flutter` is used for icon styling.

## Usage

### User Authentication

Users can create accounts and log in to access personalized features.

### Product Search

Users can search for specific products based on keywords or categories.

### Product Details

Users can view detailed information about each product, including images, descriptions, and prices.

### Order Management

Users can view and manage their orders, including tracking the status of their deliveries.
