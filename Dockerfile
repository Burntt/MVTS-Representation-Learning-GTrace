# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the training script
CMD ["python", "src/main.py", "--output_dir", "experiments", "--comment", "unsupervised pretraining", "--name", "container_traces_pretrained", "--records_file", "Unsupervised_records.xls", "--data_dir", "src/container_traces_21_a_b_c_d_e_f.csv", "--data_class", "container_traces", "--pattern", "TRAIN", "--val_ratio", "0.2", "--epochs", "700", "--lr", "0.001", "--optimizer", "RAdam", "--batch_size", "8", "--pos_encoding", "learnable", "--d_model", "32", "--dim_feedforward", "64", "--num_layers", "1", "--num_heads", "1"]
