# -*- coding: utf-8 -*-
"""
Created on Fri Nov 12 14:47:01 2021

@author: Alessandro
"""

import numpy as np 

target = "G:\\MLDatasets\\RegressionDatasets\\Covid3Month\\Covid3Month_TRAIN.ts"


   
classi = []
with open(target) as file_to_clean:
    for line in file_to_clean:     
        line = line.split(":")
        class_label = line[len(line)-1]
        if not "#" or "@" or "///" in class_label:
            classi.append(class_label)
      
    classi = np.unique(classi)
    
payload = "@ClassLabel true"
for classe in classi:
    if  not (classe.startswith("#") or classe.startswith("@") or classe.startswith("//")):
        payload = payload + " " + classe.rstrip("\n")

print(payload)