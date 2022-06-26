# Checkpoint based learning with career assurance with SBTs and ERC725Y

## POLYGON SCAN CONTRACT: 0x193D9a182e825fD5D42C3E2557fD1325EAC9e5a5

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

=========================Off chain stuffs=============================
if you want to test it
here are the data to put
merkle

    Tree Hash :-0xd62217fa6e6b85bad0fc2fe553fbdfdef6e575fe348e08ccb7e2a65d74b181d2
    Leaf Hash :-0xAb8483F64d9C6d1EcF9b849Ae677dD0000000000000000000000000000000000

    ["0x5931b4ed56ace4c46b68524cb5bcbf4195f1bbaacbe5228fbd090546c88dd229","0x056d1439b159e9aea07c84d40a2602be4b31e6927f0351c443076a7793ce2fa4","0x6d6cbee8dcc53afd0fe8468716e17f2c38de5112a301ca32c586f1daa063b47d","0x7ebe0de29163910336a767ec85de31db97c03cad12d264c6a3106088cf4c0f82","0x690beed26cf328227f23c0cbeecbb85280b30be6d94ac54ce44599b834cfb9f4"]

Q1

    Q:- What is this hackathon
    ans:- HackHeist
    Hash:- 0xfae53eba30f205fc483c34e59e54795a75c6cb417fe6824762208bbf62401640

Q2

    Q:- Who created this application
    ans:- Priyansu
    Hash:- 0x7c7db72a38a04004b6426d6cb8d0e2b99de141b317c79970b7399f8053b6a1f1

Q3

    Q:- Who are the team members?
    ans:- PriyansuOnly
    Hash:- 0x38feedd3b449e6b05582af6685a6e9d0c8d384e7c1354e1003565c86bd2550cb

Q4

    Q:- What is 2 + 2?
    ans:- four
    Hash:- 0x1f74d85630f53cf458fb11266346a6a630ee678f248b72b7b2e516022eabed5d

Q5

    Q:- what is 3 + 3?
    ans:- nine
    Hash:- 0x06ef05f5d5c8dfe485565bc3dd884c6d42d69ff924fda225da07fe0dc9bbd890

Q6

    Q:- Goku is stronger than Saitama?
    ans:- Yes
    Hash:- 0xb5094a57496778a7a102e5291db97ec95f29f38b3aacdfb2bfa24a93e50db40c

Q7

    Q:-  best uchiha?
    ans:- Itachi
    Hash:- 0x3a9933bea2dba38913818f5677be904de39b63b7f205b159628259e9bf6686b6

Q8

    Q:- Who has the best Susano?
    ans:- Indra
    Hash:- 0x1fc1c192afdf8b044ca31e6571bcc36599e320389d1f7eba212a9a395633aafb

Q9

    Q:- Can they ever make Rust simple?
    ans: No
    Hash:- 0x2ad50ac40f195370ffe36b7d2385277f0e6eacb46ede6070f5f9fcb93bfa19bd

Q10

    Q:- Best villian in Naruto?
    ans: Pain
    Hash:- 0x0f1b1790c1b7bc872a72b2f7953a8562ee790faa5b777c2c5e43204bbae215bb

## IPFS Hash

- FROM STUDENT TO ERC725 instance

Student address:- "REMIX OR HARDHAT ANY ADDRESS EXCEPT DEPLOYER"

    Key: Profile
    KeyHash:- 0x50726f66696c6500000000000000000000000000000000000000000000000000
    IpfsHash:-QmYi1z5gQ5hUseqwmC2GUXLZUvSXqP4NtMG49so5NgDkpZ
    HashedIpfsHash:- 0x516d5969317a356751356855736571776d43324755584c5a557653587150344e744d473439736f354e67446b705a

    Key: CollegeCard
    KeyHash:- 0x436f6c6c65676543617264000000000000000000000000000000000000000000
    IpfsHash:- QmRjbC7pgNHStsNgGoqYoH69xnc8hKgCcsbM9wGma8hE5s
    HashedIpfsHash:- 0x516d526a62433770674e485374734e67476f71596f483639786e6338684b67436373624d3977476d613868453573
