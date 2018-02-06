import pandas as pd
import numpy as np

drug_use = pd.read_csv("data/drug-use-by-age.csv")

ages = np.array(drug_use["age"])

heroin = np.array(drug_use["heroin-use"])
alc = np.array(drug_use["alcohol-use"])
n = np.array(drug_use.n)

usage = pd.DataFrame({"Number of responders":n, "Alcohol use":alc, "Heroin use":heroin})
