# Walmart Sales Data Analysis

This project analyzes Walmart sales data using Python, Pandas, and PostgreSQL.

## Features
- Data cleaning and preprocessing
- Sales trend analysis
- Database integration with PostgreSQL
- Data visualization

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/walmart-project.git
cd walmart-project
```

### 2. Create Virtual Environment
```bash
python -m venv walmart_env
source walmart_env/bin/activate  # On Windows: walmart_env\Scripts\activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. PostgreSQL Setup
1. Install PostgreSQL on your system
2. Create a database named `walmart_db`
3. Update the `.env` file with your database credentials

### 5. Environment Variables
Create a `.env` file in the project root with your database credentials:
```
DB_USER=your_username
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=walmart_db
```

### 6. Run the Analysis
Open `main.ipynb` in Jupyter Notebook or VS Code and run the cells.

## Project Structure
```
walmart-project/
├── main.ipynb              # Main analysis notebook
├── Walmart.csv            # Raw data file
├── requirements.txt       # Python dependencies
├── .env                   # Database credentials (not in repo)
├── .gitignore            # Git ignore file
└── README.md             # This file
```

## Technologies Used
- **Python 3.13**
- **Pandas** - Data manipulation
- **NumPy** - Numerical computing
- **PostgreSQL** - Database
- **SQLAlchemy** - Database ORM
- **Jupyter Notebook** - Interactive development

## Data
The dataset contains Walmart sales information including:
- Invoice details
- Product categories
- Customer information
- Sales amounts
- Timestamps

## Analysis Highlights
- Data cleaning and preprocessing
- Duplicate and null value handling
- Price calculations
- Database storage for further analysis

## Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License
This project is for educational purposes.
# Walmart_ETL
