# How Continuous Integration and Delivery can accelerate your product

Alex Kessinger, Software Architect @ bepress

<div class='notes'>
Hi, My name is Alex Kessinger. I am a software architect at bepress. Today, I want talk about how bepress uses continuous integration and delivery to speed up product development, and how you can do the same.
</div>

---

![bepress](/images/bepress.png)

<div class='notes'>
bepress is located in Berkeley, California. The company employees about 100 people, but the dev team is a small portion of that. Most are pictured here. I'm on the TV screen becuase myself and a couple others work remoteley.

Bepress has two main products. SelectedWorks, and Digital Commons.

Digital Commons is a hosted instituion repository.
Selected Works is like a hosted linkedin for the academic commuity at an insitution.
</div>

---

# Defenitions

- Continuous Integration
- Continuous Delivery

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

# Yahoo circa 2006-2008

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

First, we created a code review step, with a tool called Gerrit.

The first review was automated. A CI server would run all the tests and lint checks. If those failed, you knew to fix those before asking a human to do a code review.

Once lint, and tests had passed you would ask a co-worker to checkout out your code.

Once the code was reviewed, it was automatically deployed to a staging server. And, then it was our job as developers to do what we needed to have confidence in our changes and then ship to production.

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

- 3 audiences: readers, publishers and editors
- Distinct product for each audience
- Expected a large number of readers
- 0 existing infrastructure
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
- With 3 distinct interfaces
- At peak we did 300 RPS

<div class="notes">
And, it worked out, mainly because of the continuous process.

We launched in less then 3 months to and audience of almost 100,000 unique visitors a day, and at peak times we did almost 300 requests per second.

In those 3 months I was joined by 2 other engineers. Who became productive almost immediatly. They setup their dev box, I showed them how to run tests, and how to ship to production and that was it. They could contribute code on their first day.
</div>

---

# Back to bepress

- 16 year history
- Lot's of happy customers
- Wanted to speed up feature developement

<div class="notes">
Now, back to bepress. bepress is about 16 years old, and they have had a SaaS buisness the whole time.

They have many happy customers, and in 2013 they decided to rewrite SelectedWorks to try and speed up feature development.

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
- Run experiment, and ask if it helped

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

Anytime code was committed to master, we would automatically deploy to staging.

This allowed our internal stakeholders to really use the features we were building, and deliver high quality feedback.
</div>

---

# SelectedWorks: Next Generation

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
- How will users feel about changes
- Keeping users informed about product updates

<div class="notes">
They wanted to know why we had to keep shipping. Even after we had squashed all the bugs, they wanted to know why we couldn't just go back to periodic releases instead of continuous.

And, from their perspective I think this made sense.

They wanted to have control over the release of features. They wanted to ensure the quality of our products. They were also worried about how they would keep users up to date if we were releasing so often.

So, I asked another question?
</div>

---

# Why (Not) Continuous?

- The goal is to deliver value to users.
- Risk prevents us from delivering value to users.
- The only certain thing is uncertainty
- Least risky strategy ship small bits continuously


<div class='notes'>
If our goal is to deliver value to our users, then any feature that we have built, but have not released isn't returning on our investment in the feature.

Furthermore, if we save a bunch of code to be deployed at once, their is a bigger risk that any given deploy will fail.

We realized that if you take a step back and look at all the risks. Then it was clear, releasing code continuously was the least risky thing you could do.

We begain the look at each issue our product team had, and design a soluton that worked for them, and for us.
</div>

---

# The Quality Issue

- Move quality to the front
- Small Diffs
- QA in depth

<div class="notes">
The first issue we had to look at was, how do we ensure the quality of our sotware in a continuous process. The first question that came up was, why not have everything checked by a human QA engineer before releasing.

To be clear, having humans do QA is a great thing, but if your engineering team has a high degree of confidence that something is unit-testable, then do you need a human to QA each release? This is different for every organization, but for us the answer was no.

We needed a way to make that decsion before we started on the work, and not after.

We realized that as we planned out the feature, at the ticket writing stage, we could move a lot of work to a point before the engineer wrote any code. And, it made things better.

So, instead of deciding on how to QA something after the feature was written, we would decide the QA process when we wrote the ticket. We've started moving other things to the front of the line as well. And, it's had this knock on effect of having QA in depth.

We have a range of strategies for Quality assurance from developers testing, to having a full suite of tests executed by a human QA engineer, but we decide upfront what our process will be.

