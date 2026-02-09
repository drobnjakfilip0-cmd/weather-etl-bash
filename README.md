# Weather ETL Bash Scripts

This repository contains Bash scripts to extract, transform, and load (ETL) weather data for different locations (Casablanca, Zubin Potok). The scripts append daily weather data (current temperature and forecast) into a CSV file.

## Files
- `weather_casablanca.sh` – Script for Casablanca
- `weather_zubin_potok.sh` – Script for Zubin Potok
- `.gitignore` – Files ignored by Git

## Usage
1. Place the Bash script in a folder.
2. Run the script:
```bash
bash weather_zubin_potok.sh
```
3. The CSV file will be updated with a new row containing today's date, current temperature, and forecast.

## CSV Format
| date       | current_temp | forecast_temp |
|------------|--------------|---------------|
| YYYY-MM-DD | +X°C         | +Y°C          |

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
