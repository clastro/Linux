#!/bin/bash

csv_dir="/excel_folder/"
output_dir="/output_folder/"

for csv_file in "$csv_dir"/*.xlsx; do
    python3 -c "
import pandas as pd
df = pd.read_excel('$csv_file')
if 'PatientID' in df.columns:
    for patient_id in df['PatientID']:
        print(patient_id)
" | while read -r pattern; do
        if [ -n "$pattern" ]; then
            find "$csv_dir" -name "*$pattern*" -exec cp -rf {} "$output_dir" \;
        fi
    done
done



#Shell로 csv 칼럼에 있는 이름과 파일 이름을 대조해서 일괄 복사하기
