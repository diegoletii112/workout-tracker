-- 1. EXERCISE (Lista ćwiczeń)
INSERT INTO EXERCISE (id, name, description)
SELECT 1, 'Push-up', 'A bodyweight exercise that primarily targets the chest, shoulders, and triceps.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 1);

INSERT INTO EXERCISE (id, name, description)
SELECT 2, 'Squat', 'A lower body exercise that primarily targets the quadriceps, hamstrings, and glutes.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 2);

INSERT INTO EXERCISE (id, name, description)
SELECT 3, 'Plank', 'A core exercise that strengthens the abdominal muscles and lower back.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 3);

INSERT INTO EXERCISE (id, name, description)
SELECT 4, 'Burpee', 'A full-body exercise that combines a squat, push-up, and jump to improve cardiovascular fitness and strength.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 4);

INSERT INTO EXERCISE (id, name, description)
SELECT 5, 'Lunge', 'A lower body exercise that targets the quadriceps, hamstrings, and glutes while also improving balance and stability.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 5);

INSERT INTO EXERCISE (id, name, description)
SELECT 6, 'Deadlift', 'A compound exercise that primarily targets the posterior chain, including the glutes, hamstrings, and lower back.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 6);

INSERT INTO EXERCISE (id, name, description)
SELECT 7, 'Bench Press', 'An upper body exercise that primarily targets the chest, shoulders, and triceps.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 7);

INSERT INTO EXERCISE (id, name, description)
SELECT 8, 'Pull-up', 'An upper body exercise that primarily targets the back muscles, particularly the latissimus dorsi, as well as the biceps and shoulders.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 8);

INSERT INTO EXERCISE (id, name, description)
SELECT 9, 'Bicep Curl', 'An isolation exercise that specifically targets the biceps brachii muscle in the upper arm.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 9);

INSERT INTO EXERCISE (id, name, description)
SELECT 10, 'Tricep Dip', 'An upper body exercise that primarily targets the triceps muscles located on the back of the upper arm.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 10);

INSERT INTO EXERCISE (id, name, description)
SELECT 11, 'Mountain Climber', 'A full-body exercise that combines cardio and strength training by engaging the core, shoulders, and legs.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 11);

INSERT INTO EXERCISE (id, name, description)
SELECT 12, 'Russian Twist', 'A core exercise that targets the oblique muscles on the sides of the abdomen.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 12);

INSERT INTO EXERCISE (id, name, description)
SELECT 13, 'Leg Raise', 'A lower abdominal exercise that targets the lower abs and hip flexors.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 13);

INSERT INTO EXERCISE (id, name, description)
SELECT 14, 'Jumping Jack', 'A cardiovascular exercise that involves jumping to a position with the legs spread wide and the hands touching overhead, then returning to a position with the feet together and arms at the sides.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 14);

INSERT INTO EXERCISE (id, name, description)
SELECT 15, 'Sit-up', 'A core exercise that primarily targets the abdominal muscles.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 15);

INSERT INTO EXERCISE (id, name, description)
SELECT 16, 'Glute Bridge', 'A lower body exercise that primarily targets the gluteal muscles and hamstrings.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 16);

INSERT INTO EXERCISE (id, name, description)
SELECT 17, 'Shoulder Press', 'An upper body exercise that primarily targets the deltoid muscles in the shoulders.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 17);

INSERT INTO EXERCISE (id, name, description)
SELECT 18, 'Hip Thrust', 'A lower body exercise that primarily targets the gluteal muscles and helps improve hip extension strength.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 18);

INSERT INTO EXERCISE (id, name, description)
SELECT 19, 'Side Plank', 'A core exercise that targets the oblique muscles on the sides of the abdomen while also engaging the shoulders and hips.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 19);

INSERT INTO EXERCISE (id, name, description)
SELECT 20, 'Calf Raise', 'An isolation exercise that specifically targets the calf muscles located on the back of the lower leg.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 20);

INSERT INTO EXERCISE (id, name, description)
SELECT 21, 'Wall Sit', 'A lower body exercise that targets the quadriceps, hamstrings, and glutes by holding a seated position against a wall.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 21);

INSERT INTO EXERCISE (id, name, description)
SELECT 22, 'High Knees', 'A cardiovascular exercise that involves running in place while lifting the knees as high as possible to engage the core and leg muscles.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 22);

