# How Continuous Integration and Delivery can accelerate your process

Alex Kessinger, Software Architect @ bepress

<div class='notes'>
Hi, My name is Alex Kessinger. I'm a software architect at bepress. We have two main products one Called Digital Commons which is an Institutional Repository as a service, and another called the Expert Gallery Suite. Which is a way to showcase the experts at your organization.
</div>


---

# What is the goal?

* Increase flow of value to users
* Increase the bottomline
* Maximize the productivity of IT staff
* Increase employee satisfaction


<div class='notes'>
Today, I want to talk about how continuous integration and delivery can accelerate your product.

This is the developer track at the open repositories conference in 2017. I'll guess that none of us are working on Boeing guidance systems or heart monitors.

Like my self, you are probably building websites or apps.

Somewhere our their is a human and they are trying to use your software … too do something.

If we are unlucky, that user is quietly resenting their computer and wishing their boss had bought something else.

If we are doing okay they might not even notice our software.

If we are doing great, they might love what you make. They might love it so much they tell other people about how great your software is.

Our goal is to at least be okay, if not great.

Our goal is deliver something valuable to our users.

If we share that goal as software developers, I am going to demonstrate how the principals of Continuous integration and delivery can accelerate the delivery of value to your users.

As we begin to talk about the techniques, it's important to keep the goal in mind, because any tool can be misused if we don't understand what the goal is.

Another important reason to focus on the goal and not just the tool. Is that the goal can align the entire organization. An organization aligned behind a goal and one that also applies the concepts of continuous integration and delivery will be a strong engine of growth.

Not only is it important to make sure your tool helps with your goal, but you should also have a goal because it's important to find the idea that is going to align everyone involved with your business.

The power of simple goals like this, and many others, is that they can align an entire organization. IT/Engineering/"The Business"/"The Management" they can all agree that delivering value to your users is good.

If this isn't your goal as a software developer, you should figure out what your goal is first, before trying to use these ideas.

These are my goals.

</div>

---

# Agenda

- The Goal
- The Risk
- The Plan
- The Pipeline
- Examples

<div class='notes'>
Here is the agenda for the talk.

we've already talked about what the goal is. Next, I want to talk about what might be preventing us from delivering value, then I want to talk about how we mitigate the blockers. Then we are going to talk about how certain practices that fall under the CI/CD umbrela match up with the mitigation techniques. Finally, I'll get into some nuts and bolts of CI/CD, and I'll talk about some experiences I have had implementing CI/CD.
</div>

---

# Risk

* Not solving the customers needs
* Market changes to quickly
* Software Bugs
* Capacity and Performance issues

<div class="notes">
What prevents us from achieving our goals?

Are we fulfilling our customers needs? How do we regularly deliver new helpful value?

This isn't a given. There's no practice in the world where every idea you come up with works. So, there is risk in developing features for your customers.

It's risky because as an organization you are investing time and money in an idea. If that idea doesn't work you may not be able to re-coup your investment.

What about the risk of deploying new software. Everytime you deploy code, their is a risk that it will break. There is risk that you will break existing features.

If users can't use your software, they can't derive any value from it.

What about more existential risk?

Are you fixing the right problems for your users? Industries change over time. Your organization risks not keeping up with the industry.

Are you using the right technology for delivery. If your company has been around for more then a decade you might be asking your self the question of should we utilize a cloud infrastructure over our managed infrastructure. You risk potentially saving money if you can't properly evaluate your options.

I'd posit, that risk is the fundamental force that prevents you from delivering value to your users.
</div>
---

# The only certain thing is uncertainty

<div class="notes">
But, Alex, you say. Duh. Of course building software is risky. And, I get it. The reason I make a big deal of this is that in some sense risk is incredibly visible and invisible all at the same time.

Think about it, when you deploy software do you feel confident that it will work?

Think back to the last time you deployed software to your users. How long did it take you. Did something happen that was unexpected? How did that make you feel.

If you didn't feel good, you might have partook in risky behavior. And, your body knew it before you brain did. That doesn't feel good.

Instead of embracing the risk and learning something. We often blame someone or we blame the database. Oh, its php, its java. It's the business asking us to deliver things to fast, its the customers that don't know what they are doing.

Instead of naming the risk and then making it less risky. We look for something to blame.

I'd love you be able to tell you where you risk is, but I  can't.

I don't have a checklist for you. I don't have a secret incantation. Everyones organization and need's are unique, so the way you dig yourself out is going to be yours alone.

Fortunately, we have ways pf figuring out the methods your organization will use. If you squint, you can begin to find some patterns among the ways people are combating risk.

At the core of the solution is something that has been around for 100s of years.
</div>

---

# Risk meet Science

Hypothesis + Experiment = Learning

<div class="notes">
It's the scientific method. I know it sounds so antiquated, but this is the basic method.

You propose a hypothesis then you design an experiment to see if it works, and then you evaluate your findings.

It worked for Robert Hook and it will work for you.

* What does an experiment look like for software product
* We need to reduce cycle time in order to experiment more in order to get feedback faster.
* we need tight feedback loops to make developers more effective at delivering software.

One quality metric is how long does it take for an idea to be presented in a way to your users where you can get good feedback.
</div>

---

# How do we achieve goal?

- * End-to-End Flow
- * Fast feedback
- * continuous improvement

<div class="notes">
First, where can we validate our hypothesis. It's probably not on our dev box, it's probably production right? I've personally never seen a way to really validate hypothesis fully without getting it to production.

For me, then the first thing is usually what are the barriers to doing on-demand releases. How can we turn something that is a ceremony into a non-event. How can we let anyone push a button and put code into production.

So, this is whats called end-to-end flow. How fast can you take something from the idea stage, to production and validated that it works.

