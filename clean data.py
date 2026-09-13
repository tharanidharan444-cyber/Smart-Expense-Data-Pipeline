import pandas as pd


def clean_expense_data(input_file, output_file):

    df = pd.read_csv(input_file)

    
    df["date"] = pd.to_datetime(df["date"])

  
    df = df.drop_duplicates()

    
    df = df.dropna(subset=["date", "category", "amount"])

    
    df["amount"] = pd.to_numeric(df["amount"], errors="coerce")


    df = df[df["amount"] > 0]

    
    df["category"] = df["category"].str.strip().str.title()

    output

    Data cleaning completed!
Rows after cleaning: 10

    # Standardize payment method
    df["payment_method"] = df["payment_method"].str.strip().str.upper()

    df.to_csv(output_file, index=False)

    print("Data cleaning completed!")
    print(f"Rows after cleaning: {len(df)}")


if __name__ == "__main__":

    clean_expense_data(
        "data/expenses.csv",
        "data/cleaned_expenses.csv"
    )
