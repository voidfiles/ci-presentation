---

# How Continuous Integration and Delivery can accelerate your process

Alex Kessinger, Software Architect @ bepress

<div class='notes'>
Hi, My name is Alex Kessinger. I am a software architect at bepress. Today, I want to talk about how continuous integration and delivery can accelerate your product.
</div>


---

# What is the goal?

Deliver value to our users.


<div class='notes'>
This is the developer track at the Open Repositories conference in 2017.

I'll guess that none of us are working on Boeing guidance systems or heart monitors.

You are probably building a website or an app.

Somewhere our their is a human and they are trying to use your software … too do something.

If we are unlucky, that user is quietly resenting their computer and wishing their boss had bought something else.

If we are doing okay they might not even notice our software.

If we are doing great, they might love using our software.

Our goal is deliver something valuable to our users, and be at least okay if not great at it.

I think this is a reasonable goal that can be shared by a whole organization.

As we beging to talk about CI and CD we should keep that goal in mind, because everytool can be misued if it is used for the wrong reason.
</div>

---

# Agenda

- A shared organizational goal
- The value your organization delivers
- The risks of value delivery
- Science as risk mitigation
- How CI and CD helps
- Examples

<div class='notes'>
Here is the agenda for the talk.

We've already talked about what the goal is.

Next, I want to talk about what value might look like, and what might be blocking you from delivering value to your users.

Then, I want to talk about how you can mitigate the risk of delivery.

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

<div class="notes">
Before we start, I want to credit a large number of people in helping me develop the ideas behind this talk.

The ideas in this talk come from a long lineage of researchs and practitioners reaching all the way back to the early 1900's.

Principally, I think these 3 books have had the most influence on me, but it's a synthesis of experimentation and reading.
</div>

---

# The Composition of Value

- New features
- Preservation of existing features
- Availability
- Usable

<div class='notes'>
The value that each organization deliveries to it's users will be different, but there are some comonalities.

I think these are some of, but not all of the things your organization does to create value for your users.

So, given that we know our goal is the delivery of value. I am sure that...
</div>

---

# Risky Buisness

- Every new feature is a success
- We never break old features
- we have 100% availability
- our software is 100% usable

<div class='notes'>
you would use these statments to describe your company, right?

...

Of course not, no one can deliver software 100% correctly all the time.
</div>

---

# Destruction Of Value

* Not solving the customers needs
* Market changes to quickly
* Software Bugs
* Capacity and Performance issues

<div class="notes">
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

But, We still have to create value.

Not everyone is going to combat risk the same way, but I think there is a model that many organizations can use, and it's been around for 100s of years.
</div>

---

# A Model for Mitigating Risk

An example: Feature Delivery

<div class='notes'>
Let's take a very common task in most development enviornment the delivery of a feature.

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

At the end of the day, even if this feature didn't work out we protect our abilit to deliver value to users, by freeing up room for other features that will work.

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

But, none of use ar. So, let's experiement.

I think the best place to experiment is in production. That's where real data, and real users are, so to get valid results, we probably need to get results from production.

But, this means that you can only experiment as fast as you can ship. If your organization only does that once a month, or once a week. That is how long it takes you to experiment.
</div>

---

# A Note on Cycle time

> "Pushing your organization to drop cycle time to less then 1 hour is a forcing function for adopting Devops ... In other words, if your cycle time is an hour or less you are probably doing Devops." - Dave Farley author of Continous Delivery book

<div class='notes'>
Cycle time is an amazing metric. It literally measures the cadence or your organization. If your cycle time is 3 months, you can only improve things every 3 months.

It can be quite daunting to think about how you are going to reduce a 3 month cycle time to 1 month, or a week, or even a day. But, you don't have to go all the way at once.

Just like I am suggesting that you ship small bit's of change at a time, and experiement as you go. You should treat your transformationg to a continuous pipeline as a bunch of small experiements.

Make sure you are doing what is right for your organization.
</div>

---

# Checking In

- We all want to deliver value to our users
- There are many inherent risks in delivering value to our users
- We must experiment in order to reduce the risk

<div class='notes'>
- First let's review really quick
  - We all want to deliver value to our users
  - There are many inherent risks in delivering value to our users
  - We must experiment to figure out what works
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

