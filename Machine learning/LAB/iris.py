import pandas as pd

df=pd.read_csv('Sample4 - Iris.csv')
print(df)
print(df.loc[1])
print(df.iloc[1:4,2:3])
print(df[df['Class']=='setosa'])