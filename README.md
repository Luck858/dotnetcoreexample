# Weather Forecast API

A simple .NET 9 Web API that provides weather forecast data.

## Endpoints

### GET /weatherforecast
Returns a 5-day weather forecast with random temperature data.

**Response:**
```json
[
  {
    "date": "2024-01-15",
    "temperatureC": 25,
    "temperatureF": 77,
    "summary": "Warm"
  }
]
```

## Build and Run Instructions

### Prerequisites
- .NET 9 SDK
- Git

### Clone the Repository
```bash
git clone https://github.com/dummyrepos/dotnetcoreexample.git
cd dotnetcoreexample
```

### Build the Application
```bash
dotnet build
```

### Run the Application
```bash
dotnet run
```

### Publish for Release
```bash
dotnet publish -c Release -o ./publish
```

### Run from Published Folder
```bash
cd publish
dotnet DockerDotnetCore.dll
```

### Access the API
- Development: `https://localhost:5001/weatherforecast`
- OpenAPI documentation: `https://localhost:5001/openapi/v1.json` (Development only)

## Usage Examples

### cURL
```bash
curl https://localhost:5001/weatherforecast
```

### PowerShell
```powershell
Invoke-RestMethod -Uri "https://localhost:5001/weatherforecast"
```

## Response Format

Each forecast item contains:
- `date`: Date in YYYY-MM-DD format
- `temperatureC`: Temperature in Celsius (-20 to 55)
- `temperatureF`: Temperature in Fahrenheit (calculated)
- `summary`: Weather description (Freezing, Bracing, Chilly, Cool, Mild, Warm, Balmy, Hot, Sweltering, Scorching)