- we all want to deliver value to our users
- Risk prevents us from delivering value to our users
- In order to mitigate the risk we need to experiment
- We can increase the rate of experimentation, and thus decrease risk, by focusing on end to end delivery, fast feedback cycles, and continuous improvement

---

# Finally: CI and CD to the Rescue

- CD: Helps decrease end to end cycle time
- CI: Helps create fast feedback cycles
- DevOps/Agigle: Helps create a culture of continus improvment.


<div class='notes'>
The principals of CI, CD and DevOps are the ideas of cycle-time, fast feed back, and contnuous improvement made manifest.

I intentional spent a lot of time breaking down the principals first, because I can only show so much in one talk. If you think these princiapls make sense then just start experimenting and see where it takes you.

But, if you are anything like me, you want to know what others are doing.
</div>

---

# Contiuous Deliver as End-to-End Experimentation

* - automated deployments
* - graceful restarts
* - feature Flags
* - map your value stream

<div class='notes'>
The practices of continuous delivery enable fast end-to-end experimentation.

Here are a couple of methods you can use to enable continuous delivery.

Automatted deployments. A good rule of thumb here is: If you are doing anything more then clicking a button, or running one command to deploy code to production then you aren't doing automated deployments.

The goal here is to take something that is an event, and turn it into a non-event.

Gradeful Restarts: Now that you can deploy anytime you want, you want to make sure that when you deploy you don't disrupt the users experience. Now, think about websites. Your users are probably interacting with your website, which means they have an open connection to your app. If you just restart the app you will break that connection, and your users will see that.

Graceful restarts are a way that you can keep the connection open the whole time, while you slowly disconnect your app from the old version, and you connection it to the new app. Which ever ecosystem you are in python, rub, php, java there is a way to do this.

Feature Flags: A Feature Flag gives you the ability to change how your application works at run-time.

You are shipping code to production in an automated fashion, and you can do it on-demand without interupting your users. Now, you want to be able to ship code to production that's not quite ready for primetime. Remeber, we do this so that we can test out features

map your value stream: At some point to decrease end to end cycle time you'll need to involve the rest of your organization.

In order to understand what is upstream from you, you might want to understand your companies value stream.

This basically means you should document the whole process an idea takes from idea stage to being deployed in code.

Once, you have done that your can begin to talk about what is preventing a feature from moving rebought the flow efficiently.

Keep in mind at this point we are no longer talking purely about technology this is a people is sure.
</div>

---

# Continuous Integration as Fast Feedback

- * Code Review
- * Static Analysis
- * Fast Unittests
- * Seperate code/feature deploys
- * Product Validation

<div class='notes'>
The ultimate goal is to deploy code in production. That is the only place where you're new features can produce value.

And, while we can not prove that software will work in production, we can prove that it won't work in production.

We should devise feedback cycles do that very soon after a developer has committed code. They will know that code is not ready for production.

Its incredibly important to let the developer know in a time let manner. Because, we don't want that developer to context switch away form this task.

## code review

Having another team member look at the code before it gets vomited is a great way to provide quality feedback.

## static analysis

If you are looking for somewhere to start but feel stuck. Try implementing static analysis. also referred to as linting.

If you have an existing code base clean one file. And, add it to a whitelist. Then only check the files in that whitelist. This way you don't have to fix everything in one go, and you can prevent regressions.

## Fast unittests

Making sure that your unit tests are fast are a great way to provide fast feedback. If a developer knows that tests finish in less then 5 minutes. They'll go get a cup of coffee instead of switching to another task.

If you combine unit tests, with good feature planning, and code review you'll really be cooking with gas.

When you plan features, and code, plan in tests, make that the first thing you talk about. Then in code review make sure that the tests are comprehensive.

## separate code deploys and feature deploys

This is another reason to have feature flags. It allows you to push partial features all the way to production and test them there.

This allows you to get feedback from prod before you finish.

## product validation

Instead of planning, building, shipping, and announcing a feature. Identify some early adopters. Push to simplest most variant version to production and turn it on just for them.

Get feedback early.
</div>

---

# Agile/Lean/Scrum as Continuous Improvement

- * Reserve time for improvement
- * Embrace a workflow system
- * Humane postmortem