INSERT INTO EXERCISE (id, name, description)
SELECT 23, 'Jump Squat', 'A plyometric exercise that combines a squat with a jump to improve lower body strength and explosiveness.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 23);

INSERT INTO EXERCISE (id, name, description)
SELECT 24, 'Inchworm', 'A full-body exercise that targets the core, shoulders, and hamstrings by walking the hands out into a plank position and then back to standing.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 24);

INSERT INTO EXERCISE (id, name, description)
SELECT 25, 'Superman', 'A back extension exercise that targets the lower back muscles by lying face down and lifting the arms and legs off the ground simultaneously.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 25);

INSERT INTO EXERCISE (id, name, description)
SELECT 26, 'Flutter Kick', 'A core exercise that targets the lower abdominal muscles and hip flexors by performing a kicking motion while lying on the back.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 26);

INSERT INTO EXERCISE (id, name, description)
SELECT 27, 'Skater Jump', 'A lateral plyometric exercise that mimics the motion of a speed skater, targeting the glutes, quads, and hamstrings while improving balance and coordination.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 27);

INSERT INTO EXERCISE (id, name, description)
SELECT 28, 'Bear Crawl', 'A full-body exercise that engages the core, shoulders, and legs by crawling on all fours while keeping the hips low and the back flat.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 28);

INSERT INTO EXERCISE (id, name, description)
SELECT 29, 'Tuck Jump', 'A plyometric exercise that involves jumping and tucking the knees towards the chest to improve lower body strength and explosiveness.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 29);

INSERT INTO EXERCISE (id, name, description)
SELECT 30, 'Box Jump', 'A plyometric exercise that involves jumping onto a sturdy box or platform to improve lower body power and explosiveness.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 30);

INSERT INTO EXERCISE (id, name, description)
SELECT 31, 'Medicine Ball Slam', 'A full-body exercise that involves lifting a medicine ball overhead and forcefully slamming it to the ground to engage the core, shoulders, and legs.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 31);

INSERT INTO EXERCISE (id, name, description)
SELECT 32, 'Kettlebell Swing', 'A dynamic exercise that targets the posterior chain, including the glutes, hamstrings, and lower back, while also engaging the core and shoulders.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 32);

INSERT INTO EXERCISE (id, name, description)
SELECT 33, 'Renegade Row', 'A compound exercise that combines a plank with a rowing motion to target the back muscles, core, and arms.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 33);

INSERT INTO EXERCISE (id, name, description)
SELECT 34, 'Turkish Get-Up', 'A full-body exercise that involves transitioning from a lying position to a standing position while holding a weight overhead, targeting multiple muscle groups including the core, shoulders, and legs.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 34);

INSERT INTO EXERCISE (id, name, description)
SELECT 35, 'Farmer''s Walk', 'A functional exercise that involves carrying heavy weights in each hand while walking to improve grip strength, core stability, and overall endurance.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 35);

INSERT INTO EXERCISE (id, name, description)
SELECT 36, 'Sled Push', 'A strength and conditioning exercise that involves pushing a weighted sled across a surface to target the lower body muscles and improve cardiovascular fitness.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 36);

INSERT INTO EXERCISE (id, name, description)
SELECT 37, 'Battle Ropes', 'A high-intensity exercise that involves waving heavy ropes in various patterns to engage the upper body muscles and improve cardiovascular endurance.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 37);

INSERT INTO EXERCISE (id, name, description)
SELECT 38, 'Boxing Punches', 'A cardiovascular exercise that involves throwing punches in various combinations to improve upper body strength, coordination, and endurance.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 38);

INSERT INTO EXERCISE (id, name, description)
SELECT 39, 'Jump Rope', 'A cardiovascular exercise that involves jumping over a rope swung under the feet and over the head to improve coordination, agility, and cardiovascular fitness.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 39);

INSERT INTO EXERCISE (id, name, description)
SELECT 40, 'Agility Ladder Drills', 'A series of footwork exercises performed on an agility ladder to improve speed, coordination, and agility.'
WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 40);


