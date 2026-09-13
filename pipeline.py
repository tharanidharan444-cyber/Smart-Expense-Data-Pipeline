import subprocess


print("Starting Smart Expense Data Pipeline...")

print("\nStep 1: Cleaning data")

subprocess.run(
    ["python", "src/clean_data.py"]
)

print("\nStep 2: Loading data into PostgreSQL")

subprocess.run(
    ["python", "src/load_data.py"]
)

print("\nPipeline completed successfully!")
