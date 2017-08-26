# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


politicans_attributes = [
              { name: 'Angela Merkel', party:"CDU", profession: "Chancellor", picture: "http://www.tagesspiegel.de/images/heprodimagesfotos82320161207merkel_293_1_20161206152458725-jpg/14943176/3-format6001.jpg" },
              { name: 'Martin Schulz', party:"SPD", profession: "Party Chairman SPD", picture: "http://media0.faz.net/ppmedia/aktuell/politik/3569665228/1.4745300/default/mai-2014-martin-schulz-auf-der.jpg" },
              { name: 'Sigmar Gabriel', party:"SPD", profession: "Federal Foreign Minister", picture: "https://image.gala.de/21324888/uncropped-0-0/ec41765926b506afc5df705d41f6c619/KK/sigmar-gabriel.jpg" },
              { name: 'Frank-Walter Steinmeier', party:"SPD", profession: "President", picture: "https://politikindermitte.files.wordpress.com/2012/05/steinmeierdapd_0505_jpg_5155387.jpg" },
              { name: 'Wolfgang Schäuble', party:"CDU", profession:"Federal Minister of Finance", picture: "http://media-cdn.sueddeutsche.de/image/sz.1.1910587/940x528?v=1394632007000"  },
              { name: 'Brigitte Zypries', party:"SPD", profession: "Federal Minister of Economics and Energy", picture: "https://image.stern.de/7579176/16x9-300-169/f07a5c6f302acef16cecfee8d586f02e/Di/brigitte-zypries.jpg" },
              { name: 'Thomas de Maizière', party:"CDU", profession: "Federal Minister of the Interior", picture: "https://image.stern.de/7435482/uncropped-0-0/1aecdf5d66216f7fd3643d157f3acf11/aJ/thomas-de-maiziere-leitkultur-pressestimmen.jpg" },
              { name: 'Heiko Maas', party:"SPD", profession:"Federal Minister of Justice and Consumer Protection", picture: "https://www.welt.de/img/politik/deutschland/mobile157946066/8312502207-ci102l-w1024/Heiko-Maas.jpg" },
              { name: 'Andrea Nahles', party:"SPD", profession:"Federal Minister for Labor and Social Affairs", picture: "http://www.bmas.de/SharedDocs/Bilder/EN/persons-of-ministry/pressefoto-andrea-nahles-download.jpg?__blob=wide&v=2" },
              { name: 'Christian Schmidt', party:"CSU", profession:"Federal Minister for Food and Agriculture", picture: "http://www.taz.de/picture/61697/948/ChristianSchmidt_dpa2.jpg" },
              { name: 'Ursula von der Leyen', party:"CDU", profession:"Federal Minister of Defense", picture: "http://img.zeit.de/politik/deutschland/2014-06/leyen/wide__820x461__desktop" },
              { name: 'Katarina Barley', party:"SPD", profession:"Federal Minister for Family, Senior Citizens, Women and Youth", picture: "https://www.spd.de/fileadmin/Bilder/Personen/Pressefoto_Katarina_Barley_neu_2016_72_Knoll_dpi.jpg" },
              { name: 'Hermann Gröhe', party:"CDU", profession:"Federal Minister of Health", picture: "https://www.bundestag.de/image/240996/3x4/284/379/93109a705877101937cbe6fbd407ed4e/tI/groehe_hermann_gross.jpg" },
              { name: 'Alexander Dobrindt', party:"CSU", profession:"Federal Minister for Transport and Digital Infrastructure", picture: "http://media-cdn.sueddeutsche.de/image/sz.1.1807101/940x528?v=1383129704000" },
              { name: 'Barbara Hendricks', party:"SPD", profession:"Federal Minister for the Environment, Nature Conservation, Construction and Nuclear Safety", picture: "http://img.zeit.de/wirtschaft/2016-02/barbara-hendricks-wohnungsbau-2/wide__1300x731" },
              { name: 'Johanna Wanka', party:"CDU", profession:"Federal Minister for Education and Research", picture: "http://www.spektrum.de/fm/912/thumbnails/JohannaWanka_34408050_DPA.jpg.1265305.jpg" },
              { name: 'Gerd Müller', party:"CSU", profession:"Federal Minister for Economic Cooperation and Development", picture: "https://www.welt.de/img/politik/deutschland/mobile134424194/7422508627-ci102l-w1024/Bundesentwicklungsminister-Gerd-Mueller.jpg" },
              { name: 'Peter Altmaier', party:"CDU", profession:"Chancellery minister", picture: "https://upload.wikimedia.org/wikipedia/commons/7/7a/Peter_Altmaier_CDU_Parteitag_2014_by_Olaf_Kosinsky-2.jpg" },
              { name: 'Cem Özdemir', party:"Bündnis 90/Die Grünen", profession:"Party Chairman Bündnis 90/Die Grünen", picture: "http://i.huffpost.com/gen/2706608/images/o-ZDEMIR-facebook.jpg" },
              { name: 'Simone Peter', party:"Bündnis 90/Die Grünen", profession:"Party Chairman Bündnis 90/Die Grünen", picture: "http://www.br.de/radio/bayern2/politik/radiowelt/simone-peter-gruene-114~_v-img__16__9__xl_-d31c35f8186ebeb80b0cd843a7c267a0e0c81647.jpg?version=a969a" },
              { name: 'Winfried Kretschmann', party:"Bündnis 90/Die Grünen", profession:"Prime Minister of Baden Württemberg", picture: "https://www.gruene-bw.de/wp-content/uploads/2015/10/Kretschmann-auf-Stuhl-2015-Kreis-400x400.jpg" },
              { name: 'Sahra Wagenknecht ', party:"Die Linken", profession:"Politician Die Linken", picture: "https://bilder.t-online.de/b/65/88/66/84/id_65886684/610/tid_da/sahra-wagenknecht-die-linke-.jpg" },
              { name: 'Bernd Riexinger', party:"Die Linken", profession:"Party Chairman Die Linken", picture: "http://cdn1.spiegel.de/images/image-364394-860_panofree-bkla-364394.jpg" },
              { name: 'Gregor Gysi', party:"Die Linken", profession:"Politician Die Linken", picture: "http://bilder.t-online.de/b/78/99/89/40/id_78998940/610/tid_da/gregor-gysi-will-2017-als-direktkandidat-im-bezirk-treptow-koepenick-antreten-.jpg" },
              { name: 'Olaf Scholz', party:"SPD", profession:"Prime Minister Hamburg", picture: "http://img.zeit.de/hamburg/politik-wirtschaft/2016-01/olaf-scholz/wide__820x461__desktop" },
              { name: 'Frauke Petry', party:"AfD", profession:"Party Chairman AfD", picture: "https://www.welt.de/img/fernsehen/mobile165963081/4552505357-ci102l-w1024/Frauke-Petry-Sven-Petry.jpg" },
              { name: 'Alexander Gauland', party:"AfD", profession:"Politician AfD", picture: "http://media0.faz.net/ppmedia/aktuell/politik/3222923067/1.3442540/default/alexander-gauland-sein-vater.jpg" },
              { name: 'Beatrix von Storch', party:"AfD", profession:"Member of EU parliament AfD", picture: "http://www.goettinger-tageblatt.de/var/storage/images/gt-et/region/northeim/afd-politikerin-spricht-am-freitag-im-buergerhaus-northeim-gegendemo-angekuendigt/450833333-1-ger-DE/Von-Storch-in-Northeim_ArtikelQuer.jpg" },
              { name: 'Christian Lindner', party:"FDP", profession:"Party Chairman FDP", picture: "http://www.junge-politiker.de/wp-content/uploads/2015/01/NEU_Lindner-Christian_Druckversion.jpg" },
              { name: 'Norbert Lammert', party:"CDU", profession:"President of the Bundestag", picture: "http://cdn3.spiegel.de/images/image-1067866-galleryV9-zwsh-1067866.jpg" },

              ]

