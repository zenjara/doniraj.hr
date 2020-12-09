organizations = [
    {
        id: 1,
        name: "Udruga Srce",
        description: "Udruga osoba s cerebralnom paralizom",
        city_id: (City.find_by_name 'Split')&.id,
        address: 'Mosećka 62, Split',
        telephone: '021/502-466',
        email: 'udruga.srce@gmail.com',
        iban: 'HR8324070001100565991',
        website: 'https://srce-cp-split.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 2,
        name: "Udruga Srce Zelina",
        description: "Udruga djece s teškoćama u razvoju, osoba s invaliditetom i njihovih obitelj",
        city_id: (City.find_by_name "Sveti Ivan Zelina")&.id,
        address: 'Petra Preradovića 3, 10380 Sveti Ivan Zelina',
        telephone: '01/2060-462',
        email: 'info@udruga-srce-zelina.hr',
        iban: 'HR6723600001101845153',
        website: 'www.udruga-srce-zelina.hr',
        swift: 'ZABA HR2X',
        verified: true,
        archived: false
    },
    {
        id: 3,
        name: "Udruga za sindrom Down-21",
        description: "Udruga za sindrom Down-21 je nevladina,nepolitička i neprofitna udruga koja zastupa sve osobe sa sindromom Down diljem cijele Hrvatske",
        city_id: (City.find_by_name "Split")&.id,
        address: 'Krležina 32, 21 000 Split',
        telephone: '091 798 9296',
        email: 'info@downsindrom21.hr',
        iban: 'HR8424070001100573151',
        website: 'http://downsindrom21.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 4,
        name: "Udruga Anđeli",
        description: "Udruga roditelja za djecu najteže tjelesne invalide i djecu s teškoćama u razvoju Anđeli.",
        city_id: (City.find_by_name "Split")&.id,
        address: 'Šibenska 33, Split',
        telephone: '021/569-561',
        email: 'andjeli@andjeli.hr',
        iban: 'HR2824070001100651274',
        website: 'http://www.andjeli.hr/hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 5,
        name: "Županijska liga protiv raka",
        description: "Županijska liga protiv raka osnovana je 1967. godine kao nevladina, nestranačka, neprofitna i humanitarna udruga. Najstarija je udruga u Splitu i jedna od prvih u Hrvatskoj koja djeluje s ciljem zaštite zdravlja i smanjenja pojavnosti i smrtnosti bolesti raka, te zdravstvene edukacije stanovništva Splitsko-dalmatinske županije.",
        city_id: (City.find_by_name "Split")&.id,
        address: 'Spinčićeva 1, 21000 Split',
        telephone: '021/556-476',
        email: 'office@zlpr.hr',
        iban: 'HR4824070001100579328',
        website: 'http://www.zlpr.hr/',
        swift: 'OTPVHR2X',
        verified: true,
        archived: false
    },
    {
        id: 6,
        name: "Udruga žena oboljelih i liječenih od raka - SVE za NJU",
        description: "SVE za NJU udruga žena oboljelih i liječenih od raka pruža psihosocijalni, informacijski i logističku podršku ženama oboljelima od bilo koje vrste raka.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Ulica Kneza Mislava 10, 10000 Zagreb',
        telephone: '01/641-8765',
        email: 'info@svezanju.hr',
        iban: 'HR5523600001102016768',
        website: 'http://www.svezanju.hr/',
        swift: 'ZABAHR2X',
        verified: true,
        archived: false
    },
    {
        id: 7,
        name: "Udruga Moje dijete Solin",
        description: "UDRUGA RODITELJA DJECE S POTEŠKOĆAMA U RAZVOJU  Moje dijete SOLIN osnovana je 29.12.2003. godine u Solinu.",
        city_id: (City.find_by_name "Solin")&.id,
        address: 'Kralja Zvonimira 117E, 21210 Solin',
        telephone: '021/262-416',
        email: 'udruga@moje-dijete-solin.hr',
        iban: 'HR4524070001100619346',
        website: 'https://www.moje-dijete-solin.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 8,
        name: "Dječji dom Maestral",
        description: "Dječji dom Maestral Split ustanova je socijalne skrbi koja skrbi o djeci i mlađim punoljetnim osobama bez roditelja ili odgovarajuće roditeljske skrbi, trudnicama ili roditelju s djecom do godine dana, biološkim, udomiteljskim i posvojiteljskim obiteljima, djeci bez pratnje-stranim državljanima i djeci i mladima nakon izlaska iz skrbi, a djeluje na trinaest lokacija: u Splitu, Kaštelima, Solinu, Klisu, Imotskom, Žrnovnici i Podstrani. Ustanova djeluje u nadležnosti Ministarstva rada, mirovinskog sustava, obitelji i socijalne politike.",
        city_id: (City.find_by_name "Split")&.id,
        address: 'Jurja Šišgorića 4, 21000 Split',
        telephone: '021/535-300',
        email: 'dom.maestral@gmail.com',
        iban: 'HR1023900011100024990',
        website: 'http://www.ddmaestral.hr/',
        swift: 'HPBZHR2X',
        verified: true,
        archived: false
    },
    {
        id: 9,
        name: "Udruga Mali Princ Đurđevac",
        description: "Udruga osoba s intelektualnim teškodama i njihovih obitelji „Mali princ“ osnovana je dana 14.03.1998. godine kao Udruga za pomoć osobama s mentalnom retardacijom Đurđevac.",
        city_id: (City.find_by_name "Đurđevac")&.id,
        address: 'Trg sv. Jurja 12, 48350 Đurđevac',
        telephone: '048/811-384',
        email: 'mali.princ.dju@gmail.com',
        iban: 'HR7923600001101385448',
        website: 'http://www.udrugamrdju.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 10,
        name: 'Centar za odgoj i obrazovanje Juraj Bonači',
        description: "Centar za odgoj i obrazovanje “Juraj Bonači“ Split ustanova je koja pruža socijalne usluge djeci s teškoćama u razvoju te odraslim osobama s intelektualnim oštećenjima te provodi djelatnost osnovnoškolskog i srednjoškolskog odgoja, obrazovanja i osposobljavanja djece s teškoćama u razvoju. Centar skrbi o 540 korisnika.",
        city_id: (City.find_by_name "Split")&.id,
        address: 'Brune Bušića 30, Split',
        telephone: '021/532-969',
        email: 'centar.juraj.bonaci@gmail.com',
        iban: 'HR382390001-1100017987',
        website: 'http://centar-juraj-bonaci.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 11,
        name: 'Krijesnica',
        description: "Udruga za pomoć djeci i obiteljima suočenim s malignim bolestima",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Prilaz Gjure Deželića 50, Zagreb',
        telephone: '01/3770-022',
        email: 'krijesnica@krijesnica.hr',
        iban: 'HR3923600001101481616',
        website: 'http://krijesnica.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 12,
        name: 'Centar za rehabilitaciju Stančić',
        description: "Centar za rehabilitaciju Stančić je ustanova socijalne skrbi pod neposrednom ingerencijom Ministarstva demografije, obitelji, mladih i socijalne politike.",
        city_id: (City.find_by_name "Dugo Selo")&.id,
        address: 'Zagrebačka 23, 10 370 Dugo Selo, Stančić',
        telephone: '01/2757-474',
        email: 'info.centar.stancic@gmail.com',
        iban: 'HR7223900011100017569',
        website: 'http://centar-stancic.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 13,
        name: 'Udruga za podršku osobama s intelektualnim oštećenjima Grada Zagreba',
        description: "Udruga za podršku osobama s intelektualnim oštećenjima Grada Zagreba osnovana je davne 1958. godine. Članovi Udruge većinom su osobe s intelektualnim oštećenjima, njihovi roditelji/skrbnici, kao i rođaci, prijatelji, stručnjaci i druge osobe koje sudjeluju ili žele sudjelovati za dobrobit osoba s intelektualnim oštećenjima.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Prečko 6, Zagreb',
        telephone: '01/3873-655',
        email: 'udruga.osit.zg@gmail.com',
        iban: 'HR3123600001101573716',
        website: 'http://www.udruga-mro-zagreb.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 14,
        name: 'Dječji dom Zagreb',
        description: "Dječji dom ZAGREB ustanova je socijalne skrbi koja kroz socijalne usluge zbrinjava djecu bez roditelja ili bez odgovarajuće roditeljske skrbi, djecu čiji je razvoj bio ugrožen u vlastitim obiteljima, te trudnice i majke s djecom. Dom pruža usluge i obiteljima djece, primarnim, udomiteljskim i posvojiteljskim.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Nazorova 49, Zagreb',
        telephone: '01/4821-700',
        email: 'dom-za-djecu-zagreb@zg.ht.hr',
        iban: 'HR0323900011100013767',
        website: 'https://domzadjecu.hr/',
        swift: 'HPBZHR2X',
        verified: true,
        archived: false
    },
    {
        id: 15,
        name: 'Udruga Kolibrići',
        description: "Udruga Kolibrići osnovana je krajem 2011. godine na inicijativu roditelja vitalno ugrožene djece s ciljem osiguravanja i poboljšavanja osnovnih životnih uvjeta. Udruga je neprofitna, humanitarna organizacija koja trenutno okuplja sedamdesetak članova. Osnovna je zadaća Udruge, organiziranje dobrotvornih akcija i drugih humanitarnih aktivnosti radi prikupljanja sredstava potrebnih za kupnju pomagala i lijekova te pokrivanja troškova liječenja.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Zelinska 2, 10 000 Zagreb',
        telephone: '091/386-9241',
        email: 'udrugakolibrici@gmail.com',
        iban: 'HR8523600001102273569',
        website: 'https://www.kolibrici.hr/',
        swift: 'ZABAHR2X',
        verified: true,
        archived: false
    },
    {
        id: 16,
        name: 'Smiješak za sve',
        description: "Mi smo neprofitna udruga „Smiješak za sve“. Djelujemo od 2013. godine, trenutačno imamo 230 volontera, a s provođenjem projekata započeli smo početkom 2014. godine i otada neprestano, predano i bez predaha dijelimo ono čega u ubrzanoj svakodnevici zasivljenoj otuđenjem i egocentrizmom ponestaje – razgovor, prisutnost, podršku kroz čitanje, note i šetnju.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Bijenička cesta 134, 10 000 Zagreb',
        telephone: '091/722-3883',
        email: 'smijesak.za.sve@gmail.com',
        iban: 'HR9823600001102730690',
        website: 'https://www.smijesakzasve.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 17,
        name: 'Udruga Sjena',
        description: "Udruga “Sjena” registrirana je u lipnju 2013.godine. Do sada smo djelovali na raznim područjima kako bi bili podrška obiteljima djece s teškoćama u razvoju/osoba s invaliditetom. Sukladno tome, osigurali smo roditeljima sudjelovanje na PECS edukaciji, potencirali premještanje određenog broja djece koja se školuju u CZOO Goljak-Rudeš u adekvatnije prostore. ",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Božidara Magovca 64, Zagreb',
        telephone: '095/199-5816',
        email: 'info@udruga-sjena.hr',
        iban: 'HR3124020061100662253',
        website: 'https://udruga-sjena.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 18,
        name: 'Mali Zmaj',
        description: "Društvo „Mali zmaj“ započelo je kao mali interni projekt nekolicine prijatelja u prosincu 2009. godine. Iz želje da uveselimo što veći broj djece i pomognemo onima kojima je to najpotrebnije naše djelovanje je počelo obuhvaćati sve širi krug ljudi. Nakon nekoliko manjih ali uspješnih akcija, koje su bile neslužbene i neformalne, pokazala se potreba za registracijom udruge i malo ozbiljnijim pristupom. Društvo za poboljšanje kvalitete života siromašne i nezbrinute djece «MALI ZMAJ» – Zagreb je otvoreno 14. srpnja 2010. godine.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Našička 3, 10 000 Zagreb',
        telephone: '01/6701-307',
        email: 'malizmaj.hr@gmail.com',
        iban: 'HR5824840081105567475',
        website: 'https://www.malizmaj.hr/',
        swift: 'RZBHHR2X',
        verified: true,
        archived: false
    },
    {
        id: 19,
        name: 'Udruga Zamisli',
        description: "Glavna misija Udruge jest osnaživanje mladih i osoba s invaliditetom za afirmaciju, samoostvarenje i aktivan život u zajednici, osiguravanje i pružanje informacija, savjeta, podrške, te zagovaranje i promocija mogućih rješenja. U tu svrhu rad Udruge istovremeno se odvija kroz dva tematska odjela: Rad s osobama s invaliditetom i Rad s mladima. ",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Avenija Marina Držića 71/A, 10 000 Zagreb',
        telephone: '01/5584-318',
        email: 'udruga@zamisli.hr',
        iban: 'HR7723400091110756416',
        website: 'https://zamisli.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 20,
        name: 'Udruga Ozana',
        description: "Udruga 'OZANA' osnovana je 1991. godine u svrhu poboljšanja kvalitete života osoba s invaliditetom i njihovih obitelji. Trenutačno skrbi o do deset djece predškolske dobi s teškoćama u razvoju te o 49 mladih i odraslih osoba s invaliditetom unutra Centra OZANA, ustanove koju je Udruga osnovala 2002. godine",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Ulica grada Vukovara 239, 10 000 Zagreb',
        telephone: '01/6152-946',
        email: 'ozana@udruga-ozana.hr',
        iban: 'HR1223600001101403726',
        website: 'https://www.udruga-ozana.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 21,
        name: 'Klub roditelja nedonoščadi Palčići',
        description: "Klub roditelja nedonoščadi „ Palčići“ osnovan je na inicijativu roditelja i zdravstvenih djelatnika s ciljem pomoći, edukacije i razmjene iskustava roditelja prijevremeno rođene djece te dugoročnog unapređenja skrbi za bolesnu i prijevremeno rođenu djecu, kojih se u Hrvatskoj godišnje rodi oko 5 posto.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Ozaljska 45, 10000 Zagreb',
        telephone: '091/271-2744',
        email: 'ozana@udruga-ozana.hr',
        iban: 'HR7024070001100658569',
        website: 'https://palcici.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 22,
        name: 'Katolička udruga "Kap Dobrote"',
        description: "Udruga na različite načine skrbi za oko 160 osoba, većinom na području Grada Zagreba i Zagrebačke županije. Pomaže starije osobe lošeg imovinskog statusa, osamljene, narušenog zdravlja… koje zbog navedenog ne mogu zadovoljavati svoje svakodnevne životne potrebe.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'IV Stara Pešćenica 3, Zagreb',
        telephone: '01/2317-802',
        email: 'kap-dobrote@zg.htnet.hr',
        iban: 'HR0623400091100026681',
        website: 'http://kap-dobrote.hr/',
        swift: 'PBZGHR2X',
        verified: true,
        archived: false
    },
    {
        id: 23,
        name: 'Udruga slijepih Zagreb',
        description: "Misija Udruge je osposobljavanjem za samostalan život slijepih i visoko slabovidnih osoba unaprijediti kvalitetu njihovog života i njihov položaj u društvu, te zastupanjem njihovih interesa u javnosti sprječavati njihovu diskriminaciju i senzibilizirati društvo za njihove probleme.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Draškovićeva 80/III, 10 000 Zagreb',
        telephone: '01/4811-123',
        email: 'udruga.slijepih.zagreb@zg.t-com.hr',
        iban: 'HR9423600001101265674',
        website: 'http://udruga-slijepih-zagreb.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 24,
        name: 'Centar za rehabilitaciju Silver',
        description: "Centar za rehabilitaciju Silver ustanova je socijalne skrbi jedinstvena u ovom dijelu Europe, koja u rehabilitaciju osoba s invaliditetom i djece s teškoćama u razvoju uključuje rad sa psima pomagačima (psi vodiči, rehabilitacijski i terapijski psi). Usluge rehabilitacije koje se osiguravaju temelje se na načelima jednakosti, pravednosti i kvalitete usluga u skladu s individualnim potrebama i mogućnostima korisnika s ciljem kvalitetnijeg uključivanja u lokalnu zajednicu.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Štefanovec 34, 10 000 Zagreb',
        telephone: '01/2394-451',
        email: 'centar.silver@czrs.hr',
        iban: 'HR9824020061100954569',
        website: 'http://czrs.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 25,
        name: 'Dječja Udruga Hrabrost',
        description: "Dječja Udruga Hrabrost - DUH - je neprofitna, nevladina humanitarna organizacija, registrirana u Republici Hrvatskoj 2003. godine.Trudimo se jačati samostalnost i samopouzdanje svojih korisnika, djece s teškoćama u razvoju i mladih s invaliditetom, kroz razne zabavno-edukativne aktivnosti koje organiziramo tijekom godine.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Bukovačka cesta 217, 10000 Zagreb',
        telephone: '',
        email: 'info@duh.hr',
        iban: 'HR4323600001101692325',
        website: 'https://www.duh.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 26,
        name: 'Udruga za autizam – Zagreb',
        description: "Udruga za autizam – Zagreb osnovana je 1997. godine radi okupljanja osoba s poremećajima autističnog spektra, njihovih obitelji, prijatelja i stručnjaka, s ciljem promicanja i ostvarivanja prava i sloboda koje imaju i drugi građani u integriranim uvjetima lokalne sredine.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Ulica Ljudevita Posavskog 37, 10 000 Zagreb',
        telephone: '01/2303-901',
        email: 'uaz.zagreb@gmail.com',
        iban: 'HR8723600001101498697',
        website: 'https://www.autizam-zagreb.com/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 27,
        name: 'Udruga Ljubav na djelu',
        description: "Udruga “LJUBAV NA DJELU” je udruga koja okuplja roditelje djece oboljele od malignih bolesti koja se liječe u sklopu „ Klinike za dječje bolesti Zagreb “. Glavni cilj djelovanja udruge jepomoć i potpora djeci oboljeloj od malignih bolesti kao i njihovim roditeljima. Između ostalog udruga se bavi promicanjem ljudskih vrijednosti, motivacijom i inicijativom za promjene u društvu, pružanje pomoći osobama sa smanjenimmogučnostima, osvješćivanje javnog mišljenja o problemima drugih, kreativnom iglazbenom aktivnošću i humanitarnim radom.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Prilaz Đure Deželića 31, Zagreb',
        telephone: '',
        email: 'info@ljubavnadjelu.hr',
        iban: 'HR1823600001102031208',
        website: 'http://ljubavnadjelu.hr/',
        swift: '',
        verified: true,
        archived: false
    },
    {
        id: 28,
        name: 'Hrvatska udruga leukemija i limfomi',
        description: "Udruga djeluje s ciljem pomaganja bolesnika oboljelih od hematoloških bolesti, razvoja novih istraživačkih programa i metoda liječenja.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Trg hrvatskih velikana 2/II, Zagreb',
        telephone: '01/4873-561',
        email: 'udruga.hull.zagreb@gmail.com',
        iban: 'HR3623400091110047114',
        website: 'http://www.hull.hr/',
        swift: 'PBZGHR2X',
        verified: true,
        archived: false
    },
    {
        id: 29,
        name: 'MijelomCRO - Udruga za podršku oboljelima od multiplog mijeloma (plazmocitoma)',
        description: "MijelomCRO neprofitna je udruga koja pruža podršku oboljelima od multiplog mijeloma (i plazmocitoma), njihovim obiteljima i njegovateljima u Hrvatskoj i regiji; osnovana je 2011. godine. Osnovna svrha djelovanja Udruge je pomoći oboljelima da se lakše nose s bolešću i da poboljšaju kvalitetu svoga života.",
        city_id: (City.find_by_name "Zagreb")&.id,
        address: 'Ulica grada Vukovara 226G, 10 000 Zagreb',
        telephone: '01/5509-805',
        email: 'mijelom@mijelom.hr',
        iban: 'HR9324840081106073185',
        website: 'https://mijelom.hr/',
        swift: 'RZBHHR2X',
        verified: true,
        archived: false
    },
    {
        id: 30,
        name: 'Udruga za zaštitu žena i djece žrtava obiteljskog nasilja „IRIS“',
        description: "Udruga skrbi o zaštiti žena i djece žrtava obiteljskog nasilja pružajući im smještaj i psihosocijalnu pomoć. Udruga je osnovana sa svrhom promicanja i unapređivanja ženskih ljudskih prava na načelima „Opće deklaracije o ljudskim pravima i Konvencije Ujedinjenih naroda za eliminaciju svih oblika diskriminacije (CEDAW) i Konvencije Vijeća Europe o sprečavanju i borbi protiv nasilja nad ženama i nasilja u obitelji.",
        city_id: (City.find_by_name "Bjelovar")&.id,
        address: 'J.J. Strossmayera 2 p.p. 48, 43 000 BJELOVAR',
        telephone: '043/252-114',
        email: 'udruga.iris@gmail.com',
        iban: 'HR9223600001101951791',
        website: 'https://www.iris-sigurnakucabjelovar.hr/',
        swift: '',
        verified: true,
        archived: false
    },
]

organizations.each do |organization|
  Organization
      .find_or_initialize_by(id: organization[:id])
      .update_attributes(person)
end
