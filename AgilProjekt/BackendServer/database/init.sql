CREATE TABLE mathematics (
    mathId INTEGER PRIMARY KEY,
    mathQuestion TEXT,
    mathOption1 TEXT,
    mathOption2 TEXT,
    mathOption3 TEXT,
    mathOption4 TEXT,
    mathAnswer TEXT,
    mathHints TEXT
);

CREATE TABLE science (
    scienceId INTEGER PRIMARY KEY,
    scienceQuestion TEXT,
    scienceOption1 TEXT,
    scienceOption2 TEXT,
    scienceOption3 TEXT,
    scienceOption4 TEXT,
    scienceAnswer TEXT,
    scienceHints TEXT
);

CREATE TABLE history (
    historyId INTEGER PRIMARY KEY,
    historyQuestion TEXT,
    historyOption1 TEXT,
    historyOption2 TEXT,
    historyOption3 TEXT,
    historyOption4 TEXT,
    historyAnswer TEXT,
    historyHints TEXT
);

CREATE TABLE geography (
    geographyId INTEGER PRIMARY KEY,
    geographyQuestion TEXT,
    geographyOption1 TEXT,
    geographyOption2 TEXT,
    geographyOption3 TEXT,
    geographyOption4 TEXT,
    geographyAnswer TEXT,
    geographyHints TEXT
);

CREATE TABLE language (
    languageId INTEGER PRIMARY KEY,
    languageQuestion TEXT,
    languageOption1 TEXT,
    languageOption2 TEXT,
    languageOption3 TEXT,
    languageOption4 TEXT,
    languageAnswer TEXT,
    languageHints TEXT
);

CREATE TABLE sweden (
    swedenId INTEGER PRIMARY KEY,
    swedenQuestion TEXT,
    swedenOption1 TEXT,
    swedenOption2 TEXT,
    swedenOption3 TEXT,
    swedenOption4 TEXT,
    swedenAnswer TEXT,
    swedenHints TEXT
);

INSERT INTO mathematics (mathId, mathQuestion, mathOption1, mathOption2, mathOption3, mathOption4, mathAnswer, mathHints) VALUES
(1, 'What is the value of π (pi) to two decimal places?', '3.14', '3.16', '3.18', '3.20', '3.14', 'The value of pi to four decimal places is 3.1415'),
(2, 'What is the highest common factor of the numbers 30 and 132?', '2', '12', '6', '3', '6', 'It is not 12'),
(3, 'If 1=3, 2=3, 3=5, 4=4, and 5=4, what is 6=?', '6', '5', '4', '3', '3', 'Spelling out the numbers might help'),
(4, 'Using only the process of addition, how to add eight 8s to get the final number of 1000?', '888 + 88 + 8 + 8 + 8', '888 + 88 + 88 + 8 + 8', '888 + 88 + 8 + 8 + 8 + 8', '888 + 8 + 8 + 88 + 8 + 8', '888+88+8+8+8', 'Count. Basic arithmetic addition'),
(5, 'At a Christmas party, everyone shook hands with everyone else. There were a total of 66 handshakes that happened during the party. How many people were present?','6', '11', '12', '10', '12', 'It is a lot of people'),
(6, 'In a right triangle, which side is opposite the right angle?', 'Hypotenuse', 'Adjacent', 'Base', 'Perpendicular', 'Hypotenuse', 'The other side when on pressure can make you hyper.'),
(7, 'What is the result of 5² - 3²?', '22', '16', '8', '4' ,'16', '5(5)-3(3)'),
(8, 'If 3x - 7 = 17, what is the value of x?','22', '16', '8', '4', '8', '(17+7)/3'),
(9, 'If a triangle has angles measuring 30 degrees, 60 degrees, and 90 degrees, what type of triangle is it?', 'Equilateral', 'Isosceles', 'Scalene', 'Right-angled', 'Right-angled', 'It was never left.'),
(10, 'What is the area of a rectangle with length 8 units and width 5 units?', '10 square units', '13 square units', '40 square units', '48 square units', '40 square units', '8x5'),
(11, 'If you subtract 3 from a number and then multiply the result by 5, what expression represents this operation?', '5x - 3', '5(x - 3)', '3 - 5x', '5x + 3', '5(x - 3)', 'Start with a symbol, a variables grace, Subtract 3, and keep up the pace. To make it five times, in this case, Multiply by 5, it is the right embrace.'),
(12, 'If a car travels at a constant speed of 60 miles per hour, how far will it travel in 2.5 hours?', '120 miles', '150 miles', '180 miles', '200 miles', '150 miles', '60x2.5'),
(13, 'What is the result of 3 squared (3^2)?', '3', '6', '9', '12', '9', 'What does the multiplication table of 3 say?'),
(14, 'What is the next number in the Fibonacci sequence after 0, 1, 1, 2, 3, 5, 8, ...?', '10', '11', '13', '16', '13', '0+1 =1, 1+1 =2'),
(15, 'What is the sum of the interior angles of a triangle?', '90 degrees', '120 degrees', '180 degrees', '360 degrees', '180 degrees', 'It is 356* Farenhiet');