-- 2. MUSCLE_GROUP (Grupy Mięśniowe)
INSERT INTO MUSCLE_GROUP (id, name)
SELECT 1, 'Chest' WHERE NOT EXISTS (SELECT 1 FROM MUSCLE_GROUP WHERE id = 1);
INSERT INTO MUSCLE_GROUP (id, name)
SELECT 2, 'Back' WHERE NOT EXISTS (SELECT 1 FROM MUSCLE_GROUP WHERE id = 2);
INSERT INTO MUSCLE_GROUP (id, name)
SELECT 3, 'Legs' WHERE NOT EXISTS (SELECT 1 FROM MUSCLE_GROUP WHERE id = 3);
INSERT INTO MUSCLE_GROUP (id, name)
SELECT 4, 'Arms' WHERE NOT EXISTS (SELECT 1 FROM MUSCLE_GROUP WHERE id = 4);
INSERT INTO MUSCLE_GROUP (id, name)
SELECT 5, 'Shoulders' WHERE NOT EXISTS (SELECT 1 FROM MUSCLE_GROUP WHERE id = 5);
INSERT INTO MUSCLE_GROUP (id, name)
SELECT 6, 'Core' WHERE NOT EXISTS (SELECT 1 FROM MUSCLE_GROUP WHERE id = 6);



-- Chest (Klatka)
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 1, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 1 AND muscle_group_id = 1); -- Push-up
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 7, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 7 AND muscle_group_id = 1); -- Bench Press

-- Back (Plecy)
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 8, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 8 AND muscle_group_id = 2); -- Pull-up
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 33, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 33 AND muscle_group_id = 2); -- Renegade Row
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 25, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 25 AND muscle_group_id = 2); -- Superman
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 6, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 6 AND muscle_group_id = 2); -- Deadlift
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 32, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 32 AND muscle_group_id = 2); -- Kettlebell Swing

-- Legs (Nogi)
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 2, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 2 AND muscle_group_id = 3); -- Squat
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 5, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 5 AND muscle_group_id = 3); -- Lunge
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 16, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 16 AND muscle_group_id = 3); -- Glute Bridge
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 18, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 18 AND muscle_group_id = 3); -- Hip Thrust
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 23, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 23 AND muscle_group_id = 3); -- Jump Squat
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 21, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 21 AND muscle_group_id = 3); -- Wall Sit
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 20, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 20 AND muscle_group_id = 3); -- Calf Raise
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 36, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 36 AND muscle_group_id = 3); -- Sled Push
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 30, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 30 AND muscle_group_id = 3); -- Box Jump
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 29, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 29 AND muscle_group_id = 3); -- Tuck Jump

-- Arms (Ramiona)
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 9, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 9 AND muscle_group_id = 4); -- Bicep Curl
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 10, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 10 AND muscle_group_id = 4); -- Tricep Dip
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 37, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 37 AND muscle_group_id = 4); -- Battle Ropes

-- Shoulders (Barki)
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 17, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 17 AND muscle_group_id = 5); -- Shoulder Press
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 33, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 33 AND muscle_group_id = 5); -- Renegade Row (dodatkowo)
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 31, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 31 AND muscle_group_id = 5); -- Medicine Ball Slam

-- Core (Brzuch/Tułów)
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 3, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 3 AND muscle_group_id = 6); -- Plank
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 12, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 12 AND muscle_group_id = 6); -- Russian Twist
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 15, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 15 AND muscle_group_id = 6); -- Sit-up
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 13, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 13 AND muscle_group_id = 6); -- Leg Raise
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 19, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 19 AND muscle_group_id = 6); -- Side Plank
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 26, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 26 AND muscle_group_id = 6); -- Flutter Kick
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 24, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 24 AND muscle_group_id = 6); -- Inchworm
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 11, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 11 AND muscle_group_id = 6); -- Mountain Climber
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 28, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 28 AND muscle_group_id = 6); -- Bear Crawl
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 22, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 22 AND muscle_group_id = 6); -- High Knees
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 40, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 40 AND muscle_group_id = 6); -- Agility Ladder Drills
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id)
SELECT 4, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 4 AND muscle_group_id = 6); -- Burpee

-- ==========================================
-- DODATKOWE ĆWICZENIA (ID 41 - 178)
-- ==========================================

