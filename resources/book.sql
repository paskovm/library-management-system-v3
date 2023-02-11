CREATE TABLE lms.book (
	ID INT NOT NULL AUTO_INCREMENT,
	Title VARCHAR(50) NOT NULL,
	Author VARCHAR(29) NOT NULL,
	Genre VARCHAR(15) NOT NULL,
	IsIssued VARCHAR(50) NOT NULL,
	PRIMARY KEY (`ID`),
    UNIQUE INDEX `ID_UNIQUE` (`ID` ASC)
);


Book
----
fantasy, adventure, romance, mystery, horror, thriller, science fiction, memoir, cookbook, art, self-help, development, motivational, health, history, travel, humor, crime, classics


William Shakespeare, J.R.R. Tolkien, George Orwell, Charles Dickens, Leo Tolstoy, Jane Austen, Ernest Hemingway, Homer, John Steinbeck, Mark Twain, William Wordsworth, Oscar Wilde, C.S. Lewis, Marcel Proust, Albert Camus, J.D. Salinger, Fyodor Dostoevsky, Thomas Hardy, Joseph Heller, Salman Rushdie, Charlotte Bronte, Douglas Adams, Emily Bronte, W. Somerset Maugham, Honore de Balzac, Khalid Hosseini, Toni Morrison, Agatha Christie, Ayn Rand, Joseph Conrad, Evelyn Waugh, William Faulkner, John Updike, Dante Alighieri, Franz Kafka, Edith Wharton, Johann Wolfgang von Goethe, Henry Miller, William Butler Yeats, Aldous Huxley, Paulo Coelho, Jorge Luis Borges, Marcus Aurelius, Jack London, Henry David Thoreau, Thomas Mann, Graham Greene, George R.R. Martin, Jules Verne, Jack Kerouac, Jean Paul Sarte, Agatha Christie, Hunter S. Thompson, William Blake , Maya Angelou, Tennessee Williams, John Keats, Robert Louis Stevenson, George Bernard Shaw, Rudyard Kipling, E. M. Forster, Plato, Rabindranath Tagore, Gabriela Mistral, Jalalud’din Rumi, Wilfred Owen, Ralph Waldo Emerson, Samuel Taylor Coleridge, John Milton, Aleksandr Sergeyevich Pushkin, Roald Dahl, W H Auden, T.S.Eliot, Anne Frank, Ian McEwan, Stephen King, Sir Arthur Conan Doyle, Phillip Roth, Beatrix Potter, Paulo Coelho, Rabindranath Tagore, Anton Chekhov, G.K. Chesterton, Enid Blyton, Czeslaw Milosz



