# Sales_Data_Analysis_and_Visualization


## Data Source

The sales data used in this project is obtained from [Kaggle](https://www.kaggle.com/). You can find the dataset [here](data/sales_data.csv).

## Setup Instructions

### Requirements

- Python 3.x
- R
- Required Python packages (listed in `docs/requirements.txt`)
- Required R packages (installed via the R script)

### Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/Sales_Data_Analysis_and_Visualization.git
    cd Sales_Data_Analysis_and_Visualization
    ```

2. **Create a virtual environment (optional but recommended)**:
    ```sh
    python -m venv venv
    source venv/bin/activate   # On Windows, use `venv\Scripts\activate`
    ```

3. **Install Python packages**:
    ```sh
    pip install -r docs/requirements.txt
    ```

4. **Install R packages**:
    Open an R session and run the following commands:
    ```R
    install.packages(c("DBI", "RSQLite", "ggplot2"))
    ```

## Usage

### Loading Data

The `load_data.py` script loads the sales data from the CSV file into an SQLite database.

```sh
python scripts/load_data.py





pip install -r docs/requirements.txt
