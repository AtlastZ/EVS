# EVS - Electric Vehicle Search

EVS is a web application designed to help users search, filter, and compare electric vehicles. It provides a comprehensive database of electric vehicles with detailed specifications and an intuitive interface for finding the perfect EV.

## Features

- **Car Search & Filtering**
  - Search cars by brand or model name
  - Filter by brand, model year, price range, and range
  - Responsive grid layout with car cards
  - Detailed car information display

- **Car Comparison**
  - Side-by-side comparison of two electric vehicles
  - Compare key specifications including:
    - Range and battery capacity
    - Performance metrics (power, torque, acceleration)
    - Dimensions and weight
    - Charging capabilities
    - Price and features

- **User Interface**
  - Clean, modern design using Tailwind CSS
  - Responsive layout for all devices
  - Easy navigation with navbar
  - Intuitive filtering and search interface

## Tech Stack

- Ruby on Rails 8.0
- PostgreSQL (Production) / SQLite3 (Development)
- Tailwind CSS for styling
- Turbo for enhanced page interactions

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone [repository-url]
   cd evs
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Setup the database:
   ```bash
   rails db:create db:migrate db:seed
   ```

4. Start the Rails server:
   ```bash
   rails server
   ```

5. Visit `http://localhost:3000` in your browser

## Development

- The application uses SQLite3 in development for simplicity
- Tailwind CSS is used for styling
- The application follows Rails conventions and best practices

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
