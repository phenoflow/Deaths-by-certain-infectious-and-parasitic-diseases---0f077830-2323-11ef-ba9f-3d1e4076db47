# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"A89.X","system":"icd10"},{"code":"A98.1","system":"icd10"},{"code":"B30.8","system":"icd10"},{"code":"B33.1","system":"icd10"},{"code":"A92.8","system":"icd10"},{"code":"A93","system":"icd10"},{"code":"A93.2","system":"icd10"},{"code":"A94","system":"icd10"},{"code":"B18.9","system":"icd10"},{"code":"A98.5","system":"icd10"},{"code":"A92.9","system":"icd10"},{"code":"B34.0","system":"icd10"},{"code":"A92.4","system":"icd10"},{"code":"A98.8","system":"icd10"},{"code":"A98.2","system":"icd10"},{"code":"B30","system":"icd10"},{"code":"A92.1","system":"icd10"},{"code":"A87.1","system":"icd10"},{"code":"B18.2","system":"icd10"},{"code":"B19.0","system":"icd10"},{"code":"A87","system":"icd10"},{"code":"A94.X","system":"icd10"},{"code":"B34.9","system":"icd10"},{"code":"A88.8","system":"icd10"},{"code":"B33.2","system":"icd10"},{"code":"B30.1","system":"icd10"},{"code":"A92","system":"icd10"},{"code":"A87.9","system":"icd10"},{"code":"B30.0","system":"icd10"},{"code":"B07","system":"icd10"},{"code":"A98.0","system":"icd10"},{"code":"A93.8","system":"icd10"},{"code":"B34.4","system":"icd10"},{"code":"B34","system":"icd10"},{"code":"B18.1","system":"icd10"},{"code":"B18.0","system":"icd10"},{"code":"B19.9","system":"icd10"},{"code":"B18.8","system":"icd10"},{"code":"A89","system":"icd10"},{"code":"A92.3","system":"icd10"},{"code":"A98","system":"icd10"},{"code":"A88","system":"icd10"},{"code":"B07.X","system":"icd10"},{"code":"B19","system":"icd10"},{"code":"B30.9","system":"icd10"},{"code":"B34.8","system":"icd10"},{"code":"B33","system":"icd10"},{"code":"B18","system":"icd10"},{"code":"A93.1","system":"icd10"},{"code":"A99.X","system":"icd10"},{"code":"A99","system":"icd10"},{"code":"A87.8","system":"icd10"},{"code":"B33.8","system":"icd10"},{"code":"B94.2","system":"icd10"},{"code":"B30.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('deaths-by-certain-infectious-and-parasitic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["adenoviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["adenoviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["adenoviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
