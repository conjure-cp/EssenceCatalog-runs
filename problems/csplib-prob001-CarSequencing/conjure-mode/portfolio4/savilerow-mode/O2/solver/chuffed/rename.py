import os

files = [f for f in os.listdir('.') if "fnz2feat" in f]

for file in files:
    new_name = file.replace("fnz2feat_", "").replace("param","fnz2feat")
    os.rename(file, new_name)
