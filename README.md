# Checkpoint based learning with career assurance with SBTs and ERC725Y

A public application which allows students below 18 years
follow their dream career with an assurance of getting placed

Sounds Ridiculous right? Every unique idea is Ridiculous.

## Problem Statement

Most of the students in India, take PCM / PCMB out of which
majority of the students think that they will go to IIT
and the reason is "High Paying Job". So the process is like

10th -> 12th+PCMB+JEE ->College

if the main thought is cracking high paying jobs, why dont we
introduce them with the fact that Development and Coding skills
in IT is going to gurantee you a job! Well this is impossible
because of parential pressure!
So the only solution remaining is partnership with startups
and give passionate U18 developers some sort of gurantee
that after entering to any Tier college, they will be rewarded with some
sort of internship! If they qualify our U18 tests

Lets say that a student learns this but doesnt get any internship
security from any startup form this concept platform
He will still have those skills which is going to help him/her in future

Again very ambitious but this idea has some Pros. Hear me out
In 12th- We study PCM- after college: 99% student developers
do not use Physics and Chemistry!
But in College we study coding skills and apply for FAANG company
their is one similarity here

We both grind for a single thing
but but but In the second case the learning piles up, the skills
we generate the more chances is there that we crack a good job
and most importantly the coding skills learnt in college is going
to help us in the next 15 -20 Years
So why dont we introduce this thing to student coders? 15 min of
html css design every day is going to pileup and help them in their
future!
Why am I saying all this rubbish things?
the reason being, I was the one who studied JAVA in 9th 10th 11th 12th
and its helping me now more than any other subject.

I am not saying that we ask student to completely ditch every other subject
I am just saying that
If(no interest in jee and still parents are forcing){
spend some time in our platform
15min per day and get a chance for PPI
}

## My approach

- Everything should be public and transparent
- A way to filter out the students (in this case coders/developers)
- Whitelist them for a quiz conducted by various startups
  especially on development such as Web/Mobile app, not DSA
- On qualifying , provide personal Identity such as SchoolID card
- Get Verified by the Owner
- Receive an SBT
- Return to our platfom, show sbt, If Tier 3, Get a internship

Note:- Tier3 means any college that have highest package between 4-8LPA

## How to do it

- Generate merkle proof for bulk whitelisting

  - hash leaf proof

- Create a Base Quiz which keep track of

  - question
  - every student's answer
  - if ans is correct or Not
  - Salt

- Factory Contract to create multiple quiz whick keeps track of

  - total questions
  - int mapping of each quiz

- ERC725Y

  - setter by student
  - bytes32 hash of a string
  - bytes of a IPFS hash
  - Getter by anyone with Key

- Identity Factory

  - instantize ERC725Y
  - Every whitelisted user will have their own ERC725Y Contract
  - Owner verifies information
  - Eligible for SBT

- SBT
  - if score >= 8 && verified
  - user can mint SBT

Each SBT opens up an opportunity portal for each startup company
SDEIntern after college, if student gets into KIIT VIT IIT NIT etc
SBT is revoked!
