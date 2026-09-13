import pandas as pd
import psycopg2


def load_data():

    df = pd.read_csv("data/cleaned_expenses.csv")

    connection = psycopg2.connect(
        host="localhost",
        database="expense_db",
        user="postgres",
        password="YOUR_PASSWORD",
        port="5432"
    )

    cursor = connection.cursor()

    for _, row in df.iterrows():

        cursor.execute(
            """
            INSERT INTO expenses
            (expense_date, category, amount, payment_method, description)
            VALUES (%s, %s, %s, %s, %s)
            """,
            (
                row["date"],
                row["category"],
                row["amount"],
                row["payment_method"],
                row["description"]
            )
        )

    connection.commit()

    cursor.close()
    connection.close()

    print("Data loaded successfully into PostgreSQL!")


if __name__ == "__main__":
    load_data()