Even moving things like planning user updates, and writing docs up front could have an effect on quality because it made sure everyone was on the same page.
</div>
---

# The Feature Release Issue

- Seperated code deployment, and feature deployment
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
- Feature development time from months to weeks
- Bug fix from weeks to hours
- Working on expanding CI/CD to other apps

<div class="notes">
bepress is generally happy with CI, and CD. We are still experimenting with ways to make it better, but I am sure that will continue forever.

In general, CI and CD have helped us speed up feature development, and bug fixes.

We think that it's helpfull enought, that we are in the process of trying to do CI, and CD with our oldest application called Digital Commons. We just recently started doing weekly released instead of quarterly releases, and things are working out well so far.
</div>

---

# Doing CI/CD For 16 year old app

- Recently did CI/CD for Digital Commons
- Was doing quartlery deploys
- Vision first process
- Continuouly suprised by the solutuon

<div class="notes">
We recently completed a project to bring continuous integraiton, and delivery to Digital Commons. Digital Commons is a 16 year old application that was not built to be deployed continuously.

It was deployed quarterly and it could take hours to deploy. On more then one occasion deploys had to be scrapped because an error was found during the deployment process.

Started with a vision for what we wanted. On-demand deploys. Our release engineer shoudl be able to roll code to any enviornment as needed.

Then we came up with a plan for how to get their. Which we promptly rewrote againg, and again.

As we engaged with the problem, we would plan out a solution, only to retreat and try something else.
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