<div class='notes'>
## reserve time for improvement

If you fully utilize the time of a team with features you'll never improve the system. And, if carried on as-infinity you'll probably end up with so many bugs that you'll team will never work on feature.

So, it helps a lot if you reserve a portion of each sprint to do nothing but improve the system.

## embrace a workflow system

Agile, scrum, kanban are all systems that help you manage work through a system. They help you visualize the work as it flows.

I really like retrospectives for their ability to help look back in the near past and figure out wheat you can do better.

## humane postmortem

A postmortem is a chance to learn from an unintentional mistake.

Treat them as an opportunity to learn more about the system and how work gets done.
</div>

---

# Where should you start

![Continuous Deliver maturity model](https://cdn.infoq.com/statics_s2_20170221-0307u1/resource/articles/Continuous-Delivery-Maturity-Model/en/resources/fig1large.jpg)

<div class='notes'>
http://bekkopen.github.io/maturity-model/

https://github.com/garystafford/cd-maturity-model

http://code-maturity.praqma.com/delivery-pipeline/

https://www.linkedin.com/pulse/mature-maturity-model-continues-delivery-including-culture-norm%C3%A9n

https://developer.ibm.com/urbancode/docs/continuous-delivery-maturity-model/

</div>

---

# Examples of CI

- Small, one person, on purpose
- Open source
- Medium to big team

<div class='notes'>
Anytime you are doing anything more then just writing code on scratch paper, I belive that you will benefit from CI and CD.

So, I'm going to talk take a look at a few projects of varying sizes.
</div>

---

# Small CI/CD

[this presentation]

<div class='notes'>
This presentation exists at this URL, and is actually continuously deployed.

Every time I commit to my repo, I build this presentation and push it to the web.

I was able to build in small chunks, and incorporate feedback.

I used a service called netlify, that would actually build this presentation based on a PR. Which would allow me to look at the presentation before I merged and deployed.
</div>

---

# Pystrainer

![pystrainer https://github.com/voidfiles/strainer](https://www.dropbox.com/s/ohydd87vlq62l0v/ZM3V.png?raw=1)

<div class='notes'>
Pystrainer is a small python library that I created.

I was frustrated by exisiting serializer, and deserializers in python. They were mainly class based, and all suffered from performance issues.

I thought there was a way you could speed up serializers.

As I developed the library I wanted to make sure that I didn't regress on speed.

So, now. Every time I bump a version I just have to commit to the repo and the whole website is regenerated including the benchmarks.
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
At bepress we re-wrote SelectedWorks. As, it was basically a greenfield project. I made sure early in my tenure to implement CI, and CD.

We used it to quickly iterate during dev, but after we shipped the re-write we just kept shipping code, and in the first couple of months of shipping we were deploying code over 100 times a month.

Last year alone we shipped code to production about 800 times, with a change error rate below 1%.

We've found that bugs can be fixed in hours, and we brought feature development time down from a couple months to a couple weeks.
</div>
---

# bepress - DigitalCommons

- 16 year old SaaS app written in Perl
- was not built, or architected for continuous delivery
- We are in the process of implementing CI.

<div class='notes'>
bepress has two main products. SelectedWorks, and Digital Commons. DigitalCommons has been around in one form or another for about 16 years.

I joined bepress to work on the SelectedWorks re-write, after it was released I also continued to work on features for SelectedWorks.

As time went on though I realized that SelctedWorks, and DigitalCommons are really connected, and DigitialCommons wasn't benefitting from the rapid release cycle the SelectedWorks had.

So, Even though I had no intention of working on a Perl app, I turned my attention to DigitialCommons.

We are currently in the process of doing CI, and CD for this applicaiton. We've had some success, but we are not done. But, I can tell that this is doing good things.

</div>
---

# continuous, all the things

<div class='notes'>
In closing I'd like to re iterate. The ideas are simple. If you can understand the core principals at work here you can design a continuous proceeds that is right for your project.

Remember, understand the process for taking and idea to production, understand the barriers and the blockers, work to bring down that cycle time.

Work to introduce tight feedback loops to the process is less time is wasted.

Finally, embrace the risk, and reserve time to experiment wi h ways to reduce risk.
</div>
