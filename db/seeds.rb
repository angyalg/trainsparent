# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


politicans_attributes = [
              { name: 'Angela Merkel', party:"CDU" },
              { name: 'Martin Schulz', party:"SPD" },
              { name: 'Sigmar Gabriel', party:"SPD" },
              { name: 'Frank-Walter Steinmeier', party:"SPD" },
              { name: 'Wolfgang Schäuble', party:"CDU" },
              { name: 'Helmut Kohl', party:"CDU" },
              { name: 'Willy Brandt', party:"SPD" },
              { name: 'Horst Seehofer', party:"CSU" },
              ]

politicans_attributes.each do |p|
  Politician.create!(p)
end

one = Question.create!(text: "Who called Hillary Clinton a nasty woman?")
one.answers = [Answer.new(text: "Donald Trump", correct: true), Answer.new(text: "Ted Cruz"), Answer.new(text: "Bill Clinton"), Answer.new(text: "George Bush")]
one.save!

two = Question.create!(text: "Who called Hillary Clinton a nasty woman?")
two.answers = [Answer.new(text: "Donald Trump", correct: true), Answer.new(text: "Ted Cruz"), Answer.new(text: "Bill Clinton"), Answer.new(text: "George Bush")]
two.save!

one = Question.create(text: "Die Leute finden ihn als Fußballspieler gut. Aber sie wollen einen Boateng nicht als Nachbarn haben.
")
one.answers = [Answer.create(text: "Alexander Gauland, AFD", correct: true), Answer.new(text: "Horst Seehofer, CSU"), Answer.new(text: "Frank Walter Steinmeier, SPD"), Answer.new(text: "Cem Özdemir, Die Grünen")]
one.save!

two = Question.create(text: "Wir haben im Moment keinen Zustand von Recht und Ordnung. Es ist eine Herrschaft des Unrechts.
")
two.answers = [Answer.create(text: "Horst Seehofer, CSU", correct: true), (text: "Frank Walter Steinmeier, SPD"}, {text: "Frauke Petry, AFD"}, {text: "Andrea Nahles, SPD"}])
two.save!

three = Question.create(text: "Wir Deutschen, also unser Volk, sind das einzige Volk der Welt, das sich ein Denkmal der Schande in das Herz seiner Hauptstadt gepflanzt hat.
")
three.answers = Answer.create([{text: "Björn Höcke, AFD", correct: true}, {text: "Sahra Wagenknecht, Die Linke"}, {text: "Horst Seehofer, CSU"}, {text: "Frank Walter Steinmeier, SPD"}])
four = Question.create(text: "Das Internet ist für uns alle Neuland.")
four.answers = Answer.create([{text: "Angela Merkel, CDU", correct: true}, {text: "Andrea Nahles, SPD"}, {text: "Christian Meyer, Die Grünen"}, {text: "Alexander Gauland, AFD"}])
five = Question.create(text: "Ein ganzes Krisengebräu kocht da gegenwärtig hoch in Europa.(...)Wir müssen um Europa kämpfen.")
five.answers = Answer.create([{text: "Frank Walter Steinmeier, SPD", correct: true}, {text: "Sahra Wagenknecht, Die Linke"}, {text: "Cem Özdemir, Die Grünen"}, {text: "Peter Tauber, CDU"}])
six = Question.create(text: "Eines ist klar, wir müssen die Zahl der Flüchtlinge spürbar reduzieren. Daran arbeiten wir mit Nachdruck.")
six.answers = Answer.create([{text: "Angela Merkel, CDU", correct: true}, {text: "Heiko Maas, SPD"}, {text: "Horst Seehofer, CSU"}, {text: "Björn Höcke, AFD"}])
seven = Question.create(text: "Ich will das auch nicht. Aber zur Ultima Ratio gehört der Einsatz von Waffengewalt.")
seven.answers = Answer.create([{text: "Frauke Petry, AFD", correct: true}, {text: "Christian Meyer, Die Grünen"}, {text: "Frank Walter Steinmeier, SPD"}, {text: "Horst Seehofer, CSU"}])
eight = Question.create(text: "Eine gerechte Gesellschaft heißt auch: Jeder darf mal ins Sterne-Restaurant, wenn er Lust dazu hat.")
eight.answers = Answer.create([{text: "Sahra Wagenknecht, Die Linke", correct: true}, {text: "Andrea Nahles, SPD"}, {text: "Cem Özdemir, Die Grünen"}, {text: "Björn Höcke, AFD"}])
nine = Question.create(text: "Es kann nicht sein, dass in bestimmten Stadtteilen und bestimmte Familien Arbeit nicht zum festen Tagesablauf gehört.")
nine.answers = Answer.create([{text: "Andrea Nahles, SPD", correct: true}, {text: "Peter Tauber, CDU"}, {text: "Frauke Petry, AFD"}, {text: "Horst Seehofer, CSU"}])
ten = Question.create(text: "Die Grünen würden ja selbst meckern, wenn wir eine Zwille exportieren würden.")
ten.answers = Answer.create([{text: "Peter Tauber, CDU", correct: true}, {text: "Siegmar Gabriel, SPD"}, {text: "Horst Seehofer, CSU"}, {text: "Alexander Gauland, AFD"}])
eleven = Question.create(text: "Wer die Todesstrafe einführen will, kann sich Nordkorea anschließen, oder wem auch immer. Aber sicherlich nicht der Europäischen Union.")
eleven.answers = Answer.create([{text: "Cem Özdemir, Die Grünen", correct: true}, {text: "Angela Merkel, CDU"}, {text: "Frank Walter Steinmeier, SPD"}, {text: "Sahra Wagenknecht, Die Linke"}])
twelve = Question.create(text: "Milchkühe sind systemrelevant, und deshalb sollten wir sie genau so wie Banken jetzt auch retten.")
twelve.answers = Answer.create([{text: "Christian Meyer, Die Grünen", correct: true}, {text: "Horst Seehofer, CSU"}, {text: "Andrea Nahles, SPD"}, {text: "Sahra Wagenknecht, Die Linke"}])
thirteen = Question.create(text: "Wir werden uns gegen Zuwanderung in deutsche Sozialsysteme wehren - bis zur letzten Patrone.
")
thirteen.answers = Answer.create([{text: "Horst Seehofer, CSU", correct: true}, {text: "Björn Höcke, AFD"}, {text: "Peter Tauber, CDU"}, {text: "Heiko Maas, SPD"}])
fourteen = Question.create(text: "Alles Gute für Meck-Pomm. Und macht keinen Scheiß, ich will hier nächstes Jahr wieder Urlaub machen.")
fourteen.answers = Answer.create([{text: "Siegmar Gabriel, SPD", correct: true}, {text: "Christian Meyer, Die Grünen"}, {text: "Alexander Gauland, AFD"}, {text: "Sahra Wagenknecht, Die Linke"}])
fifteen = Question.create(text: "Für sexuelle Übergriffe auf Frauen gibt es keine Rechtfertigung und auch keine Entschuldigung, und auch ein möglicher kultureller Hintergrund entschuldigt nichts (...) im Gegenteil: Er ist noch nicht einmal als Erklärung akzeptabel")
fifteen.answers = Answer.create([{text: "Heiko Maas, SPD", correct: true}, {text: "Peter Tauber, CDU"}, {text: "Frauke Petry, AFD"}, {text: "Christian Meyer, Die Grünen"}])