-- BARBELL (Sztanga)
INSERT INTO EXERCISE (id, name, description) SELECT 41, 'Barbell Bench Press', 'Pressing weight away from chest. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 41);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 41, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 41 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 41, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 41 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 41, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 41 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 42, 'Barbell Fly', 'Adducting arms to work chest. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 42);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 42, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 42 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 43, 'Barbell Chest Press', 'Pressing for chest. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 43);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 43, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 43 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 43, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 43 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 43, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 43 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 44, 'Barbell Row', 'Pulling weight towards torso. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 44);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 44, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 44 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 44, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 44 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 45, 'Barbell Pulldown', 'Pulling weight down vertically. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 45);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 45, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 45 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 45, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 45 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 46, 'Barbell Pull-over', 'Arcing weight over head for lats. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 46);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 46, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 46 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 46, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 46 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 47, 'Barbell Squat', 'Knee and hip flexion. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 47);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 47, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 47 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 47, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 47 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 48, 'Barbell Lunge', 'Unilateral leg work. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 48);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 48, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 48 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 48, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 48 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 49, 'Barbell Leg Press', 'Pressing weight with legs. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 49);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 49, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 49 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 50, 'Barbell Leg Extension', 'Isolation for quads. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 50);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 50, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 50 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 51, 'Barbell Leg Curl', 'Isolation for hamstrings. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 51);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 51, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 51 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 52, 'Barbell Calf Raise', 'Isolation for calves. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 52);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 52, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 52 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 53, 'Barbell Overhead Press', 'Pressing weight vertically. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 53);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 53, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 53 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 53, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 53 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 54, 'Barbell Lateral Raise', 'Raising arms to side. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 54);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 54, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 54 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 55, 'Barbell Front Raise', 'Raising arms to front. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 55);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 55, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 55 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 56, 'Barbell Face Pull', 'Pulling towards face. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 56);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 56, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 56 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 56, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 56 AND muscle_group_id = 2);

INSERT INTO EXERCISE (id, name, description) SELECT 57, 'Barbell Curl', 'Flexing elbow for biceps. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 57);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 57, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 57 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 58, 'Barbell Tricep Extension', 'Extending elbow for triceps. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 58);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 58, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 58 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 59, 'Barbell Hammer Curl', 'Neutral grip curl. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 59);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 59, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 59 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 60, 'Barbell Skullcrusher', 'Lying tricep extension. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 60);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 60, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 60 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 61, 'Barbell Crunch', 'Flexing spine. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 61);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 61, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 61 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 62, 'Barbell Leg Raise', 'Flexing hips. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 62);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 62, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 62 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 63, 'Barbell Plank', 'Isometric hold. Performed using a barbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 63);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 63, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 63 AND muscle_group_id = 6);

-- DUMBBELL (Hantle)
INSERT INTO EXERCISE (id, name, description) SELECT 64, 'Dumbbell Bench Press', 'Pressing weight away from chest. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 64);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 64, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 64 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 64, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 64 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 64, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 64 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 65, 'Dumbbell Fly', 'Adducting arms to work chest. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 65);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 65, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 65 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 66, 'Dumbbell Chest Press', 'Pressing for chest. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 66);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 66, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 66 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 66, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 66 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 66, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 66 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 67, 'Dumbbell Row', 'Pulling weight towards torso. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 67);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 67, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 67 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 67, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 67 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 68, 'Dumbbell Pulldown', 'Pulling weight down vertically. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 68);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 68, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 68 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 68, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 68 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 69, 'Dumbbell Pull-over', 'Arcing weight over head for lats. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 69);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 69, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 69 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 69, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 69 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 70, 'Dumbbell Squat', 'Knee and hip flexion. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 70);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 70, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 70 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 70, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 70 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 71, 'Dumbbell Lunge', 'Unilateral leg work. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 71);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 71, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 71 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 71, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 71 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 72, 'Dumbbell Leg Press', 'Pressing weight with legs. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 72);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 72, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 72 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 73, 'Dumbbell Leg Extension', 'Isolation for quads. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 73);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 73, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 73 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 74, 'Dumbbell Leg Curl', 'Isolation for hamstrings. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 74);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 74, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 74 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 75, 'Dumbbell Calf Raise', 'Isolation for calves. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 75);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 75, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 75 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 76, 'Dumbbell Overhead Press', 'Pressing weight vertically. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 76);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 76, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 76 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 76, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 76 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 77, 'Dumbbell Lateral Raise', 'Raising arms to side. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 77);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 77, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 77 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 78, 'Dumbbell Front Raise', 'Raising arms to front. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 78);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 78, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 78 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 79, 'Dumbbell Face Pull', 'Pulling towards face. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 79);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 79, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 79 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 79, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 79 AND muscle_group_id = 2);