Next, how can we provide really fast feedback. As a developer, when I commit code, I want to know as soon as possible that their is a problem. If I know that in less then a couple of minutes I will know something I want move on to another ticket. I'll wait a bit, and make sure that it works.

If their are problems I will fix it right then and their. Things like unit-tests, code-reviews, functional tests, performance tests fall into this box.

Finally, how can we make sure that we are continuously getting better. How do we make sure that we are increasing the number of experiments we are trying, and how do we make sure that we are increasing the limits of our understanding.

I think things like task budges help here. Make sure that your team is spending good chunk of time on making the system better, and not just always shipping features. Hack days are great way to spur this. Doing good postmortems is another way to do some great
</div>

---

# Cycle time

> "Pushing your organization to drop cycle time to less then 1 hour is a forcing function for adopting Devops and Lean. In other words, if you cycle time is an hour or less you are probably doing Devops and lean." - Dave Farley author of Continous Delivery book

<div class='notes'>
Cycle time is an amazing metric. It literally measures you cadence as an organization. If your cycle time is 3 months, you can only improve things every 3 months.

Before you start on you journey to reducing cycle time, you should first understand how your company produces value. I've worked at some places where the cycle time was an hour or less, and bugs could be fixed inside of minutes. This was great because everything going to the customer flowed through one pipe. Everyone had great visibility into what was being delivered.

At other times in my career I have worked at places where cycle time was weeks. That was painful, but there was only one way things could get to production still.

But, in other cases, I have seen places where cycle time was in the months, but that was not the only way that things got deployed. Things might go through the official release process, or they might go through an unofficial process.

This is truly insidious. It's not that people are trying to be unhelpful, it's that they are trying to fix the problems for users, they are trying to deliver value, but because the official release cadence is every 3 months, you can't actually wait that long when there is a big bug.

If your release cadence isn't currently very fast, you might want to understand all the methods you have for deploying software to your users. You should try and make everything go through one process. Then, when people start to express that they can't do things fast enough, that they used to be abel to just edit code on production, take the time to fix the issue in the process. Don't go outside the process.
</div>

---

# End to End flow

- * automated deployments
- * graceful restarts
- * feature Flags
- * map your value stream

<div class='notes'>
So, what are some techniques for increase the speed of end to end flow, what are some ways of increasing tight feedback loops, how can we be continuously improving they system.

Techniques for increasing end to end flow.

## automated deployments

Automated deployments are possibly the easiest part to adopt. In some cases you may already have a fun book, or a documented set of steps to deploy your code. But, you may still be doing al of that by hand. In that case just getting a deploy script checked in could be the first step to adopting a continuous flow.

## graceful restarts

When you depoy new code to a server depending on the language you might need to stop your server before it will load new code. And, if you do that while a person is using your website they might see something broken.

There for if you want to be able to deploy on-demand you shouldn't not unnecessarily harm the users experience. You'll need to find a way to restart the server with out dropping user connections. This is often referred to as graceful restarts or rolling restarts.

## feature Flags

An important feature of continuous deployment is that you want to separate deployment risk for feature release risk. In order to work off trunk, and to always be able to ship trunk you'll need to be able to ship code for features that are only half done.

What this means in practice is that in your code you'll want to check if a feature has been deployed, and only then execute the code for that that feature.

This is called feature flags.

Not only can feature flags help you to control your release or features, you could possible use them to operate your app in simple way. For instance, you could have a switch that would turn off unrequired features if you're site is under heavy load.

## map your value stream

At some point to decrease end to end cycle time you'll need to involve the rest of your organization.

In order to understand what is upstream from you, you might want to understand your companies value stream.

This basically means you should document the whole process an idea takes from idea stage to being deployed in code.

Once, you have done that your can begin to talk about what is preventing a feature from moving rebought the flow efficiently.

Keep in mind at this point we are no longer talking purely about technology this is a people is sure.
</div>

---

# Fast Feedback

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

# Continuous Improvement

- * Reserve time for improvement
- * Embrace a workflow system
- * Humane postmortem

<div class='notes'>
# continuous improvement

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

# examples of CI

- Small, one person, on purpose
- Open source
- Medium to big team

---

# Small

This presentation exists at this URL, and is actually continuously deployed.

Every time I commit to my repo, I build this presentation and push it to the web.

I was able to build in small chunks, and incorporate feedback.

I really appreciated that with netlify I could preview what a PR would look like before I accepted my own PR.

---

# small open source

Pystrainer is a small python library that I created. I thought there was a way you could speed up serializers. As I developed the library I wanted to make sure that I didn't regress on speed. So, now. Every time I bump a version I just have to commit to the repo and the whole website is regenerated including the benchmarks.

---

# bepress - SelectedWorks

At bepress we re-wrote SelectedWorks. As, it was basically a greenfield project. I made sure early in my tenure to implement CI, and CD. We used it to quickly iterate during dev, but after we shipped the re-write we just kept shipping code.

Last year alone we shipped code to production about 800 times, with a change error rate below 1%.

We've found that bugs can be fixed in hours, and we brought feature development time down from a couple months to a couple weeks.

---

# bepress - DigitalCommons

- 16 year old Saas app written in perl
- was not built, or architected for continuous delivery
- We are in the process of implementing CI.

---

# continuous, all the things


In closing I'd like to re iterate. The ideas are simple. If you can understand the core principals at work here you can design a continuous proceeds that is right for your project.

Remember, understand the process for taking and idea to production, understand the barriers and the blockers, work to bring down that cycle time.

Work to introduce tight feedback loops to the process is less time is wasted.

Finally, embrace the risk, and reserve time to experiment wi h ways to reduce risk.
