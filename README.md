# Movie App Flutter

This Flutter app allows users to browse movies, search for them, and view detailed information for each movie. The app features a splash screen, home screen, search screen, and a details screen, providing a smooth user experience similar to Netflix.

## Screens and Features

### 1. **Splash Screen**

The splash screen is the first screen users see when launching the app. It features an animated transition with a logo or splash image that fades and scales into view. After the animation, the user is navigated to the **Home Screen**.

- Displays a logo or image related to the app.
- Animation effects: fade-in and scale-up.

### 2. **Home Screen**

The **Home Screen** displays a list of movies fetched from the API endpoint `https://api.tvmaze.com/search/shows?q=all`. Movies are shown with:
- A thumbnail image.
- Title of the movie.
- Short summary of the movie.

The user can tap on any movie to navigate to the **Details Screen** for more information.

- Includes a search bar at the top to navigate to the **Search Screen**.
- Displays a grid of movie thumbnails.

### 3. **Search Screen**

The **Search Screen** allows users to search for movies by typing the movie name. It fetches results from the API endpoint `https://api.tvmaze.com/search/shows?q={search_term}` and displays them in a grid similar to the Home Screen.

- Displays a search bar for entering the movie name.
- Shows movie results based on the search query.

### 4. **Details Screen**

The **Details Screen** shows detailed information for a selected movie. It displays:
- The movie's large image.
- Title of the movie.
- Full summary of the movie.
- Additional information such as genres, language, and premiere date.

## UI Design

The app's UI is designed to resemble the Netflix style with a dark theme, a grid layout for movie thumbnails, and smooth navigation between screens. The **BottomNavigationBar** allows easy navigation between the **Home Screen** and **Search Screen**.

### 5. **Bottom Navigation Bar**

The bottom navigation bar has two tabs:
- **Home**: Navigates to the Home Screen.
- **Search**: Navigates to the Search Screen.