INSERT INTO EXERCISE (id, name, description) SELECT 80, 'Dumbbell Curl', 'Flexing elbow for biceps. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 80);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 80, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 80 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 81, 'Dumbbell Tricep Extension', 'Extending elbow for triceps. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 81);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 81, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 81 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 82, 'Dumbbell Hammer Curl', 'Neutral grip curl. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 82);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 82, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 82 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 83, 'Dumbbell Skullcrusher', 'Lying tricep extension. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 83);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 83, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 83 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 84, 'Dumbbell Crunch', 'Flexing spine. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 84);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 84, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 84 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 85, 'Dumbbell Leg Raise', 'Flexing hips. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 85);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 85, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 85 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 86, 'Dumbbell Plank', 'Isometric hold. Performed using a dumbbell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 86);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 86, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 86 AND muscle_group_id = 6);

-- KETTLEBELL
INSERT INTO EXERCISE (id, name, description) SELECT 87, 'Kettlebell Bench Press', 'Pressing weight away from chest. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 87);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 87, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 87 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 87, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 87 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 87, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 87 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 88, 'Kettlebell Fly', 'Adducting arms to work chest. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 88);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 88, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 88 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 89, 'Kettlebell Chest Press', 'Pressing for chest. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 89);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 89, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 89 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 89, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 89 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 89, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 89 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 90, 'Kettlebell Row', 'Pulling weight towards torso. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 90);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 90, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 90 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 90, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 90 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 91, 'Kettlebell Pulldown', 'Pulling weight down vertically. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 91);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 91, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 91 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 91, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 91 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 92, 'Kettlebell Pull-over', 'Arcing weight over head for lats. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 92);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 92, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 92 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 92, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 92 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 93, 'Kettlebell Squat', 'Knee and hip flexion. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 93);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 93, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 93 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 93, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 93 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 94, 'Kettlebell Lunge', 'Unilateral leg work. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 94);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 94, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 94 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 94, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 94 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 95, 'Kettlebell Leg Press', 'Pressing weight with legs. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 95);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 95, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 95 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 96, 'Kettlebell Leg Extension', 'Isolation for quads. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 96);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 96, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 96 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 97, 'Kettlebell Leg Curl', 'Isolation for hamstrings. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 97);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 97, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 97 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 98, 'Kettlebell Calf Raise', 'Isolation for calves. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 98);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 98, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 98 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 99, 'Kettlebell Overhead Press', 'Pressing weight vertically. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 99);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 99, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 99 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 99, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 99 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 100, 'Kettlebell Lateral Raise', 'Raising arms to side. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 100);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 100, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 100 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 101, 'Kettlebell Front Raise', 'Raising arms to front. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 101);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 101, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 101 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 102, 'Kettlebell Face Pull', 'Pulling towards face. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 102);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 102, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 102 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 102, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 102 AND muscle_group_id = 2);

INSERT INTO EXERCISE (id, name, description) SELECT 103, 'Kettlebell Curl', 'Flexing elbow for biceps. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 103);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 103, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 103 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 104, 'Kettlebell Tricep Extension', 'Extending elbow for triceps. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 104);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 104, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 104 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 105, 'Kettlebell Hammer Curl', 'Neutral grip curl. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 105);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 105, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 105 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 106, 'Kettlebell Skullcrusher', 'Lying tricep extension. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 106);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 106, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 106 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 107, 'Kettlebell Crunch', 'Flexing spine. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 107);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 107, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 107 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 108, 'Kettlebell Leg Raise', 'Flexing hips. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 108);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 108, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 108 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 109, 'Kettlebell Plank', 'Isometric hold. Performed using a kettlebell.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 109);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 109, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 109 AND muscle_group_id = 6);

