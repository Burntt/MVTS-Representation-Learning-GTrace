import os
import csv

# Path to the CSV file
csv_file = 'src/container_traces_2990_a_b_c_d_e_f.csv'

 # Read the CSV file and extract column names
with open(csv_file, 'r') as file:
    reader = csv.reader(file)
    column_names = next(reader)

# Output the column names
print("Column Names:")
for idx, name in enumerate(column_names):
    print(f"Column {idx + 1}: {name}")