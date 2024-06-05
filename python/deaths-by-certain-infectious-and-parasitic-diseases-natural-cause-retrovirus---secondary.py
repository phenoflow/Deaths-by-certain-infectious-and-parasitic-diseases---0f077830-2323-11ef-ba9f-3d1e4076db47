# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"A81.8","system":"icd10"},{"code":"B22.7","system":"icd10"},{"code":"B20.4","system":"icd10"},{"code":"B21.1","system":"icd10"},{"code":"B24.X","system":"icd10"},{"code":"B20.0","system":"icd10"},{"code":"A83.6","system":"icd10"},{"code":"B20.8","system":"icd10"},{"code":"B97.4","system":"icd10"},{"code":"B21.7","system":"icd10"},{"code":"B20.6","system":"icd10"},{"code":"B23","system":"icd10"},{"code":"A81.2","system":"icd10"},{"code":"B24","system":"icd10"},{"code":"B20.1","system":"icd10"},{"code":"B21.3","system":"icd10"},{"code":"B21.9","system":"icd10"},{"code":"A92.0","system":"icd10"},{"code":"B23.1","system":"icd10"},{"code":"B21","system":"icd10"},{"code":"A98.3","system":"icd10"},{"code":"B23.8","system":"icd10"},{"code":"A80.1","system":"icd10"},{"code":"B20.9","system":"icd10"},{"code":"B22","system":"icd10"},{"code":"A81","system":"icd10"},{"code":"A98.4","system":"icd10"},{"code":"B20.7","system":"icd10"},{"code":"B20.3","system":"icd10"},{"code":"B22.0","system":"icd10"},{"code":"A81.1","system":"icd10"},{"code":"A80.2","system":"icd10"},{"code":"B22.2","system":"icd10"},{"code":"B22.1","system":"icd10"},{"code":"A93.0","system":"icd10"},{"code":"B23.0","system":"icd10"},{"code":"B21.0","system":"icd10"},{"code":"B21.8","system":"icd10"},{"code":"B20.5","system":"icd10"},{"code":"B20.2","system":"icd10"},{"code":"B21.2","system":"icd10"},{"code":"B20","system":"icd10"},{"code":"B97.3","system":"icd10"},{"code":"B23.2","system":"icd10"},{"code":"A81.0","system":"icd10"},{"code":"A81.9","system":"icd10"},{"code":"B33.3","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('deaths-by-certain-infectious-and-parasitic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-retrovirus---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-retrovirus---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-retrovirus---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
