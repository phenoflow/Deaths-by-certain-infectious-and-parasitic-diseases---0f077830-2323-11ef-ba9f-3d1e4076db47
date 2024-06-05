# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"B05.4","system":"icd10"},{"code":"B78.0","system":"icd10"},{"code":"A04.8","system":"icd10"},{"code":"A08.2","system":"icd10"},{"code":"A08.0","system":"icd10"},{"code":"A04.7","system":"icd10"},{"code":"A06.3","system":"icd10"},{"code":"B82.9","system":"icd10"},{"code":"A04.2","system":"icd10"},{"code":"A04.1","system":"icd10"},{"code":"A08.1","system":"icd10"},{"code":"A18.3","system":"icd10"},{"code":"A07","system":"icd10"},{"code":"A07.1","system":"icd10"},{"code":"A08.3","system":"icd10"},{"code":"A08","system":"icd10"},{"code":"A04.0","system":"icd10"},{"code":"A04.9","system":"icd10"},{"code":"B82","system":"icd10"},{"code":"A04.3","system":"icd10"},{"code":"A04.4","system":"icd10"},{"code":"A07.2","system":"icd10"},{"code":"B77.0","system":"icd10"},{"code":"A06.1","system":"icd10"},{"code":"A04.5","system":"icd10"},{"code":"A04","system":"icd10"},{"code":"A07.3","system":"icd10"},{"code":"A07.0","system":"icd10"},{"code":"B65.1","system":"icd10"},{"code":"A04.6","system":"icd10"},{"code":"A07.8","system":"icd10"},{"code":"A07.9","system":"icd10"},{"code":"A08.5","system":"icd10"},{"code":"A08.4","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('deaths-by-certain-infectious-and-parasitic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-intestine---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-intestine---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-intestine---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