INSERT INTO science (scienceId, scienceQuestion, scienceOption1, scienceOption2, scienceOption3, scienceOption4, scienceAnswer, scienceHints) VALUES
(1, 'What is the name of the tallest grass on earth?', 'Sugarcane', 'Bamboo', 'Wheatgrass', 'Pampas Grass', 'Bamboo', 'It is pandas favorite'),
(2, 'What does DNA stand for?', 'Deoxyribonucleic Acid', 'Digital Nucleotide Assembly', 'Double-Stranded Nucleotide', 'Diethylaminoethyl Nucleotide','Deoxyribonucleic acid','It is an acid'),
(3, 'Which oath of ethics taken by doctors is named after an Ancient Greek physician?','Socratic Oath', 'Pythagorean Oath','Hippocratic Oath', 'Galenic Oath','Hippocratic Oath','It sounds counter intuitive'),
(4, 'Humans and chimpanzees share roughly how much DNA?','89%', '98%','76%','52%','98%', 'We are basically chimpanzees'),
(5, 'At what temperature are Celsius and Fahrenheit equal?','-40', '0', '100', '212','-40','So cold!'),
(6, 'Which gas makes up the majority of Earths atmosphere?','Oxygen', 'Carbon dioxide', 'Nitrogen', 'Hydrogen','Nitrogen','In laboratories, a treat quite neat, With a chill so cold, it is quite elite.Not water, but anothers feat, What is this ice that is a scientific greet? In a lab, it is a unique sweet.'),
(7, 'What is the smallest unit of life?','Cell',' Atom', 'Molecule', 'Proton','Cell','Within the world of living, small yet strong, The essence of life where we all belong. A building block, where the dance of cells throng, What is this tiny unit? Do not get it wrong. In biology, it will not take long.'),
(8, 'What is the process by which plants make their own food using sunlight?','Respiration', 'Photosynthesis', 'Fermentation', 'Combustion','Photosynthesis','In the realm of green, a magic act so bright, Plants perform it daily, from morning to night. They harness the suns rays, with all their might, What is this process of life, in plain sight? In gardens, it is a source of delight.'),
(9, 'Which gas do plants absorb from the atmosphere during photosynthesis?','Oxygen', 'Carbon dioxide', 'Nitrogen','Hydrogen','Carbon dioxide','From the air, plants take a breath so sweet, A gas in the atmosphere, it is quite a treat.In the dance of leaves, where they and sunlight meet, Which gas do theyabsorb in their green retreat?'),
(10, 'What is the largest organ in the human body?','Liver',' Brain', 'Skin', 'Heart','Skin','In your skin, its secrets unfold, the bodys largest, a truth untold.'),
(11, 'Which force is responsible for keeping objects in orbit around the Earth?','Friction', 'Magnetism', 'Gravitation', 'Tension','Gravitation','Celestial bodies, they dance and swoon, it is Newtons law that controls the tune.'),
(12, 'What is the chemical formula for table salt?','NaCl',' H2O', 'CO2', 'O2','NaCl', 'Take "no" and add "something", it is a gas we find, in a greenish-yellow hue, it is chlorine, defined.'),
(13, 'Which gas is responsible for the Earths ozone layer?','Oxygen', 'Nitrogen', 'Hydrogen', 'Ozone','Ozone', 'Cloaked in the sky, where UV rays get a scare, this gas shields the Earth.'),
(14, 'What is the process by which plants lose water vapor to the atmosphere through small openings in their leaves?','Transpiration', 'Percipation', 'Infiltration', 'Respiration','Transpiration', 'In the leafy crowd, a breath they release, through tiny gaps, it is a process of peace.'),
(15, 'What is the process by which rocks are broken down into smaller pieces due to weathering and erosion?','Subduction', 'Deposition', 'Sedimentation', 'Weathering','Weathering', 'In natures workshop, rocks undergo strife, they break and crumble, the sculptor is life.');

