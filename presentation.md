# How Continuous Integration and Delivery can accelerate your product

Alex Kessinger, Software Architect @ bepress

<div class='notes'>
Hi, my name is Alex Kessinger. I am a software architect at bepress. Today I want talk about how bepress uses continuous integration and delivery to speed up product development and how you can do the same.
</div>

---

![bepress](/images/bepress.png)

<div class='notes'>
bepress is located in Berkeley, California. The company employees around 75 people, but the dev team is a small portion of that. Most are pictured here. I'm on the TV screen because myself and a couple others work remoteley.

bepress has two main products the Expert Gallery Suite and Digital Commons.

Digital Commons is an IR and The Expert Gallery Suite helps you showcase your peoples expertise.
</div>

---

# Defenitions and Goals

- Continuous Integration
- Continuous Delivery
- The Goal

<div class="notes">
Let's start with some defenitions. Even if you already know when these means, I think it's helpful to be on the same page before we start.
</div>

---

# Continuous Integration

> Continuous Integration (CI) is a development practice that requires developers to integrate code into a shared repository several times a day. Each check-in is then verified by an automated build, allowing teams to detect problems early. <br> - [Continuous Integration: Improving Software Quality and Reducing Risk](https://www.amazon.com/gp/product/0321336380)

<div class="notes">
- read slide
</div>
---

# Continuous Delivery

> Continuous Delivery (CD) is the ability to get changes of all types—including new features, configuration changes, bug fixes and experiments—into production, or into the hands of users, safely and quickly in a sustainable way. <br> - [Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation](https://www.amazon.com/dp/0321601912)

<div class="notes">
- read slide
</div>

---

# The Goal

Whatever kind of organization you are with, whether it is commerical, non-profit, private, or public, it has goals. Continuous integration and delivery helps align your development team with the goals of the organization.

<div class="notes">
What is the goal of CI and CD
</div>

---

# My CI Background

- Yahoo: 6 distinct teams/projects
- Mixed Media Labs: 4 pivots
- All Day

<div class="notes">
About 2 and a half years ago I joined bepress to work on the rerwite of SelectedWorks.

Since I joined we have taken steps to implment continuous integration and delivery for SelectedWorks. Before I joined there were bits and pieces of CI and CD, but they weren't tied together into a continuous process.

The biggest reason I wanted to implment CI and CD at bepress, was largely based on my experiences at these 3 companies.

So, to explain how we developed our process at bepress I think it helps to understand how I came to understand it at other companies.
</div>

---

# Yahoo

- No continuous process
- Hard to understand the vision
- Hard to see my impact


<div class="notes">
Yahoo, was my first real job. I worked with some great people and I had some great managers. While Yahoo gave me a foothold.

Unfortunatley, the most important thing I learned from Yahoo was how not to do things.

At Yahoo, I never undrestood the vision of the company or the teams I worked on, and I never saw how my impact contributed to the bottom line.

Because I was committing code, and then not seeing it rollout for weeks it was difficult for me to fix bugs in my work.
</div>

---

# Side Projects

- 5-6 fully baked projects
- Learned how to automate deployments
- Code not shipped is value lost

<div class="notes">
While I worked at Yahoo though, I had a number of side projects.

I didn't have lot of time to work on them. Often, I would spend a couple hours building a new feature. Then forget how to deploy the website.

Usually that meant that I wouldn't deploy the site. So, the feature I had just built, would sit on my computer. Which didn't creat value for anyone. It wasn't helping me, or the user, and it was increasing the risk that I would break something when I eventually got around to rolling out the website.

So, there are 2 major take aways for me during this time.

I started to automate deployments. As soon as a feature was done I ran one script and the website was deployed.

The other takeaway was that I got better feedback if I released early. This allowed me to spend more time on features that made the sites grow. The longer I let features sit on my computer, the less valuable they were.
</div>

---

# Mixed Media Labs

- Started with bits and pieces of CI
- Wasn't continuous
- Which slowed down value delivery
- We improved the process

<div class="notes">
After Yahoo, I worked at Mixed Media labs. It was the opposite of Yahoo. It was small and young, the company was less then 6 months old when I joined.

It wasn't perfect either.

In the begining we had automatted deployments, but I had to ask someone to deploy my code.

Usually that person was busy and wouldn't deploy things right away. This caused a number of issues.

We realized that this wasn't the most efficent process, and it slowed down our ability to deliver value to our users. We decided to improve the process.
</div>

---

# MML: Flow Improvements

- Focused on user value
- Introduced code review
- Lint and tests must pass
- Self service deploys
- Small diffs

<div class="notes">
But, because the company was focused on building value for users, shipping code to users quickly was a priority.

In a short amount of time we changed the flow to make it more continuous.
</div>

---

# MML: Flow Improvements

![bepress](/images/adn_code_review.JPG)

<div class="notes">
First, we created a code review step, with a tool called Gerrit.

The first review was automated. A CI server would run all the tests and lint checks. If those failed, you knew to fix those before asking a human to do a code review.

Once lint, and tests had passed you would ask a co-worker to checkout out your code.

Once the code was reviewed, it was automatically deployed to an integration server. And, then it was our job as developers to do what we needed to have confidence in our changes and then ship to production.

Lastly, partly because we knew we could ship code to production at anytime, and partly because it was a convention, we shipped code in smaller chunks, like less then 300 lines. This improved code review quality, and it reduced the risk that we were going to break something.

All these changes gave us an immense capacity for developing features, and that directly contributed to the bottom line.
</div>

---

# App.net

- Last project at Mixed Media Labs
- We launched it like a kickstarter
- Set bar at 10,000 users commiting $50
- 30 Day window

<div class="notes">
No where did our process demonstrate the most buisness value as it did on the last project mixed media labs built. That project was App.net. A paid social network platform.

Building it was a risky proposition, so we wanted to gauge user interest before we built the whole thing.

We ended up building a Kickstarter-like site, and If 10,000 users would commit $50 within 30 days. We would launch the service.
</div>

---

# We Made It

- Started building immediately
- Reached alpha after 2 weeks
- Hit goal and raised around $750k

<div class="notes">
We made it, and one of the many reasons for that was our continuous process.

We started building the product as soon as we announced the project. We shipped small amounts of code constantly.

After two weeks we started letting some users in to kick the tires. By the end of the initial fundraising we had raised almost 750k, and we became generally avaiable soon afterwards.

Letting users in, help propel signups, because people coudl see that it wasn't vaporware.

</div>
---

# App.net: Just ship!

Having a continuous, ship early, ship often organization directly contributed to the bottomline by delivering value to users just in time.

<div class="notes">
The biggest take away from app.net was...
</div>

---

# All Day: Photo Essays

![AllDay](/images/allday.png)

<div class="notes">
The plan for All Day was to create a site of Photo Essays. I joined All Day near the begining as the VP of Engineering.
</div>

---

# All Day: What I knew

- 3 audiences: readers, publishers, and editors
- Distinct product for each audience
- Expected a large number of readers
- No existing infrastructure
- 1 engineer (me)

<div class="notes">
The core value propositon of All Day was something that I had been preparing for for a number of years. I shared a vision with the founders, and had a strong vison for how to build all the tools that were were goign to need.

It was still a tall order, though.

... Go over the bullit points.
</div>

---

# All Day: Order of Operations

- Step 1: Install Jenkins
- Step 2: Setup CI
- Step 3: Setup CD
- Step 4: Build applications

<div class="notes">
Given the buisness requirements and my experiences with CI, I knew the order of operations.

I wanted the infrstructure required to ship code to production first, and then I would start building the application.
</div>

---

# All Day: Success

- We launched in 3 months
- 3 distinct interfaces
- At peak we had 300 RPS

<div class="notes">
And, it worked out, mainly because of the continuous process.

We launched in less then 3 months to an audience of almost 100,000 unique visitors a day, and at peak times we did almost 300 requests per second.

In those 3 months I was joined by 2 other engineers. Who became productive almost immediatly. They setup their dev box, I showed them how to run tests, and how to ship to production and that was it. They could contribute code on their first day.
</div>

---

# Back to bepress

- 16 year history
- 500+ happy customers
- Wanted to speed up feature developement

<div class="notes">
Now, back to bepress. bepress is about 16 years old, and they have had a SaaS buisness the whole time.

They have 500+ happy customers, and in 2013 they decided to rewrite SelectedWorks to try and speed up feature development.

As I said, I joined bepress late in the SelectedWork rewrite.
</div>

---

# SelectedWorks: Small Issues

- Tests, but no CI
- Deployments, but no CD
- Project was behind schedule
- Overbudget

<div class='notes'>
No project is perfect, and SelectedWorks was no different, but there were some small problems that were preventing us from moving quickly. And, they all sounded a little familiar.

Tests didn't run on commit. There were no regular deployments, The project was overbudget and over schedule.

We had many of the pieces of a continuous process, but we hadn't connected them together.
</div>

---

# What We Did

- Hypothesize about a problem
- Propose an experiement
- Run experiment, and ask did it help?

<div class="notes">
The short answer is the we adopted continuous integration and delivery, but the longer answer is more nuanced.

As we articulated a given problem, we would fix it.
</div>

---

# Fast Feedback

- 3 developers
- Tests ran, sometimes
- We needed a traffic cop
- Soluton: **Code Review && Pre-commit step**

<div class="notes">
One issue we ran into often was users commiting code that would break the tests, and they wouldn't know that. Then a number of checkins would happen and no one would know who broke the tests. So, we introduced a pre-commit phase in our code flow.

It was an early experiement that created a lot of value for us because it created a fast feedback cycle.
</div>

---

# Fast Feedback

![bepress](/images/bepress_code_review.JPG)

<div class="notes">
For us this mean't that all code destined for the master branch was sent as a Github Pull Request. Anytime a PR is created we would have Jenkins lint all the code, and run all the unit tests.

Then a user would request a code review.

When the reviewer was done, the code would be committed to the master branch.

This prevented us from unknowingly breaking the tests. It also reducded the burden on the code reviewer because they could focus on the substance of the code instead of looking for style violations.
</div>

---

# Easy Deployments

- Staging was out of sync
- Developers demoed off dev box
- Feedback was hard to give
- Solution: **automatic deployments to staging**

<div class="notes">
Another problem we ran into is the lack of deployments. Because SelectedWorks was a re-write, and we didn't really have an audience, deployments to a staging server were rare.

Developers would often just walk their laptop over our product manager and demo the code.

As, we approached the release date, we wanted to have a more production like release flow. So, we automatted deployments, and we made them automattic in some cases.
</div>

---

# Easy Deployments

![East Deployments](/images/bepress_code_review.JPG)

<div class="notes">
Anytime code was committed to master, we would automatically deploy to staging.

This allowed our internal stakeholders to really use the features we were building, and deliver high quality feedback.
</div>

---

# SelectedWorks: Launch

![New Selected Works](/images/selected_works_new.png)

<div class='notes'>
In Janauary of 2016 we shipped SelectedWorks: Next Generation, it wasn't an easy release, but we did it.

And, customers were happy.

But, we had issues.

After all, this release capped off a 3-year rewrite from the ground up, issues were to be expected.
</div>

---

# Tooling to the rescue

- Shipped code 3 to 10 times a day
- Things got better rapidly
- But, should we keep shipping?


<div class="notes">
But, our tooling came to our rescue. As quickly as we uncovered issues we were able to push the fix into production.

We were often pushing code upto 10 times a day. In a given week we might have pushed code to production 100 times, but our product team started asking us a question.
</div>

---

# Why Continuous?

- Seemingly no control of feature release
- Percieved lack of "QA"
- How will users feel about changes?
- Keeping users informed about product updates

<div class="notes">
They wanted to know why we had to keep shipping. Even after we had squashed all the bugs, they wanted to know why we couldn't just go back to periodic releases instead of continuous.

And, from their perspective I think this made sense.

They wanted to have control over the release of features. They wanted to ensure the quality of our products. They were also worried about how they would keep users up to date if we were releasing so often.

So, I asked another question?
</div>

---

# Why (Not) Continuous?

- The goal is to deliver value to users
- Risk prevents us from delivering value to users
- The only certain thing is uncertainty
- Least risky strategy: ship small bits continuously


<div class='notes'>
If our goal is to deliver value to our users, then any feature that we have built, but have not released isn't returning on our investment in the feature.

Furthermore, if we save a bunch of code to be deployed at once, their is a bigger risk that any given deploy will fail.

We realized that if you take a step back and look at all the risks. Then it was clear, releasing code continuously was the least risky thing you could do.

We begain the look at each issue our product team had, and design a soluton that worked for them, and for us.
</div>

---

# The Quality Issue

- Move quality to the front
- Small diffs
- QA in depth

<div class="notes">
The first issue we had to look at was, how do we ensure the quality of our sotware in a continuous process. The first question that came up was, why not have everything checked by a human QA engineer before releasing.

For us having humans do QA is a required tool, but it's not the only tool. If your engineering team has a high degree of confidence that something is unit-testable, then do you need a human to QA each release? This is different for every organization, but for us the answer was no.

We needed a way to make that decsion before we started on the work, and not after.

We started doing this when we wrote the ticket. We moved a lot of work to a point before the engineer wrote any code. And, it made things better.

So, instead of deciding on how to QA something after the feature was written, we would decide the QA process when we wrote the ticket. We've started moving other things to the front of the line as well. In order to explain how to QA something, you need to understand how the feature will work. We would sometimes discover that our features weren't fully speced.

And, it's had this knock on effect of having QA in depth.

We have a range of strategies for Quality assurance from developers testing, to having a full suite of tests executed by a human QA engineer, but we decide upfront what our process will be.

Even moving things like planning user updates, and writing docs up front could have an effect on quality because it made sure everyone was on the same page.
</div>
---

# The Feature Release Issue

- Seperated code deployment and feature deployment
- Allowed us to ship trunk

```
if (feature_flag_enabled('new-feature')) {
  …Do new thing…
} else {
  …Do existing thing…
}
```

<div class="notes">
The next thing we tackled was feature release. The way that we did this was we seperate our code deployment process from our feature deployment process.

This allows the engineers to continuously deploy code to production, but the buisness get's to decide when to release a feature.

This also helps us in QA. We can ship all the code for a big feature to production. Then flip it on just for QA, in production sometimes. Where they can test it on real data in the same environment as our user. When everyone is happy, the feature release is just the flip of a switch.
</div>

---

# Moving Forward

- Generally happy with CI/CD
- Feature development time reduced from months to weeks
- Bug fixes reduced from weeks to hours
- Working on expanding CI/CD to other apps

<div class="notes">
In general, CI and CD have helped us speed up feature development, and bug fixes.

We are still experimenting with ways to make it better, but I am sure that we will continue doing that forever.
</div>

---

# Doing CI/CD For 16 year old app

- CI/CD for Digital Commons
- Was doing quartlery deploys
- Vision first process
- Continuouly suprised by the solutuon

<div class="notes">
Recently we decied to do CI, and CD with our oldest application called Digital Commons.

Digital Commons is a 16 year old application that was not built to be deployed continuously.

It was deployed quarterly and it could take hours to deploy. On more then one occasion deploys had to be scrapped because an error was found during the deployment process.

Unlike the SelectedWorks rewrite, which was a greenfield project, Digitial Commons had a number of issues that we had to consider before we could do continuous deployment.

But instead of digging into the technical issues first.

We started with a vision for what we wanted. On-demand deploys. Our release engineer should be able to roll code to any enviornment as needed.

Then we came up with a plan for how to get their.

Which we promptly rewrote againg, and again, and again...

If we had just put together a list of technical requirments and blindly followed that list. At the end of the list we would have realized that we weren't anywhere near done.
</div>

---

# Have a system, not a solution

- Treat it like an experiment
- Hypothesize
- Try an experiemnt
- Evaluate

<div class="notes">
We would start with a problem, and then propose a solution. Invariable we would need to come back and try another solution.

For Example. Digital Commons has a number of offline jobs that happen. Some of those jobs could take up to day or more to complete. So, if we wanted to deploy on-demand, how were we going to gracefulyl stop and start jobs.

We started with the idea of re-writing everything to happen in smaller chunks, but that would take a really long time. So, we asked the question, can we just kill them and restart from the begining?

The answer was yes for all the jobs except 1. So, we wrote our deployment process to just not force that one job to restart, and our release engineer will eyeball that one, and kill it when it finishes.

This isn't our stopping point though. What we knew is that releasing continuously, makes it easier to fix everything else, so we accepted some tech debt in order to achieve a better process.

And, it worked. We can now deploy to any environment with the push of a button.
</div>

---

# Credit

- Continuous Integration
- Continuous Delivery
- The Phoneix Project
- Countless blog posts, youtube videos, and conversations.
- There is so much out there, just start reading.

<div class='notes'>
Before I finish, I want to credit some sources that inform this presentation, these are just a few.

The ideas come from a long lineage of researchers and practitioners reaching all the way back to the early 1900s.

Principally, I think these 3 books have had the most influence on me, but it's a synthesis of experimentation, reading, and listening.
</div>

---

# Continuous: All The Things

![Continuous All The Things](/images/1ltl84.jpg)

Contact Me: akessinger@bepress.com

<div class='notes'>
In closing I'd like to re iterate. The ideas are simple. If you can understand the core principals at work here you can design a continuous proceeds that is right for your project.

Embrace the risk, and reserve time to experiment with ways to reduce it.
</div>
