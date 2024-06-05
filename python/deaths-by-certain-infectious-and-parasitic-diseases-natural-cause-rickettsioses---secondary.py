# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"A77.8","system":"icd10"},{"code":"A79.8","system":"icd10"},{"code":"A79.9","system":"icd10"},{"code":"A77.9","system":"icd10"},{"code":"A79","system":"icd10"},{"code":"A77","system":"icd10"},{"code":"A79.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('deaths-by-certain-infectious-and-parasitic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsioses---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsioses---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsioses---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
