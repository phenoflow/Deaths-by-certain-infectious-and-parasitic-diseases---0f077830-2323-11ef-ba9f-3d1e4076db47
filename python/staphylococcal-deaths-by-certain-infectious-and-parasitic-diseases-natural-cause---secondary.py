# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"B95.0","system":"icd10"},{"code":"A05.0","system":"icd10"},{"code":"B95.4","system":"icd10"},{"code":"A41.2","system":"icd10"},{"code":"B95.5","system":"icd10"},{"code":"B95.3","system":"icd10"},{"code":"B95.2","system":"icd10"},{"code":"B95","system":"icd10"},{"code":"B95.7","system":"icd10"},{"code":"A49.0","system":"icd10"},{"code":"B95.1","system":"icd10"},{"code":"A41.1","system":"icd10"},{"code":"B95.8","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('deaths-by-certain-infectious-and-parasitic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["staphylococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["staphylococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["staphylococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
