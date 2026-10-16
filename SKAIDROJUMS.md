01 Sistēmas apraksts
Mana datora nosaukums ir DESKTOP-QL3SEES. Datorā tiek izmantota Microsoft Windows 10 Home operētājsistēma ar būvējuma numuru 19045. Skripta izpildes brīdī darbojās 210 procesi un tika izmantota PowerShell versija 5.1.19041.7725.

02 Desmit procesi pēc atmiņas
Izvadē redzami desmit procesi, kas patērē visvairāk operatīvās atmiņas. Visvairāk atmiņas izmantoja process copilotapp ar 430,1 MB, bet vismazāk no atlasītajiem procesiem izmantoja explorer ar 246,5 MB.

03 Servisu skaitīšana
Manā datorā darbojās 111 servisi un apturēti bija 175 servisi. Kopējais servisu skaits bija 286. Summa sakrita ar kopējo servisu skaitu, jo 111 + 175 = 286.

04 Automātisko servisu palaišana
Tika atrasti vairāki automātiskie servisi, kas bija apturēti, piemēram, Brave atjaunināšanas serviss, Microsoft Edge Update serviss un Google atjaunināšanas servisi. Mēģinot tos palaist bez administratora tiesībām, sistēma atgrieza kļūdas paziņojumus par nepietiekamām piekļuves tiesībām.

05 Kļūdas sistēmas žurnālā
Pēdējo 48 stundu laikā sistēmas žurnālā tika atrasti 9 kļūdu ieraksti. Visbiežāk sastopamais avots bija Microsoft-Windows-DistributedCOM ar 6 ierakstiem. No šī rezultāta var secināt, ka datorā ir dažas sistēmas kļūdas, tomēr to skaits nav liels.

06 Draiveri, kas nav Microsoft
CSV failā tika saglabāti 19 draiveri, kuru piegādātājs nav Microsoft. Kā piemēru izvēlējos Intel draiveri, kas pieder Intel grafiskajai kartei un nodrošina tās darbību.

07 Diska vieta un brīdinājums
Diskā C: bija 86.88 GB brīvas vietas no 232.23 GB kopējā apjoma. Diskā D: bija 1007.4 GB brīvas vietas no 1863.01 GB kopējā apjoma. Nevienam diskam netika parādīts brīdinājums, jo brīvās vietas apjoms bija lielāks par noteikto robežvērtību 10 GB.

08 Divi ceļi, viens rezultāts
Get-Service komandas izpildes laiks bija 10.30 ms, bet Get-CimInstance izpildes laiks bija 343.70 ms. Ātrāks manā datorā bija Get-Service. Starpība bija ievērojama, jo Get-Service izpildījās daudz ātrāk.

09 Kurš lietotājs palaida procesu
Skripts parādīja, ka daļu procesu ir palaidis lietotājs hreni, piemēram, chrome.exe, brave.exe, Discord.exe un powershell.exe. Daļai sistēmas procesu lietotājs netika norādīts, jo tie darbojas sistēmas konta vārdā vai tiem nav pieejama pilna informācija bez papildu tiesībām.

10 Kopsavilkums
Atkārtoti nolasot datus, procesu skaits bija 208, darbojošos servisu skaits 109, apturēto servisu skaits 177 un kļūdu ierakstu skaits 9. Procesu un servisu skaits atšķīrās no iepriekšējās izvades, jo sistēma nepārtraukti palaiž un aptur procesus un servisu darbību. Kļūdu skaits palika nemainīgs. Diskā C: bija 86.88 GB brīvas vietas, bet diskā D: bija 1007.4 GB brīvas vietas.