INSERT INTO history (historyId, historyQuestion, historyOption1, historyOption2, historyOption3, historyOption4, historyAnswer, historyHints) VALUES
(1, 'Who is credited with inventing the telephone?','Thomas Edison', 'Nikola Tesla', 'Alexander Graham Bell', 'Samuel Morse','Alexander Graham Bell','That does ring a bell'),
(2, 'In what year did the Berlin Wall fall?','1979', '1988', '1899', '1989','1989','The same decade as when Lady Diana and Prince Charles got married'),
(3, 'Who is said to be so beautiful that her face launched a thousand ships?','Helen of Troy', 'Cleopatra', 'Joan of Arc', 'Queen Nefertiti','Helen of Troy','A thousand ships, and indirectly a the wooden horse as well'),
(4, 'Which 3 countries made up the Triple Entente in World War I?','France / Germany / Russia', 'France / UK / Russia', 'UK / Italy / US', 'Germany / Austria-Hungary / Ottoman Empire','France / UK / Russia','FUR'),
(5, 'Which President of the United States abolished slavery?','Thomas Jefferson', 'George Washington', 'Franklin D. Roosevelt', 'Abraham Lincoln','Abraham Lincoln','He wore a large hat, but there was no third eye underneath it'),
(6, 'The United States bought Alaska from which country?', 'Russia', 'Canada', 'United Kingdom', 'France', 'Russia', 'Cold lands and riches, a transaction so grand, from Russias hand, it joined the American land.'),
(7, 'What ancient wonder of the world was located in the city of Babylon and known for its hanging gardens?', 'Great Pyramid of Giza', 'Colossus of Rhodes', 'Hanging Gardens of Babylon', 'Statue of Zeus at Olympia', 'Hanging Gardens of Babylon', 'In Babylons heart, where greenery soared high, this wonders name reached the sky.'),
(8, 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Michelangelo', 'Leonardo da Vinci', 'A master of art, with a mystic smile so divine, this painters work in Louvres hall does shine'),
(9, 'In what year did Christopher Columbus first reach the Americas?', '1492', '1620', '1776', '1519', '1492', 'In fourteen hundred and ninety-two, a voyage was begun, a historic moment under the sun.'),
(10, 'What event started World War One?', 'Assassination of Archduke Franz Ferdinand', 'Bombing of Pearl Harbor', 'Signing of the Treaty of Versailles', 'Invasion of Poland', 'Assassination of Archduke Franz Ferdinand', 'An archdukes fate, in Sarajevos street, this act of violence set the worlds heartbeat.'),
(11, 'Who was the queen of ancient Egypt known for her relationships with Julius Caesar and Mark Antony?', 'Nefertiti', 'Hatshepsut', 'Cleopatra', 'Queen Tiye', 'Cleopatra', 'In historys pages, a queen did rise, entwined with Caesar and Antonys ties.'),
(12, 'In what year did the United States declare its independence from Great Britain?', '1787', '1776', '1800', '1812', '1776', 'When seventeen hundred and seventy-six arrived with pride, the United States independence was officially applied.'),
(13, 'What event marked the beginning of World War II in Europe?', 'Bombing of Hiroshima and Nagasaki', 'Signing of the Treaty of Versailles', 'Attack on Pearl Harbor', 'Invasion of Poland', 'Invasion of Poland', 'From east to west, the conflict unfurled, a citys fall, it changed the world.'),
(14, 'Which ancient Greek philosopher is considered the teacher of Alexander the Great?', 'Socrates', 'Plato', 'Aristotle', 'Pythagoras', 'Aristotle', 'In Aristotles wisdom, a great mind did soar, mentor to a conqueror, history they both bore.'),
(15, 'Which famous scientist developed the theory of general relativity?', 'Isaac Newton', 'Albert Einstein', 'Stephen Hawking', 'Galileo Galilei', 'Albert Einstein', 'His theory unveiled a cosmic embrace, a scientist whose name still holds a space.');

INSERT INTO geography (geographyId, geographyQuestion, geographyOption1, geographyOption2, geographyOption3, geographyOption4, geographyAnswer, geographyHints) VALUES
(1, 'What present-day Italian city does Mt. Vesuvius overlook?','Rome', 'Naples', 'Florence', 'Milan','Naples','It means new city'),
(2, 'Which country is the newest in the world to be recognised by the UN?','South Sudan', 'East Timor (Timor-Leste)', 'Kosovo', 'Montenegro','South Sudan','It is neither the East, the West, nor the North'),
(3, 'How many states are there in Australia?','5', '9', '12', '6', '6','It is a perfect number'),
(4, 'What is the highest peak in Africa?', 'Mount Kilimanjaro', 'Mount Kenya', 'Table Mountain', 'Mount Elgon', 'Mount Kilimanjaro', 'Despite the name, it most probably will not kill you'),
(5, 'How many large islands make up Hawaii?', '9', '15', '4', '8', '8', 'The number of legs on a spider'),
(6, 'What is the capital of France?', 'Berlin', 'Paris', 'Rome', 'Madrid','Paris', 'Where the Seine river bends with grace, this citys charm you will embrace.'),
(7, 'Which continent is known as the ""Land Down Under""?', 'South America', 'Europe', 'Africa', 'Australia','Australia', 'Where kangaroos hop and the skies are wide, this southern land is a unique pride.'),
(8, 'What is the capital of Canada?','Ottawa', 'Toronto', 'Vancouver', 'Montreal','Ottawa', 'In the second month, on the eighth day, the capitals Winterlude starts with a playful display.'),
(9, 'What is the longest river in the world?','Nile', 'Amazon', 'Mississippi', 'Yangtze', 'Amazon', 'Where clicks and carts together thrive, a virtual marketplace, where deals arrive.'),
(10, 'In which country would you find the pyramids of Giza?', 'Egypt', 'Mexico', 'India', 'Greece', 'Egypt','Where pharaohs ruled and sands stretch wide.'),
(11, 'What is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Southern Ocean', 'Pacific Ocean', 'Pacific Ocean', 'Surrounded by lands both near and far, countries like Russia and Canada are part of the picture in this large expanse.'),
(12, 'Which mountain range is the longest in the world?','Himalayas', 'Rocky Mountains', 'Andes', 'Alps', 'Andes', 'I am a popular name for males, and also a piece in chess with different moves, what name am I?'),
(13, 'What is the capital of Japan?', 'Beijing', 'Tokyo', 'Seoul', 'Bangkok', 'Tokyo', 'Where cherry blossoms bloom with grace, the capital city is a vibrant place.'),
(14, 'Which desert is the largest hot desert in the world?', 'Sahara Desert', 'Gobi Desert', 'Kalahari Desert', 'Arabian Desert', 'Sahara Desert', 'Where sands stretch wide and temperatures soar, this deserts title, you can not ignore.'),
(15, 'Which country is known as the "Land of the Rising Sun"?', 'China', 'Japan', 'South Korea', 'Vietnam','Japan', 'Where sushi and samurai are traditions so bright, a nation with Mount Fujis majestic height.');

INSERT INTO language (languageId, languageQuestion, languageOption1, languageOption2, languageOption3, languageOption4, languageAnswer, languageHints) VALUES
(1, 'According to dictionary entries, which language has the largest number of words (more than 200,000 words)', 'Chinese', 'English', 'Spanish', 'German', 'English', 'The language of the prestigious, honourable, Kanye West'),
(2, 'Which of the following languages has no alphabet?', 'Korean', 'Japanese', 'Chinese', 'Arabic', 'Chinese', 'It has built great walls'),
(3, 'Approximately how many languages are currently spoken in the world today?', 'Around 1,000', 'Around 7,000', 'Around 30,000', 'Around 5,000', 'Around 7,000','It is a lot, but not the most'),
(4, 'What does the word “polyglot” mean?', 'A language with more than 1 billion speakers', 'A country with more than three official languages', 'A person who can speak multiple languages', 'A person who can speak 3 languages', 'A person who can speak multiple languages', 'Poly- means many'),
(5, 'Which alphabetic system of phonetic notation is widely used around the world as a standardised representation of speech sounds in written form?', 'NBA', 'IPA', 'NSA', 'ASCII', 'IPA', 'It also stands for Indian Pale Ale'),
(6, 'What is the official language of Brazil?', 'Spanish', 'Portuguese', 'French', 'Italian', 'Portuguese', 'Where Amazon rainforests have stories to tell, Portuguese, they speak it so well.'),
(7, 'In which country is Urdu an official language?', 'India', 'Pakistan', 'Bangladesh', 'Iran', 'Pakistan', 'Where the Indus Rivers waters flow, and historys tale has much to show.'),
(8, 'Which alphabet is used in the Russian language?', 'Latin', 'Cyrillic', 'Greek', 'Armenian', 'Cyrillic', 'In the land of Cyrillic script, this languages alphabet you will not want to skip.'),
(9, 'What is the most widely spoken language in the world by the number of native speakers?', 'Spanish', 'English', 'Hindi', 'Mandarin Chinese', ' Mandarin Chinese', 'From the heart of the dragon, this language does unfurl, it is the worlds most spoken, with millions in its swirl.'),
(10, 'What is the official language of Japan?', 'Chinese', 'Korean', 'Japanese', 'English', 'Japanese', 'In the land of the rising suns embrace, the language spoken with grace.'),
(11, 'Which language is spoken in the majority of Switzerland?', 'French', 'Italian', 'Roman', 'German', 'German', 'Where Swiss precision meets Deutschlands might, this language is spoken both day and night.'),
(12, 'In which country is Punjabi an official language?', 'Pakistan', 'India', 'Bangladesh', 'Iran', 'India', 'Where the Golden Temple gleams with might, Punjabi is an official language, shining bright.'),
(13, 'What is the second most spoken language in the world by the number of native speakers?', 'English', 'Bengali', 'Portuguese', 'Spanish', 'Spanish', 'From paella to churros so sweet,  it is a language with a widespread domain.'),
(14, 'Which language family does Finnish belong to?', 'Indo-European', 'Uralic', 'Altaic', 'European', 'Uralic', 'Where the Northern Lights cast their glow, this Uralic language is in the know.'),
(15, 'What is the official language of Syria?', 'Hebrew', 'Arabic', 'Coptic', 'English', 'Arabic', 'In ancient lands with historys trace, this language is spoken in a historic place.');

INSERT INTO sweden (swedenId, swedenQuestion, swedenOption1, swedenOption2, swedenOption3, swedenOption4, swedenAnswer, swedenHints) VALUES
(1, 'What is the national animal of Sweden?', 'Moose', 'Deer', 'Fox', 'Bear', 'Moose', 'Not the kind you put in your hair, even if it sounds the same'),
(2, 'How many world heritage sites are there in Sweden?', '10', '15', '20', '17', '15', 'XV'),
(3, 'Which is the highest mountain in Sweden?', 'Kebnekais', 'Sarektjåkkå', 'Storberget', 'Vikingaberget', 'Kebnekaise', 'The name is a Sami word meaning “kettle top.'),
(4, 'How many lakes are there in Sweden? (circa)', '5000', '15 000',' 70 000', '100 000', '100 000', 'A six digit number'),
(5, 'Which is the southernmost point in Sweden?', 'Smygehuk', 'Treriksröset',' Sandhammaren', 'Southern bridge of Ystad', 'Smygehuk', 'Located at the town of Smygehamn'),
(6, 'What is the capital of Sweden?', 'Oslo', 'Copenhagen', 'Stockholm', 'Helsinki', 'Stockholm', 'Where the Baltic breeze and Viking lore entwine, the capital city is a treasure of design.'),
(7, 'Which currency is used in Sweden?', 'Euro',' Swedish Krona' , 'Danish Krone', 'Norwegian Krone', 'Swedish Krona', 'In the land of the Krona, where payments are spun, this currency is used in the midnight sun.'),
(8, 'In what region is Sweden located?', 'Scandinavia', 'Baltic', 'Benelux', 'Iberia', 'Scandinavia', 'Up in the North, where the auroras dance so bright, Sweden is the gem, in the land of light.'),
(9, 'What is the largest lake in Sweden?', 'Vättern', 'Mälaren', 'Vänern' , 'Hjälmaren', 'Vänern', 'Where waves reflect a Scandinavian scene, this lake is the largest you have ever seen.'),
(10, 'Which Swedish scientist is known for his contributions to physics, especially the development of the Celsius temperature scale?', 'Carl Linnaeus', 'Anders Celsius', 'Alfred Nobel', 'Svante Arrhenius', ' Anders Celsius', 'A pioneering mind, in temperatures embrace, Celsius left a mark in Swedens scientific grace.'),
(11, 'Who is the current monarch of Sweden?', 'Queen Margrethe II', 'Harald V', 'Carl XVI Gustaf', 'King Felipe VI', 'Carl XVI Gustaf', 'From the House of Bernadotte, a royal face, the monarch in Swedens honored place.'),
(12, 'What is the famous open-air museum in Stockholm that showcases the history and culture of Sweden?', 'Skansen', 'Vasa Museum', 'ABBA The Museum', 'Nordic Museum', 'Skansen', 'In Djurgårdens embrace, an outdoor treasure to admire, showcasing Swedens past, it never tires.'),
(13, 'What is the traditional Swedish dish consisting of pickled herring, potatoes, and sour cream?', 'Köttbullar', 'Smörgåsbord', 'Gravad lax', 'Sill och potatis', 'Sill och potatis', 'On midsummers eve, under a bright Nordic beam, this dish is savored, a Midsummer dream.'),
(14, 'Which famous Swedish furniture retailer is known for its ready-to-assemble furniture and home accessories?', 'IKEA', 'H&M', 'Volvo', 'Ericsson', 'IKEA', 'A worldwide brand for the homes embrace, offering furniture and style with Swedish grace.'),
(15, 'What is the title of the Swedish national anthem?', 'Du unga, du vackra', 'Du fula, du fulla', ' Du ramlar, du fisar', 'Du gamla, du fria', 'Du gamla, du fria', 'An anthem of Swedens legacy, its melodies echo with unity.');