![Continuous All the things](https://i.imgflip.com/1ltl84.jpg)

<div class='notes'>
In closing I'd like to re iterate. The ideas are simple. If you can understand the core principals at work here you can design a continuous proceeds that is right for your project.

Remember, understand the process for taking and idea to production, understand the barriers and the blockers, work to bring down that cycle time.

Work to introduce tight feedback loops to the process is less time is wasted.

Finally, embrace the risk, and reserve time to experiment wi h ways to reduce risk.
</div>

---

# The Composition of Value

- New features
- Preservation of existing features
- Availability
- Usablability

<div class='notes'>
The value that each organization deliveries to it's users will be different, but there are some commonalities.

These are some of, but not all of the things your organization does to create value for your users.

Given that our goal is the delivery of value. I am sure that…
</div>

---

# Risky Buisness

- Every new feature is a success
- We never break old features
- we have 100% availability
- our software is 100% usable

<div class='notes'>
you would use these statments to describe your company, right?

…

Of course not, no one can deliver on these statements.
</div>

---

# Destruction Of Value

* Not solving the customers needs
* Market changes to quickly
* Software Bugs
* Capacity and Performance issues

<div class='notes'>
You just won't be succesfull 100% of the time.

Risk prevents us from achieving the goal of value delivery.

Also, risk takes a number of forms.

Are we fulfilling our customers needs?
Are we regularly delivering new features?

It's not just a matter of missing users needs. There is investment at stake.

Your organization doesn't have an infinite well spring of money. When they invest that money in your team, they want as much of that investment to convert to value as possible. But, no one has 100% success rate.

Besides, the risk of feature development, and loosing investment. There's tons of other kinds of risk.

What about the risk of deploying new software. Everytime you deploy code, there is a risk that it will break. There is risk that you will break existing features.

If users can't use your software, they can't derive any value from it.

What about more existential risk?

Are you fixing the right problems for your users? Industries change over time. Your organization risks not keeping up with the industry.

I posit that, risk is the fundamental force that prevents you from delivering value to your users.
</div>

---

# The only certain thing is uncertainty

- New features are risky
- New features can break old features
- Are we solving the right problem?
- Are we changing fast enough?

<div class="notes">

The only certain thing is uncertainty.

We are faced everyday with the risk that what we are working on won't work.

We still have to create value, though.

Not everyone is going to combat risk the same way, but I think there is a model that many organizations can use, and it's been around for 100s of years.
</div>

---

# A Model for Mitigating Risk

An example: Feature Delivery

<div class='notes'>
Let's take a common task in most development enviornment the delivery of a feature.

Let's say we want our feature to be a success, and we don't want to risk failure. We are going to do everything we can possible do to ensure success.

We will:

- Do lots of research
- Plan every detail
- Do lots of great design work
- Write lots of tests
- And, many more quality generating things

What could go wrong, right?

Well, what if we deploy this feature, announce world, and then no one uses it?

That's a risk that no amount of unit tests will fix, or design for the matter.

We need a way to know earlier in the process if our users will use the feature.

Couldn't we:

- start by talking to our users?
- show our users mock ups?
- Designate a block of users as beta testers?
- Ship an MVP to our beta testers?

All of these methods, are like little experiments. We are testing the hypothesis that our new feature will be a success.

After each experiement, we will:
- know a little more.
- We will have an oportunity to adjust
- but, also, we could scrap the feature

At each point:
- We are risking a fraction of the total cost of development
- We are increase our chance of success because of feedback
- We are decreasing the risk that our feature will be a failure

Even if this feature didn't work out we protect our abilit to deliver value to users, by freeing up room for other features that will work.

Basically, I am describing the scientific method.
</div>

---

# Risk meet Science

Hypothesis + Experiment = Learning

<div class="notes">

It's just science, it's been around for 100s of years. I know it sounds so antiquated, but this is the basic method.

You propose a hypothesis then you design an experiment to test the hypothesis, and then you evaluate your findings.

With each experiment we are de-risking our value hypothesis.

It worked for Robert Hook and it will work for you.

</div>

---

# Sounds, right

**Warning, meta thoughts ahead**

<div class='notes'>
I think this sounds, right. And, that is important because it's important to not drink the koolaid to early. Just as I think experimentation can de-risk our value hypothesis. I think experimenting with experiments can help an organization adopt this method.

You should validate these ideas your self. But, you aren't alone. Many organizations are beginging ot adopt CI, and CD.

There is report from Puppet, called the state of devops. The data from that survey is being used in peer-reviewed papers.

And, we are starting to see verifiable results from these methods, but I want to go back to the idea that if this sounds right to you, try it out. You don't have to switch everything. You can start small.
</div>

---

# Product Organization as Science Lab

"We don't optimize for being right, we optimize for knowing when we are wrong" - McKellen, VP of Etsy

<div class='notes'>
This is a great quote that really demonstrates the paradigm shift that I am talking about.

Etsy is an example of a company that has embraced these ideas down to the core.

You can almost think of company like Etsy, as a science lab. Where they are constantly running experiments to figure out the best features and the best architecture to support the features.
</div>

---

# How do we run an experiment

- Each org will be different
- The most value will be derived from production
- Focusing on the descrese of cycle time is a good focus

<div class='notes'>
When it comes to how you run an experiment, every organization will figure out their on way. But, their are a patterns that we can pick and choose from.

For instance, if you were writing a Heart Monitor, or the guidance system for a boeing Jet. I'm not sure I would recommend a continuous delivery method.

None of use are. So, let's experiement.

I think the best place to experiment is in production. That's where real data, and real users are, so to get valid results, we probably need to get results from production.

This means that you can only experiment as fast as you can ship. If your organization only does that once a month, or once a week. That is how long it takes you to experiment.
</div>

---

# Turning your product organization into a science lab


* Focus on decreasing end-to-end cycle time
* Create fast-feedback loops
* Continual Improvment

<div class='notes'>
If we want to increase the amount value we are delivering to users, while protecting the value they already have. You might want to turn your organizaiton into a science lab.

That requires 3 main things, that I will first mention, and then we are going to break it down.

As, I've said, the only place you can really get valid results is in production, so we need to foces on bringing down our end-to-end cycle time.

Things like automated deployments, trunk based devlopment, feature flags will help.

Next, we want to buid in fast-feedback. This prevents us from shiping broken, or poor qualty features, and it helps build organizational trust in our pipeline. Things like unit tests, code reviews, and static analysis can help.

Finally, we should try and build a culture of continuous improvment. So, that we spend time getting better at getting better. Things like Agile, hack days and tracking tech debt can help with that.

</div>

---

# Checking In

- We all want to deliver value to our users
- Risk prevents us from delivering that value
- Using experimentation we can mitigate that risk
- By focusing on:
  - end to end delivery
  - fast feedback cycles
  - continuous improvement
- We can increase the rate of experimentation, and thus decrease risk.

<div class="notes">
I know that I have thrown a lot at you in a short amount of time, but I want to checkin on my the core thesis of this talk.
</div>
---

# Finally: CI and CD to the Rescue

- CD: Helps decrease end to end cycle time
- CI: Helps create fast feedback cycles
- DevOps/Agile: Helps create a culture of continuous improvement.


<div class='notes'>
The principals of CI, CD and DevOps are the ideas of cycle-time, fast feed back, and contnuous improvement made manifest.

I intentional spent a lot of time breaking down the principals first, because I can only show so much in one talk. But, if these core principals reasonate with you, you can start experimenting in whatever way you think is best for your organization.

If you are anything like me, you want to know what others are doing.
</div>

---

# Techniques

- Static Analysis
- Fast Unittests
- Small Diffs
- Code Review
- Automated Deployments
- Gracefull Restarts
- Feature Flags
- Do agile/lean/scrum/something…
- Product Validation
- Value Stream mapping
- Humane postmortem
- Reserve time for improvement

<div class='notes'>
Now, I want to run through some techniques that you can use to implement a continuous improvment flow for your organization.
</div>

---

# Static Analysis

- Finds simple errors
- Integrates into many editors
- Let's human's focus on important things

<div class='notes'>
If you are looking for somewhere to start but feel stuck. Try implementing static analysis. This is also refered to as linting.

Static analysis allows your organization to choose a code style, and then automated the process of checking compliance. Instead of humans picking through code finding style issues, let the computer do that.

Also, If you have an existing code base, you can do this slowly. First, create a whitelist. Then only apply style checks to the files in the whitelist. Then as you can clean files put them into the white list. You can prevent regression, while not having to clean the whole code base at onec.e
</div>

---

# Fast unittests

- 10 minutes max (should be a lot faster)
- Should be run on every merge to master
- If possible, run before merge via something like a PR

<div class='notes'>
Many people have "unittests", but they aren't fast, and they might even be a nusance to many people.

Making sure that your unit tests are fast are a great way to provide fast feedback. If a developer knows that tests finish in less then 5 minutes. They'll go get a cup of coffee instead of switching to another task.

If you're tests are fast enough run them in a pre-commit phase. With something like a github PR. This way only code that make's it to master is passing tests. Which means you should always have a green build.
</div>

---


# Code Review

- At worst it's peer presure
- At best it's a learning experience.

<div class='notes'>
Sometimes we need a little push to add an extra test. Sometimes it can help to know we have an audience.

Code review can be implmented without significnt changes to your workflow. If you are looking for somewhere to start, this is a great step.
</div>

---

# Automated Deployments

- 1 button, or command line
- Make them normal, non-fear enducing events

<div class='notes'>
A good rule of thumb here is: If you are doing anything more then clicking a button, or running one command to deploy code to production then you aren't doing automated deployments.

The goal here is to take something that is an event, and turn it into a non-event.
</div>

---

# Gracefull Restarts

- Deployments should not disrupt any user behavior
- This takes some thinking
- Lot's of tooling available for all conrner cases

<div class='notes'>
Now that you can deploy anytime you want, you want to make sure that when you deploy you don't disrupt the users experience.

Your users are probably interacting with your website, which means they have an open connection to your app. If you just restart the app you will break that connection, and your users will see that.

You'll need to find a way to keep connections open, and seamlessly flow from one version to the next. Whatever language, or stack you are using their is a way to do gracefull restarts.
</div>



# Do agile/lean/scrum/something…

- Visualize work in progress
- Helps with reflection

<div class='notes'>
Many of the practices I have talked about relate to how you can continuously improve a website, or a prouct. Something like Agile allows you to use the same techniques to continuously improve a team of people.
</div>

---

# Product Validation

- Ask what success looks like
- Ship small diffs to production
- Show early prototypes to real users using feature flags
- Stop, or change if success isn't happening

<div class='notes'>
Instead of planning, building, shipping, and announcing an entire feature. Identify some early adopters. Push the most simple version to production and turn it on just for them.

This will help you to identify blockers you couldn't think of, change course if you are off the mark, and ultimatley, it will help your organization not waste time and investment.

If you can prevent a company with 10 developers being paid roughly dollars a month from spending an extra 3 months on a project that isn't going to work out you are save the company a lot of money. Money that could be better spent on features that will work.
</div>

---

# Value Stream mapping

- Know the steps from idea to production
- Evaluate the value derrived form each step
- Remove steps that don't produce value

![Value stream mapping](http://philcalcado.com/img/2015-09-7-constraints/vm1.png)

<div class='notes'>
Value stream mapping is something you can do to evaluate every step an idea takes from inception to production. This allows you to identify inefficencies in the process.

By mapping out the process you can then ask, does this step, which takes a week, increase the value of the idea? If it doesn't think about cutting the step.
</div>

---

# Humane Postmortems

- A postmortem is a chance to learn from an unintentional experiment
- Seek to understand not blame


<div class='notes'>
A postmortem is a chance to learn from an unintentional mistake.

Treat them as an opportunity to explore how your organization actually works you might be suprised by what you find.
</div>

---

# Reserve Time For Improvement

- Entropy guaranttees things degrade over time
- You can keep up, if you slot time for it
- Getting better, at getting better can be a competetive advantage


<div class='notes'>
Things naturally degrade overtime, if you don't spend time making things better, you will be fated to work on nothing but the failures. So, make sure you reserve time to make things better.

And, this doesn't just apply to features, or the end production. If you continually work on getting better, you'll find that you can get better faster. Which could be a competative advantage.
</div>

---

# Where should you start

![Continuous Deliver maturity model](https://cdn.infoq.com/statics_s2_20170221-0307u1/resource/articles/Continuous-Delivery-Maturity-Model/en/resources/fig1large.jpg)

<div class='notes'>
This is a continuous delivery maturity model. You can google it there are many out their. They all provide a way to see where you stand. From their you can decide what you'd like to do next.
</div>

---

# Examples of CI are many

- Small: one person, one purpose projects
- Big: Google has 1 code repo, Amazon deploys ever 11 seconds
- Open source: Django, Wordpress, Drupal


<div class='notes'>
Anytime you are doing anything more then just writing code on scratch paper, I belive that you will benefit from CI and CD.

So, I'm going to talk take a look at a few projects of varying sizes.
</div>

---

# Small CI/CD

This presentation
https://bepress-ci-presentation.netlify.com/

<div class='notes'>
This presentation exists at this URL, and is actually continuously deployed.

Every time I commit to my repo, I build this presentation and push it to the web.

I was able to build in small chunks, and incorporate feedback.

I used a service called netlify, that would actually build this presentation based on a PR. Which would allow me to look at the presentation before I merged and deployed.
</div>

---

# Small Open Source Pystrainer

![pystrainer https://github.com/voidfiles/strainer](https://www.dropbox.com/s/ohydd87vlq62l0v/ZM3V.png?raw=1)

<div class='notes'>
Pystrainer is a small python library that I created.

I was frustrated with exisiting serializer and deserializers in python. They were mainly class based, and all suffered from performance issues.

I thought there was a way you could speed up serializers.

As I developed the library I wanted to make sure that I didn't regress on speed.
</div>

---

# Pystrainer

![https://voidfiles.github.io/python-serialization-benchmark/](https://www.dropbox.com/s/2rpk72fofyfzg83/qB3L.png?raw=1)

<div class='notes'>
So, I made sure that I benchmarked my code. And, every time I bump a version I just have to commit to the repo and the whole website is regenerated including the benchmarks.

I don't have to remember how to generate this site, I just need to commit.
</div>

---

# bepress - SelectedWorks

- Greenfield
- Architected for CI/CD
- Brought feature development down from months to weeks
- Bug fixes from weeks to days or hours

<div class='notes'>
At bepress we re-wrote a product of our called SelectedWorks. SelectedWorks allows authors to create compelling online scholarly identities.

Becase, it was a full rewrite it was basically a greenfield project. I made sure early in my tenure to implement CI and CD.

We used it to quickly iterate during dev. Even when we were deploying just to internal stakeholders it was usefull. Because, as soon as we committed something it would get shipped to an integration server. Our product manager could see daily progress.

After we released the re-write we just kept shipping code.

The first couple of months of shipping we were deploying code over 100 times a month.

Last year alone we shipped code to production about 800 times, with a change error rate below 1%.

We've found that bugs can be fixed in hours instead of days or weeks, and we brought feature development time down from a couple months to a couple weeks.
</div>
---

# bepress - DigitalCommons

- 16 year old SaaS app written in Perl
- was not built, or architected for continuous delivery
- We are in the process of implementing CI.

<div class='notes'>
bepress has two main products. SelectedWorks and Digital Commons. DigitalCommons has been around in one form or another for about 16 years.

I joined bepress to work on the SelectedWorks re-write, after it was released I also continued to work on features for SelectedWorks.

As time went on though I realized that SelectedWorks, and DigitalCommons are highly intertwined, and DigitalCommons wasn't benefitting from the rapid release cycle the SelectedWorks had.

So, Even though I had no intention of working on a Perl app, I turned my attention to DigitialCommons.

We are currently in the process of doing CI, and CD for this application. We've had some success, but we are not done. But, I can tell that this is doing good things.
</div>


---
