# News App

News App is a Flutter application that provides the latest news articles from various categories. It includes features
such as online/offline news fetching, caching, and connectivity status updates.

## Features

- Fetch news articles from a remote server.
- Cache news articles locally for offline access.
- Display connectivity status (online/offline).
- Navigate to detailed news articles.
- Change news categories.

## Installation

To get started with the News App, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/mes71/news_app.git
   cd news_app

## Project Structure

``` 
lib/
├── data/
│ ├── bindings/ # Bindings for dependency injection
│ ├── controller/ # Controllers for managing app state
│ ├── di/ # Dependency injection setup
│ ├── mapper/ # Mapping between models and entities
│ └── routes/ # Route definitions
├── presentation/
│ ├── pages/ # UI pages
│ ├── utils/ # Utility functions and classes
│ └── widgets/ # Reusable UI components
└── main.dart # Application entry point

packages/
├── local_storage_core/
│ ├── lib/
│ │ ├── entity/ # Entity definitions for local storage
│ │ ├── repository/ # Repository for local storage operations
│ │ ├── source/ # Data source for local storage
│ │ └── local_storage_core.dart # Local storage core functionality
│ └── test/ # Tests for local storage core package
└── news_core/
├── lib/
│ ├── model/ # Data models for news articles and sources
│ ├── repository/ # Repository for news data operations
│ ├── source/ # Data source for news data
│ ├── utils/ # Utility functions and classes for news data
│ └── news_core.dart # Core functionality for news data
└── test/ # Tests for news core package


