import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_excel("Dataset for Data Analytics.xlsx")
print("\nFirst 5 Rows")
print(df.head())

print("\nLast 5 Rows")
print(df.tail())

print("\nShape")
print(df.shape)

print("\nColumns")
print(df.columns)

print("\nDataset Info")
df.info()

print("\nStatistical Summary")
print(df.describe())

print("\nMissing Values")
print(df.isnull().sum())
df["CouponCode"] = df["CouponCode"].fillna("No Coupon")

print("\nDuplicate Rows")
print(df.duplicated().sum())
df = df.drop_duplicates()

print(df.dtypes)

print(df.mean(numeric_only=True))
print(df.median(numeric_only=True))
print(df.std(numeric_only=True))
print(df.min(numeric_only=True))
print(df.max(numeric_only=True))
print(df.count())
print(df.nunique())

#HISTOGRAM
plt.figure()
plt.hist(df["TotalPrice"], bins=20)
plt.title("Distribution of Total Price")
plt.xlabel("Total Price")
plt.ylabel("Frequency")
plt.show()

#BOX_PLOT
plt.figure()
plt.boxplot(df["TotalPrice"])
plt.title("Box Plot of Total Price")
plt.show()

corr = df.corr(numeric_only=True)

#HEATMAP
plt.figure()
sns.heatmap(corr,annot=True,cmap="coolwarm")
plt.show()