insert into lms.book (ID, Title, Author, Genre, IsIssued) values (1, 'Children of the Corn V: Fields of Terror', 'Gabriela Mistral', 'development', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (2, 'Amandla! A Revolution in Four Part Harmony', 'Stephen King', 'mystery', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (3, 'Commune, La (Paris, 1871)', 'Honore de Balzac', 'mystery', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (4, 'Dr. Jekyll and Ms. Hyde', 'Ernest Hemingway', 'science fiction', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (5, 'Woochi: The Demon Slayer', 'Graham Greene', 'classics', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (6, '66 Scenes From America', 'Thomas Mann', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (7, '100 Men and a Girl (One Hundred Men and a Girl)', 'Douglas Adams', 'science fiction', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (8, 'Thirty-Five Something (Tout pour plaire)', 'William Blake', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (9, 'Life or Something Like It', 'Ernest Hemingway', 'thriller', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (10, 'On Dangerous Ground', 'Toni Morrison', 'memoir', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (11, 'Proof of Life', 'Henry Miller', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (12, 'Skipped Parts', 'Robert Louis Stevenson', 'memoir', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (13, 'Atlas Shrugged: Part 1', 'Albert Camus', 'cookbook', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (14, 'My Kid Could Paint That', 'Thomas Mann', 'fantasy', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (15, 'If You Only Knew', 'John Steinbeck', 'cookbook', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (16, 'Water Drops on Burning Rocks', 'Toni Morrison', 'health', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (17, 'Harvest', 'Sir Arthur Conan Doyle', 'history', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (18, 'Strapped', 'Aldous Huxley', 'development', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (19, 'Flow: For Love of Water', 'Charles Dickens', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (20, 'Wrong Turn at Tahoe', 'George R.R. Martin', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (21, 'Girl, The', 'J.D. Salinger', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (22, 'Frankenstein Meets the Wolf Man', 'Homer', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (23, 'Jim Thorpe -- All-American', 'Rabindranath Tagore', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (24, 'Fled', 'Roald Dahl', 'travel', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (25, 'Bag of Hammers, A', 'Maya Angelou', 'humor', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (26, 'Dirty Carnival, A (Biyeolhan geori)', 'Jules Verne', 'science fiction', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (27, 'Aristocrats, The', 'Jules Verne', 'horror', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (28, 'Pinky', 'Plato', 'humor', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (29, 'Great Gabbo, The', 'Stephen King', 'classics', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (30, 'To the Limit (Am Limit)', 'William Faulkner', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (31, 'Just Wright', 'J.R.R. Tolkien', 'cookbook', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (32, 'Vampires, Les', 'Jules Verne', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (33, 'Wish You Were Here', 'Johann Wolfgang von Goethe', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (34, 'Powder Room', 'Jules Verne', 'horror', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (35, 'The Last Time I Saw Macao', 'Aleksandr Sergeyevich Pushkin', 'health', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (36, 'Klansman, The', 'Ralph Waldo Emerson', 'humor', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (37, 'Rebels of the Neon God (Qing shao nian nuo zha)', 'Phillip Roth', 'thriller', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (38, 'Independencia', 'W H Auden', 'history', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (39, 'Peter & the Wolf', 'Aldous Huxley', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (40, 'Simple Life, A (Tao jie)', 'Tennessee Williams', 'memoir', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (41, 'Dragon Inn (Sun lung moon hak chan)', 'J.D. Salinger', 'fantasy', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (42, 'Reckless', 'T.S.Eliot', 'motivational', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (43, 'Free to Play', 'Hunter S. Thompson', 'history', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (44, 'Zoo', 'Evelyn Waugh', 'thriller', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (45, 'Slender Thread, The', 'Ralph Waldo Emerson', 'crime', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (46, 'Tracey Fragments, The', 'Fyodor Dostoevsky', 'memoir', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (47, 'Free Range (Ballaad maailma heakskiitmisest)', 'Henry Miller', 'history', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (48, 'Incredible Mr. Limpet, The', 'Jules Verne', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (49, 'My Bodyguard', 'Douglas Adams', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (50, 'V. I. Warshawski', 'Toni Morrison', 'history', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (51, 'Riviera', 'Hunter S. Thompson', 'classics', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (52, 'Fight, Zatoichi, Fight', 'Jorge Luis Borges', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (53, 'Legend of the Boneknapper Dragon', 'Hunter S. Thompson', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (54, 'On the Double ', 'Rabindranath Tagore', 'humor', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (55, 'Bird of the Air, A (Loop, The)', 'Ralph Waldo Emerson', 'fantasy', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (56, 'Godzilla vs. The Sea Monster', 'Honore de Balzac', 'thriller', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (57, 'Heiter bis wolkig', 'Roald Dahl', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (58, 'Sicko', 'Salman Rushdie', 'thriller', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (59, 'Love You You', 'Honore de Balzac', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (60, 'Within the Woods', 'Honore de Balzac', 'development', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (61, 'Farewell to Matyora', 'Anton Chekhov', 'motivational', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (62, 'Clandestine Childhood', 'Jack Kerouac', 'self-help', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (63, 'Paul Williams Still Alive', 'Anne Frank', 'development', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (64, 'The Conrad Boys', 'Czeslaw Milosz', 'classics', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (65, 'My Amityville Horror', 'Charlotte Bronte', 'health', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (66, 'In the Name of the King III', 'Plato', 'memoir', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (67, 'Project Grizzly', 'Stephen King', 'humor', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (68, 'Misérables, Les', 'Charles Dickens', 'science fiction', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (69, 'Harvest (Stadt Land Fluss)', 'Marcel Proust', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (70, 'Thrill of Brazil, The', 'Stephen King', 'cookbook', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (71, 'Transformers: Age of Extinction', 'Jack Kerouac', 'humor', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (72, 'Bring on the Night', 'Anne Frank', 'history', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (73, 'Abandon', 'Johann Wolfgang von Goethe', 'fantasy', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (74, 'Private Resort', 'John Keats', 'travel', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (75, 'Dog, The', 'Toni Morrison', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (76, 'Besieged (a.k.a. L'' Assedio)', 'William Faulkner', 'mystery', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (77, 'Art of Travel, The', 'Homer', 'crime', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (78, 'Hysteria: The Def Leppard Story', 'Albert Camus', 'self-help', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (79, 'Johnny Handsome', 'John Milton', 'classics', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (80, 'Tourist, The', 'Marcus Aurelius', 'fantasy', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (81, 'Hollidaysburg', 'Paulo Coelho', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (82, 'Big Nothing', 'William Butler Yeats', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (83, 'That Certain Woman', 'Rudyard Kipling', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (84, 'Hard Candy', 'Joseph Heller', 'motivational', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (85, 'Skeletons', 'Agatha Christie', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (86, 'Typhoon (Tae-poong)', 'Honore de Balzac', 'crime', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (87, 'First Texan, The', 'John Updike', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (88, 'Me You Them (Eu, Tu, Eles)', 'Jack Kerouac', 'thriller', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (89, 'Crush', 'Paulo Coelho', 'cookbook', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (90, 'Best Friends', 'Robert Louis Stevenson', 'art', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (91, 'Red Dog', 'Homer', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (92, 'Last Days, The', 'Marcus Aurelius', 'romance', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (93, 'Red Dog', 'Ernest Hemingway', 'science fiction', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (94, 'Superproduction (Superprodukcja)', 'Thomas Hardy', 'mystery', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (95, 'How to Irritate People', 'Jane Austen', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (96, 'Striking Distance', 'Gabriela Mistral', 'horror', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (97, 'Foreign Letters', 'Robert Louis Stevenson', 'fantasy', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (98, 'How She Move', 'Phillip Roth', 'health', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (99, 'Misérables, Les', 'Agatha Christie', 'adventure', false);
insert into lms.book (ID, Title, Author, Genre, IsIssued) values (100, 'Bottle Shock', 'Charlotte Bronte', 'classics', false);