politicans_attributes.each do |p|
  Politician.create!(p)
end

# one = Question.create!(text: "Who called Hillary Clinton a nasty woman?")

# one.answers = [Answer.new(text: "Donald Trump", correct: true), Answer.new(text: "Ted Cruz"), Answer.new(text: "Bill Clinton"), Answer.new(text: "George Bush")]
# one.save!

# two = Question.create!(text: "Who called Hillary Clinton a nasty woman?")

# two.answers = [Answer.new(text: "Donald Trump", correct: true), Answer.new(text: "Ted Cruz"), Answer.new(text: "Bill Clinton"), Answer.new(text: "George Bush")]
# two.save!





one = Question.create(text: "Die Leute finden ihn als Fußballspieler gut. Aber sie wollen einen Boateng nicht als Nachbarn haben.
")
one.answers = [Answer.new(text: "Alexander Gauland, AFD", correct: true), Answer.new(text: "Horst Seehofer, CSU"), Answer.new(text: "Frank Walter Steinmeier, SPD"), Answer.new(text: "Cem Özdemir, Die Grünen")]
one.save!

two = Question.create(text: "Wir haben im Moment keinen Zustand von Recht und Ordnung. Es ist eine Herrschaft des Unrechts.
")
two.answers = [Answer.new(text: "Horst Seehofer, CSU", correct: true), Answer.new(text: "Frank Walter Steinmeier, SPD"), Answer.new(text: "Frauke Petry, AFD"), Answer.new(text: "Andrea Nahles, SPD")]
two.save!

three = Question.create(text: "Wir Deutschen, also unser Volk, sind das einzige Volk der Welt, das sich ein Denkmal der Schande in das Herz seiner Hauptstadt gepflanzt hat.
")
three.answers = [Answer.new(text: "Björn Höcke, AFD", correct: true), Answer.new(text: "Sahra Wagenknecht, Die Linke"), Answer.new(text: "Horst Seehofer, CSU"), Answer.new(text: "Frank Walter Steinmeier, SPD")]
three.save!

four = Question.create(text: "Das Internet ist für uns alle Neuland.")
four.answers = [Answer.new(text: "Angela Merkel, CDU", correct: true), Answer.new(text: "Andrea Nahles, SPD"), Answer.new(text: "Christian Meyer, Die Grünen"), Answer.new(text: "Alexander Gauland, AFD")]
four.save!

five = Question.create(text: "Ein ganzes Krisengebräu kocht da gegenwärtig hoch in Europa.(...)Wir müssen um Europa kämpfen.")
five.answers = [Answer.new(text: "Frank Walter Steinmeier, SPD", correct: true), Answer.new(text: "Sahra Wagenknecht, Die Linke"), Answer.new(text: "Cem Özdemir, Die Grünen"), Answer.new(text: "Peter Tauber, CDU")]
five.save!

six = Question.create(text: "Eines ist klar, wir müssen die Zahl der Flüchtlinge spürbar reduzieren. Daran arbeiten wir mit Nachdruck.")
six.answers = [Answer.new(text: "Angela Merkel, CDU", correct: true), Answer.new(text: "Heiko Maas, SPD"), Answer.new(text: "Horst Seehofer, CSU"), Answer.new(text: "Björn Höcke, AFD")]
six.save!

seven = Question.create(text: "Ich will das auch nicht. Aber zur Ultima Ratio gehört der Einsatz von Waffengewalt.")
seven.answers = [Answer.new(text: "Frauke Petry, AFD", correct: true), Answer.new(text: "Christian Meyer, Die Grünen"), Answer.new(text: "Frank Walter Steinmeier, SPD"), Answer.new(text: "Horst Seehofer, CSU")]
seven.save!

eight = Question.create(text: "Eine gerechte Gesellschaft heißt auch: Jeder darf mal ins Sterne-Restaurant, wenn er Lust dazu hat.")
eight.answers = [Answer.new(text: "Sahra Wagenknecht, Die Linke", correct: true), Answer.new(text: "Andrea Nahles, SPD"), Answer.new(text: "Cem Özdemir, Die Grünen"), Answer.new(text: "Björn Höcke, AFD")]
eight.save!

nine = Question.create(text: "Es kann nicht sein, dass in bestimmten Stadtteilen und bestimmte Familien Arbeit nicht zum festen Tagesablauf gehört.")
nine.answers = [Answer.new(text: "Andrea Nahles, SPD", correct: true), Answer.new(text: "Peter Tauber, CDU"), Answer.new(text: "Frauke Petry, AFD"), Answer.new(text: "Horst Seehofer, CSU")]
nine.save!

ten = Question.create(text: "Die Grünen würden ja selbst meckern, wenn wir eine Zwille exportieren würden.")
ten.answers = [Answer.new(text: "Peter Tauber, CDU", correct: true), Answer.new(text: "Siegmar Gabriel, SPD"), Answer.new(text: "Horst Seehofer, CSU"), Answer.new(text: "Alexander Gauland, AFD")]
ten.save!

eleven = Question.create(text: "Wer die Todesstrafe einführen will, kann sich Nordkorea anschließen, oder wem auch immer. Aber sicherlich nicht der Europäischen Union.")
eleven.answers = [Answer.new(text: "Cem Özdemir, Die Grünen", correct: true), Answer.new(text: "Angela Merkel, CDU"), Answer.new(text: "Frank Walter Steinmeier, SPD"), Answer.new(text: "Sahra Wagenknecht, Die Linke")]
eleven.save!

twelve = Question.create(text: "Milchkühe sind systemrelevant, und deshalb sollten wir sie genau so wie Banken jetzt auch retten.")
twelve.answers = [Answer.new(text: "Christian Meyer, Die Grünen", correct: true), Answer.new(text: "Horst Seehofer, CSU"), Answer.new(text: "Andrea Nahles, SPD"), Answer.new(text: "Sahra Wagenknecht, Die Linke")]
twelve.save!

thirteen = Question.create(text: "Wir werden uns gegen Zuwanderung in deutsche Sozialsysteme wehren - bis zur letzten Patrone.
")
thirteen.answers = [Answer.new(text: "Horst Seehofer, CSU", correct: true), Answer.new(text: "Björn Höcke, AFD"), Answer.new(text: "Peter Tauber, CDU"), Answer.new(text: "Heiko Maas, SPD")]
thirteen.save!

fourteen = Question.create(text: "Alles Gute für Meck-Pomm. Und macht keinen Scheiß, ich will hier nächstes Jahr wieder Urlaub machen.")
fourteen.answers = [Answer.new(text: "Siegmar Gabriel, SPD", correct: true), Answer.new(text: "Christian Meyer, Die Grünen"), Answer.new(text: "Alexander Gauland, AFD"), Answer.new(text: "Sahra Wagenknecht, Die Linke")]
fourteen.save!

fifteen = Question.create(text: "Für sexuelle Übergriffe auf Frauen gibt es keine Rechtfertigung und auch keine Entschuldigung, und auch ein möglicher kultureller Hintergrund entschuldigt nichts (...) im Gegenteil: Er ist noch nicht einmal als Erklärung akzeptabel")
fifteen.answers = [Answer.new(text: "Heiko Maas, SPD", correct: true), Answer.new(text: "Peter Tauber, CDU"), Answer.new(text: "Frauke Petry, AFD"), Answer.new(text: "Christian Meyer, Die Grünen")]
fifteen.save!
