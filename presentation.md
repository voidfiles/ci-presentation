
# How Continuous Integration and Delivery can accelerate your process

Alex Kessinger, Software Architect @ bepress

<div class='notes'>
Hi, My name is Alex Kessinger. I am a software architect at bepress. Today, I want to talk about how continuous integration and delivery can accelerate your product.
</div>

---

# Agenda

- A Shared Goal
- The Value You Make
- The Risks To Value
- Science as Risk Mitigation
- How CI and CD Helps
- Examples

<div class='notes'>
This is the rough form of my talk today.

First, I am going to explain what the goal is.

Next, I want to talk about what value might look like, and what might be blocking you from delivering value to your users.

Then, I want to talk about how you can mitigate the risks of value delivery.

After that we are going to look at how the ideas of CI/CD provide tools for mitigating risk.

Finally, I'll talk a little bit about nuts and bolts of CI/CD, and I can talk a little about my experince with it.
</div>

---

# Credit

- Jez Humble author of Continuous Integration
- Dave Farley author if  Continuous Delivery
- The Phoneix project by Gene Kim
- Countless blog posts, youtube videso, and conversations, and years of practice.
- There is so much out there, just start reading.

<div class='notes'>
Before we start, I want to credit a large number of sources in that inform this presentation.

The ideas come from a long lineage of researchers and practitioners reaching all the way back to the early 1900s.

Principally, I think these 3 books have had the most influence on me, but it's a synthesis of experimentation, reading, and listening.
</div>

---

# What is the goal?

Deliver value to our users.


<div class='notes'>
This is the developer track at the Open Repositories conference in 2017.

I'll guess that none of us are working on Boeing guidance systems or heart monitors.

You are probably building a website or an app.

Somewhere our their is a human and they are trying to use your software … too do something.

That user is possibly quietly resenting their computer and wishing their boss had bought something else.

Probably, though, they don't even notice our software.

If we are doing great, though, they might love using our software.

Ultimatley, our goal is to deliver something valuable to our users and be at least invisible if not great at it.

This is a reasonable goal that can be shared by a whole organization.

As we beging to talk about CI and CD we should keep that goal in mind, because everytool can be misued if it is used for the wrong reason.
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

# A Note on Cycle time

> “Pushing your organization to drop cycle time to less then 1 hour is a forcing function for adopting Devops … In other words, if your cycle time is an hour or less you are probably doing Devops.” - Dave Farley author of Continous Delivery book

<div class='notes'>
Cycle time is an amazing metric. It literally measures the cadence or your organization. If your cycle time is 3 months, you can only improve things every 3 months.

It can be quite daunting to think about how you are going to reduce a 3 month cycle time to 1 month, or a week, or even a day. But, you don't have to go all the way at once.

Just like I am suggesting that you ship small bit's of change at a time, and experiement as you go. You should treat your transformationg to a continuous pipeline as a bunch of small experiements.

Make sure you are doing what is right for your organization.
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

# Small Diffs

- less then 200 lines
- Big change, lots of small chunks

<div class='notes'>
When you ship small diff's you'll get better feedback. You're team mates we'll be able to respond promptly to code reviews. You'll break fewer tests, and be able to react to change better.

Even if you aren't sold on this idea, try it out. Experiement in your own commits. See how it affects the way you architect change.
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

---

# Feature Flags

- Seperates deployment risk, from release risk
- Allows trunk/master based development
- Can be an incredible operations tool

```
if (feature_flag_enabled('new-feature')) {
  …Do new thing…
} else {
  …Do existing thing…
}
```

<div class='notes'>
A recommended technique is to do trunk based deployments, every developer commits directly to trunk, and every commit to trunk is a release caniadate. Before you can do that you'll need to be able to disable or hide partial work.

A feature flag is way provide runtime configuration for your app.

This way you can hide new features until your organization is ready to release it. It also allows you to continuously deploy code to production without fear of accidentally turning on new features.

Many organization, once they have implmented feature flags, realize that they can use them as an operatons tool. For instance, you could implment a switch that turns off less important features if your website is under stress freeing capacity for more imporant functionality.
</div>

---

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

# Continuous: All The Things

![Continuous All the things](https://i.imgflip.com/1ltl84.jpg)

<div class='notes'>
In closing I'd like to re iterate. The ideas are simple. If you can understand the core principals at work here you can design a continuous proceeds that is right for your project.

Remember, understand the process for taking and idea to production, understand the barriers and the blockers, work to bring down that cycle time.

Work to introduce tight feedback loops to the process is less time is wasted.

Finally, embrace the risk, and reserve time to experiment wi h ways to reduce risk.
</div>
