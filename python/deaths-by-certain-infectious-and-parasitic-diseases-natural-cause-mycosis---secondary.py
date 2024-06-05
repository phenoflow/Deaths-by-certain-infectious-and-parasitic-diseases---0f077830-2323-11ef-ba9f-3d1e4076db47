# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"B46.9","system":"icd10"},{"code":"B41","system":"icd10"},{"code":"B40.1","system":"icd10"},{"code":"B40.8","system":"icd10"},{"code":"A42","system":"icd10"},{"code":"B46","system":"icd10"},{"code":"A42.1","system":"icd10"},{"code":"B36.9","system":"icd10"},{"code":"A42.7","system":"icd10"},{"code":"B49","system":"icd10"},{"code":"B40.7","system":"icd10"},{"code":"B46.8","system":"icd10"},{"code":"B40.2","system":"icd10"},{"code":"B41.8","system":"icd10"},{"code":"B46.4","system":"icd10"},{"code":"B38.8","system":"icd10"},{"code":"A42.9","system":"icd10"},{"code":"B46.5","system":"icd10"},{"code":"B41.0","system":"icd10"},{"code":"B43","system":"icd10"},{"code":"B38.2","system":"icd10"},{"code":"A42.0","system":"icd10"},{"code":"B43.9","system":"icd10"},{"code":"B38","system":"icd10"},{"code":"B38.7","system":"icd10"},{"code":"B41.7","system":"icd10"},{"code":"A42.8","system":"icd10"},{"code":"B40.9","system":"icd10"},{"code":"A42.2","system":"icd10"},{"code":"B46.0","system":"icd10"},{"code":"B38.4","system":"icd10"},{"code":"B41.9","system":"icd10"},{"code":"B38.9","system":"icd10"},{"code":"B49.X","system":"icd10"},{"code":"B43.8","system":"icd10"},{"code":"B38.1","system":"icd10"},{"code":"B40","system":"icd10"},{"code":"B48.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('deaths-by-certain-infectious-and-parasitic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycosis---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycosis---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycosis---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
