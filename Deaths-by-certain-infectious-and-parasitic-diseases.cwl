cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hansens---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hansens---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsia---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tinea---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tinea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hansens---secondary/output
  classical-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: classical-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tinea---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-retrovirus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-retrovirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: classical-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  adenoviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: adenoviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-retrovirus---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-biovar---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-biovar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: adenoviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-neurosyphilis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-neurosyphilis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-biovar---secondary/output
  epidemic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: epidemic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-neurosyphilis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-influenzae---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-influenzae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: epidemic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-candidiasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-candidiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-influenzae---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-coronavirus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-coronavirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-candidiasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningoencephalitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningoencephalitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-coronavirus---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-shigellosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-shigellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningoencephalitis---secondary/output
  staphylococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: staphylococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-shigellosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hookworm---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hookworm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: staphylococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-subacute---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-subacute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hookworm---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-listeriosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-listeriosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-subacute---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-granulosus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-granulosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-listeriosis---secondary/output
  cytomegaloviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: cytomegaloviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-granulosus---secondary/output
  subcutaneous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: subcutaneous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cytomegaloviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  histological-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: histological-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: subcutaneous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  other-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: other-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: histological-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  mycobacterial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: mycobacterial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: other-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-fluke---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-fluke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: mycobacterial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brucella---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brucella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-fluke---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichuriasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichuriasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brucella---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-legionnaire---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-legionnaire---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichuriasis---secondary/output
  superficial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: superficial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-legionnaire---secondary/output
  periurethral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: periurethral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: superficial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cryptococcosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cryptococcosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: periurethral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-intestine---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-intestine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cryptococcosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-simplex---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-simplex---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-intestine---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-classif---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-classif---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-simplex---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-malariae---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-malariae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-classif---secondary/output
  arenaviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: arenaviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-malariae---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-piedra---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-piedra---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: arenaviral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-schistosom---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-schistosom---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-piedra---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-relapsing---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-relapsing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-schistosom---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-salmonella---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-salmonella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-relapsing---secondary/output
  gonococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: gonococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-salmonella---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-origin---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-origin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: gonococcal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dengue---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dengue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-origin---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-filariasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-filariasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dengue---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-equine---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-equine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-filariasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lymph---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lymph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-equine---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dracunculiasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dracunculiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lymph---secondary/output
  tuberculoid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: tuberculoid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dracunculiasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: tuberculoid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-involvement---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-involvement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-stomatitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-stomatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-involvement---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leptospirosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leptospirosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-stomatitis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tularaemia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tularaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leptospirosis---secondary/output
  nervous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: nervous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tularaemia---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-disseminated---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-disseminated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: nervous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-falciparum---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-falciparum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-disseminated---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-shigella---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-shigella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-falciparum---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-humanus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-humanus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-shigella---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-typhu---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-typhu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-humanus---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-helminthiasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-helminthiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-typhu---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lesion---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lesion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-helminthiasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-confirm---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-confirm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lesion---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mumps---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mumps---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-confirm---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-unspec---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mumps---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-plague---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-plague---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-unspec---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-echinococcosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-echinococcosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-plague---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sporotrichosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sporotrichosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-echinococcosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-melioidosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-melioidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sporotrichosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-enterovirus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-enterovirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-melioidosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cysticercosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cysticercosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-enterovirus---secondary/output
  anogenital-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: anogenital-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cysticercosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: anogenital-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumonia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumonia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  nasopharyngeal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: nasopharyngeal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumonia---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-transmitted---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-transmitted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: nasopharyngeal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  secondary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: secondary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-transmitted---secondary/output
  ocular-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: ocular-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: secondary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dermatitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dermatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: ocular-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-description---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-description---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dermatitis---secondary/output
  pulmonary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: pulmonary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-description---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningococcaemia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningococcaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: pulmonary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  urban-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: urban-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningococcaemia---secondary/output
  typhoid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: typhoid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: urban-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  spirochaetal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: spirochaetal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: typhoid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bordetella---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bordetella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: spirochaetal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycetoma---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycetoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bordetella---secondary/output
  amoebic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: amoebic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycetoma---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-perfringens---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-perfringens---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: amoebic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsioses---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsioses---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-perfringens---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-complication---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-complication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rickettsioses---secondary/output
  gastrointestinal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: gastrointestinal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-complication---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-psittaci---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-psittaci---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: gastrointestinal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-miliary---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-miliary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-psittaci---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hirudiniasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hirudiniasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-miliary---secondary/output
  mixed-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: mixed-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-hirudiniasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rectum---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rectum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: mixed-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-strept---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-strept---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rectum---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-myiasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-myiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-strept---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-enterobiasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-enterobiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-myiasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-scarlet---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-scarlet---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-enterobiasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-diphtheria---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-diphtheria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-scarlet---secondary/output
  visceral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: visceral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-diphtheria---secondary/output
  erysipeloid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: erysipeloid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: visceral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trachoma---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trachoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: erysipeloid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-german---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-german---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trachoma---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-organ---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-organ---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-german---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pleurisy---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pleurisy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-organ---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-toxoplasmosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-toxoplasmosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pleurisy---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-septicaemia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-septicaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-toxoplasmosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-neonatorum---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-neonatorum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-septicaemia---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-aspergillosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-aspergillosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-neonatorum---secondary/output
  initial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: initial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-aspergillosis---secondary/output
  symptomatic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: symptomatic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: initial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-phthiriasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-phthiriasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: symptomatic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-stage---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-stage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-phthiriasis---secondary/output
  chancroid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: chancroid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-stage---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-nocardiosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-nocardiosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: chancroid-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cough---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cough---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-nocardiosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mononucleosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mononucleosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cough---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-scabies---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-scabies---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mononucleosis---secondary/output
  urogenital-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: urogenital-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-scabies---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-heart---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: urogenital-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-culture---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-culture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-heart---secondary/output
  primary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: primary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-culture---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chlamydia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chlamydia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: primary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-ratbite---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-ratbite---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chlamydia---secondary/output
  certain---secondary:
    run: certain---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-ratbite---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-borderline---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-borderline---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: certain---secondary/output
  yellow-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: yellow-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-borderline---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lymphogranuloma---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lymphogranuloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: yellow-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-liver---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-liver---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-lymphogranuloma---secondary/output
  listerial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: listerial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-liver---secondary/output
  genitourinary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: genitourinary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: listerial-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bones---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bones---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: genitourinary-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-capsulati---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-capsulati---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bones---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chickenpox---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chickenpox---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-capsulati---secondary/output
  obstetrical-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: obstetrical-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chickenpox---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chaga---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chaga---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: obstetrical-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  latent-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: latent-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-chaga---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-ascariasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-ascariasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: latent-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-anthrax---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-anthrax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-ascariasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichomoniasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichomoniasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-anthrax---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-smallpox---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-smallpox---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichomoniasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-infestation---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-infestation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-smallpox---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-complicated---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-complicated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-infestation---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dermatophytosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dermatophytosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-complicated---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-african---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-african---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-dermatophytosis---secondary/output
  lepromatous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: lepromatous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-african---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-exanthem---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-exanthem---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: lepromatous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-aureu---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-aureu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-exanthem---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-carate---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-carate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-aureu---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-strongyloidiasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-strongyloidiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-carate---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-measles---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-measles---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-strongyloidiasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-louseborne---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-louseborne---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-measles---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-herpe---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-herpe---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-louseborne---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-angiostrongyliasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-angiostrongyliasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-herpe---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-diphyllobothriasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-diphyllobothriasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-angiostrongyliasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-erysipela---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-erysipela---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-diphyllobothriasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-parvovirus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-parvovirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-erysipela---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cestode---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cestode---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-parvovirus---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-vivax---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-vivax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cestode---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bartonellosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bartonellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-vivax---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-corporis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-corporis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bartonellosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumocystosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumocystosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-corporis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bronchu---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bronchu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumocystosis---secondary/output
  multiple-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: multiple-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bronchu---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tetanus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tetanus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: multiple-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-gastroenteritis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-gastroenteritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-tetanus---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pancreatitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pancreatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-gastroenteritis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichinellosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichinellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pancreatitis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pharyngitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pharyngitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-trichinellosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pharyngitis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-yaws---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-yaws---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-meningitis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-capitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-capitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-yaws---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sparganosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sparganosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-capitis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leprosy---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leprosy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sparganosis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cholerae---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cholerae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leprosy---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leishmaniasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leishmaniasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-cholerae---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rabies---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rabies---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-leishmaniasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brugia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brugia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-rabies---secondary/output
  oculopathy-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: oculopathy-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brugia---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-amoebiasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-amoebiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: oculopathy-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brucellosis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brucellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-amoebiasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-fever---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-fever---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brucellosis---secondary/output
  central-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: central-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-fever---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-taenia---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-taenia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: central-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-generalized---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-generalized---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-taenia---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-onchocerciasis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-onchocerciasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-generalized---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycoplasma---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycoplasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-onchocerciasis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sequelae---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-mycoplasma---secondary/output
  mucocutaneous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: mucocutaneous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-sequelae---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-arthropodborne---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-arthropodborne---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: mucocutaneous-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumonitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumonitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-arthropodborne---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-monkeypox---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-monkeypox---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-pneumonitis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brain---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brain---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-monkeypox---secondary/output
  nonvenereal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: nonvenereal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-brain---secondary/output
  cerebral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: cerebral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: nonvenereal-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  sylvatic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary:
    run: sylvatic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: cerebral-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bacillus---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bacillus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: sylvatic-deaths-by-certain-infectious-and-parasitic-diseases-natural-cause---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-poliomyelitis---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-poliomyelitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-bacillus---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-toxoplasma---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-toxoplasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-poliomyelitis---secondary/output
  deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-vibrio---secondary:
    run: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-vibrio---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-toxoplasma---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: deaths-by-certain-infectious-and-parasitic-diseases-natural-cause-vibrio---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