-- CABLE (Wyciąg)
INSERT INTO EXERCISE (id, name, description) SELECT 110, 'Cable Bench Press', 'Pressing weight away from chest. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 110);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 110, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 110 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 110, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 110 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 110, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 110 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 111, 'Cable Fly', 'Adducting arms to work chest. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 111);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 111, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 111 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 112, 'Cable Chest Press', 'Pressing for chest. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 112);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 112, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 112 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 112, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 112 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 112, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 112 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 113, 'Cable Row', 'Pulling weight towards torso. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 113);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 113, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 113 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 113, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 113 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 114, 'Cable Pulldown', 'Pulling weight down vertically. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 114);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 114, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 114 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 114, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 114 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 115, 'Cable Pull-over', 'Arcing weight over head for lats. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 115);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 115, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 115 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 115, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 115 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 116, 'Cable Squat', 'Knee and hip flexion. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 116);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 116, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 116 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 116, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 116 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 117, 'Cable Lunge', 'Unilateral leg work. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 117);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 117, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 117 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 117, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 117 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 118, 'Cable Leg Press', 'Pressing weight with legs. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 118);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 118, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 118 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 119, 'Cable Leg Extension', 'Isolation for quads. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 119);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 119, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 119 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 120, 'Cable Leg Curl', 'Isolation for hamstrings. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 120);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 120, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 120 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 121, 'Cable Calf Raise', 'Isolation for calves. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 121);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 121, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 121 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 122, 'Cable Overhead Press', 'Pressing weight vertically. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 122);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 122, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 122 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 122, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 122 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 123, 'Cable Lateral Raise', 'Raising arms to side. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 123);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 123, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 123 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 124, 'Cable Front Raise', 'Raising arms to front. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 124);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 124, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 124 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 125, 'Cable Face Pull', 'Pulling towards face. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 125);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 125, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 125 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 125, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 125 AND muscle_group_id = 2);

INSERT INTO EXERCISE (id, name, description) SELECT 126, 'Cable Curl', 'Flexing elbow for biceps. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 126);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 126, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 126 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 127, 'Cable Tricep Extension', 'Extending elbow for triceps. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 127);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 127, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 127 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 128, 'Cable Hammer Curl', 'Neutral grip curl. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 128);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 128, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 128 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 129, 'Cable Skullcrusher', 'Lying tricep extension. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 129);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 129, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 129 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 130, 'Cable Crunch', 'Flexing spine. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 130);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 130, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 130 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 131, 'Cable Leg Raise', 'Flexing hips. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 131);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 131, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 131 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 132, 'Cable Plank', 'Isometric hold. Performed using a cable.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 132);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 132, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 132 AND muscle_group_id = 6);

-- BAND (Gumy)
INSERT INTO EXERCISE (id, name, description) SELECT 133, 'Band Bench Press', 'Pressing weight away from chest. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 133);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 133, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 133 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 133, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 133 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 133, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 133 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 134, 'Band Fly', 'Adducting arms to work chest. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 134);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 134, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 134 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 135, 'Band Chest Press', 'Pressing for chest. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 135);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 135, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 135 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 135, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 135 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 135, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 135 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 136, 'Band Row', 'Pulling weight towards torso. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 136);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 136, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 136 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 136, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 136 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 137, 'Band Pulldown', 'Pulling weight down vertically. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 137);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 137, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 137 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 137, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 137 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 138, 'Band Pull-over', 'Arcing weight over head for lats. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 138);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 138, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 138 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 138, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 138 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 139, 'Band Squat', 'Knee and hip flexion. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 139);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 139, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 139 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 139, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 139 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 140, 'Band Lunge', 'Unilateral leg work. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 140);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 140, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 140 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 140, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 140 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 141, 'Band Leg Press', 'Pressing weight with legs. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 141);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 141, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 141 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 142, 'Band Leg Extension', 'Isolation for quads. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 142);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 142, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 142 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 143, 'Band Leg Curl', 'Isolation for hamstrings. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 143);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 143, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 143 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 144, 'Band Calf Raise', 'Isolation for calves. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 144);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 144, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 144 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 145, 'Band Overhead Press', 'Pressing weight vertically. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 145);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 145, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 145 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 145, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 145 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 146, 'Band Lateral Raise', 'Raising arms to side. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 146);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 146, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 146 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 147, 'Band Front Raise', 'Raising arms to front. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 147);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 147, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 147 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 148, 'Band Face Pull', 'Pulling towards face. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 148);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 148, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 148 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 148, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 148 AND muscle_group_id = 2);

INSERT INTO EXERCISE (id, name, description) SELECT 149, 'Band Curl', 'Flexing elbow for biceps. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 149);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 149, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 149 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 150, 'Band Tricep Extension', 'Extending elbow for triceps. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 150);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 150, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 150 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 151, 'Band Hammer Curl', 'Neutral grip curl. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 151);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 151, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 151 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 152, 'Band Skullcrusher', 'Lying tricep extension. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 152);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 152, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 152 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 153, 'Band Crunch', 'Flexing spine. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 153);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 153, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 153 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 154, 'Band Leg Raise', 'Flexing hips. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 154);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 154, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 154 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 155, 'Band Plank', 'Isometric hold. Performed using a band.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 155);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 155, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 155 AND muscle_group_id = 6);

