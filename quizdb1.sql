-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2020 at 11:30 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `answerh`
--

CREATE TABLE `answerh` (
  `aid` int(250) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(250) NOT NULL,
  `answerv` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answerh`
--

INSERT INTO `answerh` (`aid`, `answer`, `ans_id`, `answerv`) VALUES
(1, 'Under 18', 1, 5),
(2, 'Between 18 and 64', 1, 5),
(3, '65 or older', 1, 15),
(4, 'Fever or chills', 2, 5),
(5, 'Mild or moderate difficulty breathing', 2, 10),
(6, 'New or worsening cough', 2, 10),
(7, 'Sustained loss of smell, taste, or appetite', 2, 15),
(8, 'Sore throat', 2, 10),
(9, 'Vomiting or diarrhea', 2, 0),
(10, 'Aching throughout the body', 2, 0),
(11, 'None of the above', 2, 0),
(12, 'Obesity', 3, 5),
(13, 'Smoking', 3, 10),
(14, 'Pregnancy', 3, 5),
(15, 'Diabetes, high blood pressure, chronic kidney disease, or liver disease', 3, 15),
(16, 'Chronic lung disease-such as moderate to severe asthma - COPD (chronic obstructive pulmonary disease) - cystic fibrosis or pulmonary fibrosis', 3, 15),
(17, 'Serious heart condition - such as heart failure - prior heart attack or cardiomyopathy', 3, 15),
(18, 'Weakened immune system from HIV - cancer treatment - use of medicines causing immune suppression or other factors', 3, 15),
(19, 'Stroke - dementia or other cerebrovascular disease or neurologic condition', 3, 15),
(20, 'Sickle cell disease - thalassemia or other blood disorder', 3, 5),
(21, 'None of the above', 3, 0),
(22, 'I have traveled internationally', 4, 20),
(23, 'I have not traveled internationally', 4, 0),
(24, 'I live with someone who has COVID-19', 5, 20),
(25, 'I have had close contact with someone who has COVID-19.I was within 6 feet of someone who is sick or I was exposed to a cough or sneeze', 5, 30),
(26, 'I have been near someone who has COVID-19.I was at least 6 feet away and was not exposed to a sneeze or cough', 5, 0),
(27, 'I have had no exposure.I have not been in contact with someone who has COVID-19', 5, 0),
(28, 'I do not know', 5, 0),
(29, 'I live in a long-term care facility', 6, 0),
(30, 'I do not live in a long-term care facility', 6, 0),
(31, 'I have worked in a hospital or other facility in the past 14 days.This includes volunteering', 7, 0),
(32, 'I plan to work in a hospital or other facility in the next 14 days.This includes volunteering', 7, 0),
(33, 'I do not work or plan to work in a medical facility', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(10) NOT NULL,
  `article_type` varchar(25) NOT NULL,
  `publish_date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `article_description` text NOT NULL,
  `article_img1` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_type`, `publish_date`, `title`, `article_description`, `article_img1`, `status`) VALUES
(1, 'Blog', '2020-02-13', 'What Will Be the Top Health Issues for 2020?', 'It’s 2020 and another year of health-related topics awaits us.What health issues will take priority? What buzzwords will we all be talking about? How might technology change healthcare?We asked some experts to peek into their crystal balls and make a few predictions.They tell us that how you get access to healthcare and how you pay for it will both be hot topics this presidential election year.Medicare is front and center as we kick off 2020.That’s in part because “Medicare for All” is the single payer option health plan being touted by two of the top Democratic presidential candidates.Jeff Becker, the senior analyst for healthcare strategy at Forrester Research says there are also a number of bills in Congress looking to expand access to Medicare as a public option.When you look at the polling numbers, our call is that Medicare for All will die in the court of public opinion and become Medicare Advantage for more,” Becker told Healthline.The Affordable Care Act (ACA), often referred to as Obamacare, will be in the courts again this year.In December, a federal appeals court ruled that the health insurance law’s individual mandate provision was unconstitutional.However, the justices sent back to a federal district court in Texas the issue of whether other parts of the law could continue to exist without the mandate that requires everyone to have health insurance.Look for some sort of Obamacare case to wind up in the U.S. Supreme Court this year.Our call is whether or not it goes to the Supreme Court, the ACA will survive because the individual mandate is severable,” Becker told Healthline.Experts say you’ll hear a lot of debate about price transparency, a move designed to increase competition and lower costs.President Trump signed an executive order in November that requires hospitals and insurers to publish their confidential, negotiated rates for treatments.“The reason this would be important is you’d be able to figure out what your out-of-pocket expenses would be” said Becker.But a coalition of hospital groups has filed a lawsuit to block the rule. They argue that the public disclosure of negotiated charges would create confusion about consumers’ out-of-pocket costs.The order is scheduled to go into effect January 1, 2021.“The thing about pharmaceuticals is, if you can’t afford them, they don’t work,” Mosley said.He predicts the move to lower the costs of prescription drugs will again be on the front burner of the healthcare debate in 2020.“The problem is Medicare and Medicaid can’t negotiate prices with these drug companies,” Mosley told Healthline.The House of Representatives has approved a bill that would do just that. The legislation also caps out-of-pocket expenses for people enrolled in Medicare Part D.However, the prognosis for this bill becoming law isn’t good.Political observers say the legislation won’t go anywhere in the Senate, and the White House has indicated the president would veto it.Republicans in the Senate have crafted their own prescription drug price plan. The president has indicated he would sign this bill, but it would need to be approved by the Democrat-controlled House.', 'Health2020Logo.png', 'Active'),
(2, 'Blog', '2020-03-08', 'Wellness Trends For 2020', 'It’s a new year, a new decade and a new chance to become your best self. In previous decades, the mind-body connection wasn’t something seen as commonplace in society. But now, it’s entirely different. In 2020, wellness will be seen as something accessible to everyone.In recent years, home fitness equipment has become increasingly more sophisticated—giving you a workout that can rival high-end studios with some of the best instructors. While Peloton has gone from an insider secret a household name (probably in part to their viral commercial), it’s no longer the only game in town. Many new products that combine physical equipment and hardware with streaming classes have been introduced.One option making waves is Hydrow, which is a state of the art rowing machine. It’s designed to mimic rowing on a river with an experience that is entirely different than spinning versus outdoor cycling, for example. With a larger screen and front-facing audio, the user hears every splash and stroke under the guidance of highly trained instructors. And no, you won’t miss getting wet.Thousands of years later, it’s safe to say meditation isn’t a passing fad. While viewed in the previous decades as “woo woo” or something just for specific religions, this spiritual practice has gone mainstream. Studies have shown meditation can improve emotional state, focus and overall wellbeing.If you’re intimidated by the thought of meditation, then you are probably the kind of person who needs to meditate the most. The trick is to find a type of meditation that you connect with.For beginners, any kind of guided meditation is best. It lets you focus your mind instead of paying attention to all of the thoughts in your head. Choose a specific meditation that will serve you, whether it’s to relax, forgive or energize. There are a seemingly endless amount of videos on YouTube and apps like Calm.Transcendental Meditation or TM is a form of mantra meditation practiced for twenty minutes twice a day. A great amount of research has shown TM to be effective for reducing stress and anxiety as well as boost brain function. Anyone can learn this practice, but it must be done in person with a certified instructor. Metta meditation can be a great way to kick off the New Year. Focused on loving-kindness, it’s a great way to let go of the past resentments from the previous decade and begin anew. NAD (nicotinamide adenine dinucleotide) NAD is well known within the science world but just now making its way into the mainstream health and wellness space. Our body naturally produces NAD but as we age and experience stress the amount declines. For example when you are 60 years old a person’s NAD levels are approximately half of what they are at the age of 40. NAD is super important as we age because it repairs your cells, increases your metabolism at the cellular level and helps turn all the food and drinks we consume into energy. There are lots of companies who now sell NAD supplements but one of the most effective ways of increasing your NAD is through a precursor that helps your body naturally produce on its own. Tru Niagen does exactly that. This wellness hack is so important yet talked about very little. Make sure to make NAD supplementation a priority in your health and wellness routine in the new year.', 'trends.jpg', 'Active'),
(3, 'Blog', '2020-04-08', 'Five ways to improve your mental health in 2020', 'It is a difficult birth for this new decade. The year 2020 kicks off under the shadow of divisive politics international security threats a spate of hate crimes and a planet in environmental peril plus all the reasons we are stressed individually work health problems life changes and more.No wonder so many of us are anxious or depressed.The studies are positive: Looking on the bright side of life really is good for you. Optimists have a 35% less chance of having a heart attack or stroke, are more likely to eat a healthy diet and exercise regularly, have stronger immune systems; and even live longer. In fact, a 2019 study found people with the most positive outlook had the greatest odds of living to 85 or beyond.Now, lets get real: Being an optimist does not mean you ignore the stress of daily life. Who can do that? It simply means that when crummy things happen, you do not blame yourself unnecessarily. If you face a challenge or obstacle, you are more likely to see it as temporary or even positive, allowing you to learn and grow.Optimists also believe they have control over their fate and can create opportunities for good things to happen.Not a natural optimist? No worries. Science has shown you can train your brain to be more positive. Only about 25% of optimism is programmed by our genes anyway.\"There is research which indicates that optimism can actually be enhanced or nurtured through certain kinds of training,\" neuroscientist Richard Davidson said. Davidson is the founder and director of the Center for Healthy Minds and has done groundbreaking work on the link between mental attitudes and physical health.\"When these kinds of mental exercises are taught to people, it actually changes the function and the structure of their brain in ways that we think support these kinds of positive qualities,\" Davidson said. \"And that may be key in producing the downstream impact on the body.\"According to a meta-analysis of existing studies, using the \"Best Possible Self\" technique is one of the most effective ways to increase your optimism. It is based on exercises that ask you to imagine yourself with all of your problems solved in a future where all of your lifes goals were achieved.A prayer attributed to St. Francis of Assisi tell us, \"It is in giving that we receive.\"Turns out he was scientifically right. Studies have shown that putting the well-being of others before our own without expecting anything in return, or what is called being altruistic, stimulates the reward centers of the brain. Those feel-good chemicals flood our system, producing a sort of \"helpers high.\"There are physical benefits, too: Studies show volunteering minimizes stress and improves depression. It can reduce the risk for cognitive impairment. It can even help us live longer.Even if you have little time to offer, just the act of giving has been shown to improve our health, possibly by temporarily reducing our sense of pain.A new study found that people who said they would donate money to help orphans were less sensitive to an electric shock than those who declined to give. In addition, the more helpful people thought their donation would be, the less pain they felt.', 'mental.jpg', 'Active'),
(4, 'Blog', '2020-05-13', 'Young Adults’ Pandemic Mental Health Risks', 'Yes, these are hard times, and everyone is stressed, but new data suggest that young adults — both those who are going back to college and those who are not — may be suffering particularly hard when it comes to mental health.The Centers for Disease Control and Prevention recently released survey data on adult mental health, looking at a national sample of adults during the last week in June. Unsurprisingly, the stress level is high, with 40.9 percent overall reporting at least one “adverse mental or behavioral health condition.”One question asked whether the person responding had seriously considered suicide in the past 30 days, and more than one in 10 respondents said yes, with higher percentages among unpaid adult caregivers, essential workers, and Hispanic and Black responders. And 25.5 percent of the young adults surveyed — the 18- to 24-year-olds — answered yes.In all, 74.9 percent of those 18 to 24 years old reported at least one bad symptom. So the young adults are definitely not OK. And interestingly, the occurrence of these symptoms decreased with increasing age; among the respondents 65 and up, who have their own set of anxieties to deal with, only 15.1 percent reported at least one of these symptoms.It’s important to identify the populations at increased risk, Ms. Lane said, to provide them with services and support, and also to recognize that many people fall into more than one risk group — some young adults are also essential workers, members of the minority groups that are disproportionately bearing the brunt of the pandemic or people with pre-existing mental health conditions.Dr. Sarah Vinson, an associate professor of psychiatry and pediatrics at Morehouse School of Medicine, said that it’s normal for older adolescents and young adults to be thinking seriously about what they are going to do with their lives. “Maybe they’re not all anxious, but they’re all thinking about this and feeling uncertain about next steps,” she said.And now they find themselves going through this transition at a moment when the ground feels shaky. “The people they normally go to for advice haven’t gone through something like this before — parents, professors, mentors,” Dr. Vinson said.“Our college students are emerging adults,” said Betty Lai, an assistant professor of counseling psychology in the Lynch School of Education and Human Development at Boston College. At this age, you are still learning, still figuring things out as you go, she said, including what career you are going to pursue, and “who are the people you are going to have as part of your life long-term? All of these important developmental tasks come up.”The pandemic is changing their opportunities to figure out those issues, and also, of course, changing their opportunities to go to school, to see their friends, to live away from home.Dr. Lai studies mental health in the aftermath of disasters, like Hurricane Katrina or the Boston Marathon bombing. She said that in a recent study of college students, 91 percent reported moderate to high stress levels, and 39 percent reported moderate to severe anxiety, while 53 percent reported moderate to severe depression.The current pandemic, she said, is “a breeding ground for mental health disaster,” with unprecedented levels of risk factors. “This exposure period is prolonged, longer than anything we’ve seen before,” she said, and the social isolation makes everything worse.Some college students are going to be on campus this fall, but much of their learning will be remote, and they face strict safety rules limiting social activity. Other students face another semester of staying home. Either way, parents should be alert for signs of stress and isolation. Stressors are heightened, Dr. Vinson said, and many people find themselves without their usual coping strategies.This combination of uncertainty about their personal future and worry about the larger future can leave some people without much sense of hope or promise about what is coming next. “Hopelessness is one of the big drivers of suicide,” Dr. Vinson said. “It’s normally not about wanting to be dead; it’s about not wanting to live like this, whatever this is.”In addition, Dr. Vinson said, suicide risk can be related to impulsiveness, and “we know people will often act more impulsively if they are using substances, which exacerbate mental health issues.”', 'young.jpg', 'Active'),
(5, 'Blog', '2020-06-14', 'What will Workplace Wellness Look Like in 2020?', 'As we look toward 2020, all indicators point towards a rapid evolution of the U.S. workplace wellness industry characterized by innovative solutions for managing health care costs that serve the increasing need for proactive ownership of well-being. However, are advances in related disciplines being leveraged optimally, cohesively and creatively to provide for maximum benefit to both the employee and employer?The corporate model of wellness programs ranges from education programs, to a more evolved model of on-site fitness facilities, incentive programs and HR driven wellness initiatives as part of an overall health and benefits offering. The 2014 SHRM Survey of Strategic Benefits - Wellness Initiatives shows that 76 percent of all surveyed companies had some form of wellness programs/resources. Among those companies two-thirds offered some form of incentive or reward program.The results of these types of programs have already demonstrated the positive impact of a collaborative responsibility partnership between employer and employee in implementing a wellness approach and the reduction of medical costs.Several key performance indicators have been used for evaluation, including reductions in monthly medical cost spend, hospital admissions and employee absenteeism. According to SHRM, of the 30 percent who conducted a cost analysis of their wellness programs, 93 percent noted their programs were somewhat or very effective in cutting costs.This certainly demonstrates a return on investment (ROI) to the employer. In addition, the positive qualitative effect on the organizational culture cannot be understated, with direct impact on talent and team spirit as well as other variables that are incremental to the quantitative benefits measured.This is particularly important given that variables such as an increasingly aging workforce (by 2020, the number of Americans in the 55 to 64 age group will have grown by 73 percent since 2000), an increase in predominant disease states (by 2030, 40.5 percent of the US population is expected to have some form of cardiovascular disease) and rapidly changing regulations added to the equation, employers are evaluating best and \"next\" practices to determine if these programs are truly optimized to realize their full potential of impact.For the next iteration of workplace wellness, the lessons learned can be leveraged from the evolution of the traditional health benefit offering to a health exchange model or to the advances and learnings in personalized therapeutic medicine. The current opportunity requires a creative and innovative approach to health and wellness ownership. Coupling a predictive, proactive and fact-based wellness management approach with employee owned and led wellness decisions can provide a powerful and personalized platform.By maintaining this initiative in a structured and sustainable manner, employers are able to provide a more targeted approach of spending proactive wellness dollars for maximum ROI and decreasing the reactive spend on medical costs.These personalized programs will enable companies to better track and monitor costs and ROI with the goal to have more than 30 percent of the companies properly monitoring cost efficiencies. This is further supported by the fact that 90 percent said they would increase their investment in wellness programs if they could quantify the ROI.', 'work.jpeg', 'Active'),
(6, 'Blog', '2020-07-16', 'Wyss Institute researchers predict the biggest scientific advances of the 2020s', 'The ball has dropped on a new year and a new decade, as we move from the 2010s into the 2020s. The last 10 years have seen incredible advances in science and technology, including a dramatic reduction in the cost of genetic sequencing, the first successful uses of gene therapy in humans, and the existence of gravitational waves. But what about the next decade? What previously impossible things will humans achieve? The Wyss Institute for Biologically Inspired Engineering at Harvard University asked its faculty members across a wide range of scientific disciplines what they predict will be the most impactful developments in their fields between now and the year 2030.Pushing the limits of biologyGeorge Church — Synthetic Biology“By 2030, we hopefully will see human clinical trials being run on transplanted organs from highly edited pigs and proteins from recoded genomes. Whole-genome sequencing may become a high-quality, equitably priced alternative to expensive gene therapies for rare diseases. Imaging will move in for close-ups (5 nm resolution) and every pixel will tell its story (DNA, RNA, protein, and lineage). Finally, we hope to see synthetic biology impact carbon sequestration via virus-resistant plants and algae, and cold-resistant elephants reverting arctic ecosystems to highly photosynthetic grasslands.”Jim Collins — Synthetic Biology“Synthetic biology is well-positioned to help advance medicine over the next decade via the development of next-generation diagnostics and gene and cell therapies. The field also has tremendous potential to enhance basic research in molecular biology, by enabling the creation of novel tools to probe and analyze the complex functions of biomolecular components and systems in living cells.”Mike Levin — Developmental Biology“The biggest knowledge gap, and frontier of opportunity, is taming the biological software that underlies embryogenesis and regeneration. Understanding the bioelectricity, biomechanics, and transcriptional circuits that allow cells to cooperate toward large-scale goals is the key to regenerative medicine, birth defects, cancer reprogramming, aging, synthetic bioengineering, and even new AI. Being able to exploit the decision-making, memory, and intelligence of cell swarms will result in transformative applications at the intersections of deep ideas in cognitive science, cybernetics, developmental biology, and computer science.”Pam Silver — Synthetic Biology“The engineering of biology will play a key role in the ability of the earth to support 10 billion people by implementing safe, faster, and more predictable biological systems. To feed the world and mitigate climate change, advances in synthetic biology will include increased utilization of sunlight together with mitigation of environmental contamination. The ability to respond quickly to epidemics and design better therapies will be a key advance for the field. And, as we move the needle on solving the problems on Earth, synthetic biology will also play a role in enabling and implementing the future of space exploration.”', 'science.jpg', 'Active'),
(7, 'Blog', '2020-08-18', 'The Major Discoveries That Could Transform the World in the Next Decade', 'The last decade ushered in some truly revolutionary advances in science, from the discovery of the Higgs boson to the use of CRISPR for Sci-Fi esque gene editing. But what are some of the biggest breakthroughs still to come? Live Science asked several experts in their field what discoveries, techniques and developments they are most excited to see emerge in the 2020s.The universal flu shot, which has eluded scientists for decades, may be one truly groundbreaking medical advances that could show up in the next 10 years.\"It has sort of become a joke that a universal [flu] vaccine is perennially just five to 10 years away,\" said Dr. Amesh Adalja, an infectious-disease specialist and senior scholar at the Johns Hopkins Center for Health Security in Baltimore. But now, it appears that this \"may actually be true,\" Adalja told Live Science. \"Various approaches to universal flu vaccines are in advanced development, and promising results are starting to accrue.\"In theory, a universal flu vaccine would provide long-lasting protection against the flu, and would eliminate the need to get a flu shot each year.Some parts of the flu virus are constantly changing, while others remain mostly unchanged from year to year. All of the approaches to a universal flu vaccine target parts of the virus that are less variable.This year, the National Institute of Allergy and Infectious Diseases (NIAID) began its first-in-human trial of a universal flu vaccine. The immunization aims to induce an immune response against a less variable part of the flu virus known as the hemagglutinin (HA) \"stem.\" This Phase 1 study will look at the safety of the experimental vaccine, as well as participants immune responses to it. Researchers hope to report their initial results in early 2020.Another universal-vaccine candidate, made by the Israeli company BiondVax, is currently in Phase 3 trials, which is an advanced stage of research that looks at whether the vaccine really is effective — meaning that it protects against infection from any strain of flu. That vaccine candidate contains nine different proteins from various parts of the flu virus that vary little between flu strains, according to The Scientist. The study has already enrolled more than 12,000 people, and results are expected at the end of 2020, according to the company.In the last decade, scientists have successfully grown mini-brains, known as \"organoids,\" from human stem cells that differentiate into neurons and assemble into 3D structures. As of now, brain organoids can only be grown to resemble tiny pieces of a brain in early fetal development, according to Dr. Hongjun Song, a professor of neuroscience at the Perelman School of Medicine at the University of Pennsylvania. But that could change in the next 10 years.\"We could really model, not just cell type diversity, but the cellular architecture\" of the brain, Dr. Song said. Mature neurons arrange themselves in layers, columns and intricate circuits in the brain. Currently, organoids only contain immature cells that cannot forage these complex connections, but Dr. Song said that he expects the field may overcome this challenge in the coming decade. With miniature models of the brain in hand, scientists could help deduce how neurodevelopmental disorders unfold; how neurodegenerative diseases break down brain tissue; and how different peoples brains might react to different pharmacological treatments. Someday (though perhaps not in 10 years), scientists may even be able to grow \"functional units\" of neural tissue to replace damaged areas of the brain. \"What if you have a functional unit, pre-made, that you could click into the damaged brain?\" Song said. Right now, the work is highly theoretical, but \"I think in the next decade, we will know\" whether it could work, he added. ', 'advances.jpg', 'Active'),
(8, 'Blog', '2020-09-26', 'The future of personalized health is scientific wellness', 'Over the next 10-15 years there will be a scientific wellness industry in contrast to the disease industry and the market cap will far exceed that of the disease industry,” said Leroy Hood, Chief Science Officer at Providence St. Joseph. “The contrast between 20th and 21st Century medicine is striking, 21st is proactive, focused on the individual, disease and it employs personalized data clouds to explore the complexities of human beings.Precision medicine even more importantPrecision medicine, much like the future in cyberpunk author William Gibson’s oft-cited quote, is already here — it’s just not evenly distributed yet.“Today, we are already changing people’s lives through the use of genomic medicine,” said Nephi Walton, MD, Assistant Professor of Genomic Medicine at Geisinger Health Systems.That said, with some 6,000 known genetic diseases in existence, hospitals have to undertake some heavy tech lifting to manage so much information, Walton added.That is already happening. “We’ve made terrific strides in terms of understanding biology, how it affects human health, defines wellness, relates to disease,” said Murray Aitken, Executive Director of the IQVIA Institute for Human Data Science.The next phase is not about drugs, it’s about engaging patients, said Peter Bergethon, MD, Vice President of Quantitative Medicine and Clinical Trials at Biogen.“Whether AI or wearables, technologies exist and the availability is widescale,” said Derek Cothran, Senior Vice President of Client Strategy and Development at EnvoyHealth. “It’s about taking that more precisely to a patient. We want to take information to patients so they consume it in ways they already consume data.”Technologies exist and precision medicine practices are expanding beyond the poster child of oncology. Indeed, hospitals including Ascension Wisconsin, Thomas Jefferson University, and Gibbs Cancer Center are broadening the use of precision medicine.“We all realize the promise of precision medicine will far outstrip the field of oncology,” said Douglas Reding, MD, CMO of Ascension Wisconsin. “Look at precision medicine as a discipline, not disease-specific.”Gabriel Bien-Willner, the Molecular Director of Precision Medicine at Gibbs Cancer Center in Spartanburg, South Carolina, said the community hospital is working on cardiology, prenatal and pharmacogenomics, for instance. “We’re starting to look at precision medicine in terms of sleep and fatigue,” said Adam Dicker, MD, Chair of the Department of Radiology Oncology at Thomas Jefferson University. “We can’t do this at the population level. For the patients who are interested, we’re starting with them and we’ll slowly win over the rest.”Dicker’s point that such practices cannot be applied to all patients today is an interesting one — and the telling thought is that the whole trend may sprout beyond treating the patient immediately in front of a clinician.“One of the strongest applications of precision medicine might not be in treatment but in the prevention domain,” said Michael Dulin, MD, Director of the Academy for Population Health Innovation at the University of North Carolina Charlotte.  Indeed and that’s exactly where the emerging scientific wellness field will figure into the future of healthcare.Scientific wellness is only a matter of timeProvident St. Joseph’s Hood said that 21 Century healthcare will focus on improving wellness for the individual, creating medicine that is preventive, personalized and participatory, and reversing rising cost trends.“We think we can deal with Alzheimer’s really effectively in the next 3-5 years,” Hood added.Using Alzheimer’s as one example, Hood explained that data clouds about patients and computer-aided diagnostics will enable researchers and clinicians to pinpoint the earliest sign of cognitive decline, which can happen anywhere from 4 to ten years prior to today’s diagnoses. From there, scientists can divide Alzheimer’s into sub-types and use individuals with high genetic risk to track cognitive transitions. “The vision is in a period of 10 years to have a world virtually free of Alzheimers, it costs us half a trillion dollars a year and that gives you an idea of the savings that will come,” Hood said. “I’ll guarantee you that within a 10-year period genomes will be less than $100 a piece and you’ll be able to do a genome in less that 15 minutes.”Alzheimers is only one example. The scientific wellness approach could also work for other neurodegenerative diseases with minor modifications.Ultimately, scientific wellness will equip people with the data and tools to modify habits, be those diet, exercise, sleep or their genes to optimize personal health. “The way forward is there,” Biogen’s Bergethon said. “It’s time to act at least on the initial pieces.” The next HIMSS Precision Medicine Summit will take place at HIMSS19 in Orlando on Feb. 11, 2019', 'digital.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `questionsh`
--

CREATE TABLE `questionsh` (
  `eid` text NOT NULL,
  `qidh` int(4) NOT NULL,
  `qns` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questionsh`
--

INSERT INTO `questionsh` (`eid`, `qidh`, `qns`, `ans_id`) VALUES
('20', 1, 'How old are you?', 1),
('21', 2, 'Have you recently started experiencing any of these symptoms?', 1),
('22', 3, 'Do any of these apply to you?', 1),
('23', 4, 'In the last 14 days, have you traveled internationally?', 1),
('24', 5, 'In the last 14 days, what is your exposure to others who are known to have COVID‑19?', 1),
('25', 6, 'Do you live in a long-term care facility?', 1),
('26', 7, 'Do you work in a medical facility? This includes a hospital, emergency room, other medical setting, or long-term care facility. Select all that apply.', 1),
('27', 8, 'Which state are you in?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` int(12) NOT NULL,
  `dob` date NOT NULL,
  `score` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `user`, `pass`, `gender`, `email`, `phonenumber`, `dob`, `score`) VALUES
(1, 'akshat', 'achu', 'M', 'achinttya2019aa@vitstudent.ac.in', 123456789, '0000-00-00', 5),
(2, 'narendra modi', 'modi', 'M', 'narendramodi@gmail.com', 456123789, '0000-00-00', 0),
(3, 'rahul', 'rahul', 'M', 'rahul@gmail.com', 2147483647, '0000-00-00', 0),
(4, 'achintya', 'achu', 'M', 'achintya@gmail.cm', 789546123, '0000-00-00', 0),
(5, 'rocky bhai', 'rocky', 'M', 'rockybhai@gmail.com', 80613076, '0000-00-00', 0),
(6, 'akshat1234', 'akshat', 'M', 'akshatgpt1@gmail.com', 986547899, '0000-00-00', 0),
(7, 'akshatgupta', 'akshat', 'M', 'akshatgpt136@gmail.com', 789562330, '0000-00-00', 0),
(8, 'dsadas', '45', 'M', 'dsadas@das.com', 4564655, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `state` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state`, `description`, `status`) VALUES
(8, 1, 'Andhra Pradesh', 'Andhra Pradesh is a state bordering Indias southeastern coast. Tropical forests, rivers, hills and caves make it a popular ecotourism destination. Beaches line the Bay of Bengal, offering spots for swimming and surfing. Major cultural landmarks include ', 'Active'),
(9, 1, 'Arunachal Pradesh', ' it holds the most north-eastern position among the states in the north-east region of India.', 'Active'),
(10, 1, 'Assam', 'Assam is a state in Northeast India. Located south of the eastern Himalayas, Assam comprises the Brahmaputra Valley and the Barak Valley along with the Karbi Anglong and Dima Hasao districts with an area of 30,285 square miles. ', 'Active'),
(11, 1, 'Chhattisgarh', 'Chhattisgarh is a state in central India. It is the 10th largest state in India, with an area of 135,194 kmÂ². With a population of 25.5 million, Chhattisgarh is the 16th most-populated state of the nation.', 'Active'),
(12, 1, 'Goa', 'Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved', 'Active'),
(13, 1, 'Haryana', 'Haryana is a North Indian state surrounding New Delhi on 3 sides. The Yamuna River runs along its eastern border with Uttar Pradesh. Shared with Punjab, the state capital', 'Active'),
(14, 1, 'Himachal Pradesh', 'Himachal Pradesh, a northern Indian state in the Himalayas, is known for its trekking, climbing and skiing, and scenic mountain towns and resorts such as Dalhousie. Host to the Dalai Lama, Himachal Pradesh also has a strong Tibetan presence, reflected in its Buddhist temples and monasteries, cuisine heavy on noodles and dumplings, and vibrant Tibetan New Year celebrations.', 'Active'),
(15, 1, 'Jammu and Kashmir', 'Jammu and Kashmir is a state in northern India. It is located mostly in the Himalayan mountains, and shares a border with the states of Himachal Pradesh and Punjab to the south', 'Active'),
(16, 1, 'Jharkhand', 'Jharkhand is a state in eastern India carved out of the southern part of Bihar on 15 November 2000. The state shares its border with the states of Bihar to the north,', 'Active'),
(17, 1, 'Karnataka', 'Karnataka is a state in southwest India with Arabian Sea coastlines. The capital, Bengaluru (formerly Bangalore), is a high-tech hub known for its shopping and nightlife. To the southwest, Mysore is home to lavish temples including Mysore Palace, former seat of the regionâ€™?s maharajas. Hampi, once the medieval Vijayanagara empireâ€™?s capital, contains ruins ', 'Active'),
(18, 1, 'Kerala', 'Kerala, a state on Indias tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. Its known for its palm-lined beaches and its backwaters, a network of canals popular for cruises. Its many upscale seaside resorts include specialists in Ayurvedic treatments.', 'Active'),
(19, 1, 'Madhya Pradesh', 'Madhya Pradesh, a large state in central India, retains landmarks from eras throughout Indian history. Begun in the 10th century, its Hindu and Jain temples at Khajuraho are renowned for their carvings of erotic scenes, most prominently Kandariya Mahadeva, a temple with more than 800 sculptures', 'Active'),
(20, 1, 'Maharashtra', 'Maharashtra, a state spanning west-central India, is best known for its fast-paced capital, Mumbai (formerly Bombay). This sprawling metropolis is the seat of the Bollywood film industry. Itâ€™?s also famed for sites like the British Raj-era Gateway of India monument and the cave temples at nearby Elephanta Island. To the south is the rustic, beach-lined Konkan coast, and its temple town of Ganpatipule.', 'Active'),
(21, 1, 'Manipur', 'Manipur is a state in northeastern India, with the city of Imphal as its capital. Manipur is sometimes called alternative names such as Kangleipak or Sanaleibak', 'Active'),
(22, 1, 'Meghalaya', 'Meghalaya is a state in north-east India. The name means \"the abode of clouds\" in Sanskrit.', 'Active'),
(23, 1, 'Mizoram', 'Mizoram is one of the states of Northeast India, with Aizawl as its capital.', 'Active'),
(24, 1, 'Nagaland', 'Nagaland is a state in Northeast India. It borders the state of Assam to the west, Arunachal Pradesh and part of Assam to the north, Burma to the east and Manipur to the south. ', 'Active'),
(25, 1, 'Orissa', 'Odisha (formerly Orissa), an eastern Indian state on the Bay of Bengal, is known for its tribal cultures and its many ancient Hindu temples.', 'Active'),
(26, 1, 'Punjab', 'Punjab, a state bordering Pakistan, is the heart of Indiaâ€™?s Sikh community. Its city of Amritsar, founded in 1577 by Sikh guru Ram Das, is the site of Harmandir Sahib, the holiest gurdwara (Sikh temple). Pilgrims visit its gilded Hari Mandir sanctuary and bathe in the surrounding Pool of Nectar. Also in Amritsar is Durgiana Temple, a Hindu shrine with engraved silver doors.', 'Active'),
(27, 1, '	Rajasthan', 'Rajasthan is a northern Indian state bordering Pakistan. Its palaces and forts are reminders of the many kingdoms that historically vied for the region. In its capital, Jaipur, are the 18th-century City Palace and Hawa Mahal, a former cloister for royal women, fronted by a 5-story sandstone screen. Amer Fort, atop a nearby hill, was built by a Rajput prince in the 1600s.', 'Active'),
(28, 1, 'Sikkim', 'Sikkim is a small state in northwest India, bordered by Bhutan, Tibet and Nepal. Part of the Himalayas, the area has a dramatic landscape including Indiaâ€™?s highest mountain, 8,586m Kanchenjunga. Sikkim is also home to glaciers, alpine meadows and thousands of varieties of wildflowers. Steep paths lead to hilltop Buddhist monasteries such as Pemayangtse, which dates to the early 1700s.', 'Active'),
(29, 1, 'Tamil Nadu', 'Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. ', 'Active'),
(30, 1, 'Telangana', 'Telangana is a state in South India and one of the 29 states in India. It was formed on 2 June 2014 with the city of Hyderabad as its capital.', 'Active'),
(31, 1, '	Tripura', ' is a state in Northeast India. The third-smallest state in the country, it covers 10,491 kmÂ² and is bordered by Bangladesh to the north, south, and west, and the Indian states of Assam and Mizoram to the east', 'Active'),
(32, 1, 'Uttar Pradesh', 'Uttar Pradesh is a state in northern India. Its city of Agra is home to the iconic Taj Mahal monument, a colossal, domed, white-marble mausoleum honoring the wife of Mughal ruler Shah Jahan. Named Mumtaz Mahal, she died in childbirth in 1631. Nearby are the 20m-high, red-brick walls of Agra Fort, a Mughal fortress and palace dating to the 16th and 17th centuries.', 'Active'),
(33, 1, 'Uttarakhand', 'Uttarakhand, a state in northern India crossed by the Himalayas, is known for its Hindu pilgrimage sites', 'Active'),
(34, 1, 'West Bengal', 'West Bengal is a state in eastern India, between the Himalayas and the Bay of Bengal. Its capital, Kolkata retains architectural and cultural remnants of its past as an East India Company trading post and the capital of the British Raj.', 'Active'),
(35, 1, 'Bihar', 'Bihar is a state in East India bordering Nepal. It is divided by the River Ganges, which floods its fertile plains', 'Active'),
(36, 1, 'Gujarat', 'Gujarat Indias westernmost state, has varied terrain and numerous sacred sites.', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