-- SMITH MACHINE (Maszyna Smitha)
INSERT INTO EXERCISE (id, name, description) SELECT 156, 'Smith Machine Bench Press', 'Pressing weight away from chest. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 156);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 156, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 156 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 156, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 156 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 156, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 156 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 157, 'Smith Machine Fly', 'Adducting arms to work chest. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 157);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 157, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 157 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 158, 'Smith Machine Chest Press', 'Pressing for chest. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 158);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 158, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 158 AND muscle_group_id = 1);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 158, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 158 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 158, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 158 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 159, 'Smith Machine Row', 'Pulling weight towards torso. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 159);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 159, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 159 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 159, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 159 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 160, 'Smith Machine Pulldown', 'Pulling weight down vertically. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 160);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 160, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 160 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 160, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 160 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 161, 'Smith Machine Pull-over', 'Arcing weight over head for lats. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 161);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 161, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 161 AND muscle_group_id = 2);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 161, 1 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 161 AND muscle_group_id = 1);

INSERT INTO EXERCISE (id, name, description) SELECT 162, 'Smith Machine Squat', 'Knee and hip flexion. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 162);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 162, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 162 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 162, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 162 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 163, 'Smith Machine Lunge', 'Unilateral leg work. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 163);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 163, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 163 AND muscle_group_id = 3);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 163, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 163 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 164, 'Smith Machine Leg Press', 'Pressing weight with legs. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 164);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 164, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 164 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 165, 'Smith Machine Leg Extension', 'Isolation for quads. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 165);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 165, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 165 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 166, 'Smith Machine Leg Curl', 'Isolation for hamstrings. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 166);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 166, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 166 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 167, 'Smith Machine Calf Raise', 'Isolation for calves. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 167);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 167, 3 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 167 AND muscle_group_id = 3);

INSERT INTO EXERCISE (id, name, description) SELECT 168, 'Smith Machine Overhead Press', 'Pressing weight vertically. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 168);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 168, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 168 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 168, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 168 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 169, 'Smith Machine Lateral Raise', 'Raising arms to side. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 169);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 169, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 169 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 170, 'Smith Machine Front Raise', 'Raising arms to front. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 170);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 170, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 170 AND muscle_group_id = 5);

INSERT INTO EXERCISE (id, name, description) SELECT 171, 'Smith Machine Face Pull', 'Pulling towards face. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 171);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 171, 5 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 171 AND muscle_group_id = 5);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 171, 2 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 171 AND muscle_group_id = 2);

INSERT INTO EXERCISE (id, name, description) SELECT 172, 'Smith Machine Curl', 'Flexing elbow for biceps. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 172);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 172, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 172 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 173, 'Smith Machine Tricep Extension', 'Extending elbow for triceps. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 173);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 173, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 173 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 174, 'Smith Machine Hammer Curl', 'Neutral grip curl. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 174);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 174, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 174 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 175, 'Smith Machine Skullcrusher', 'Lying tricep extension. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 175);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 175, 4 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 175 AND muscle_group_id = 4);

INSERT INTO EXERCISE (id, name, description) SELECT 176, 'Smith Machine Crunch', 'Flexing spine. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 176);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 176, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 176 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 177, 'Smith Machine Leg Raise', 'Flexing hips. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 177);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 177, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 177 AND muscle_group_id = 6);

INSERT INTO EXERCISE (id, name, description) SELECT 178, 'Smith Machine Plank', 'Isometric hold. Performed using a smith machine.' WHERE NOT EXISTS (SELECT 1 FROM EXERCISE WHERE id = 178);
INSERT INTO EXERCISE_MUSCLE_GROUP (exercise_id, muscle_group_id) SELECT 178, 6 WHERE NOT EXISTS (SELECT 1 FROM EXERCISE_MUSCLE_GROUP WHERE exercise_id = 178 AND muscle_group_id = 6);


-- noinspection SqlResolve
SELECT setval(pg_get_serial_sequence('EXERCISE', 'id'), (SELECT MAX(id) FROM EXERCISE));
-- noinspection SqlResolve
SELECT setval(pg_get_serial_sequence('MUSCLE_GROUP', 'id'), (SELECT MAX(id) FROM MUSCLE_GROUP));