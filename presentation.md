# How Continuous Integration and Delivery can accelerate your process

Alex Kessinger, Software Architect @ bepress

---

# Agenda

- The Goal
- The Risk
- The Plan
- The Pipeline
- Examples
  - Small projects, single person
  - small projects, open source
  - Small projects, company

---

# What's the goal?

The goal is to:

* Reduce the risk of deployment
* Increase flow of value to users
* Increase time spent on value-producing features
* Maximize the productivity of IT staff
* Increase satisfaction
* Increase the bottomline

<div class='notes'>
What is the goal?

This is the developer track at the open repositories conference in 2017. I guess that none of us are working on Boeing guidance systems or heart monitors.

Most likely, we are building apps, or websites.

We are probably apart of some unique rube goldberg machine that we call software. Somewhere our their is a human and, they are trying to use our software … too do something.

If we are unlucky, that user is quietly resenting their computer, and wishing their boss had bought somethign else.

If we are doing okay, they might not even notice our software.

If we are doing great, they might love what we make. They might love it so much they tell other people about how great our software is.

Our goal is to at least be okay, if not great.

Our goal is deliver something valuable to our users.

The power of simple goals like this, and many others, some of which I have listed here is that they can align an entire organization. IT/Engineering/"The Business"/"The Management" they can all agree that delivering value to your users is good, and should be a goal.

Today, we are going to look at Continuous integration, and delivery as tools, that not only help you deliver value, but will help you accelerate the whole process. And, it might even make your day to day work a little more fun.
</div>

---

# Risk

* Not solving the customers needs
* Market changes to quickly
* Software Bugs
* Capacity and Performance issues

<div class="notes">
Everywhere you look, you can see risk. From the mundanne risk that we deal with everyday like How's the deploy going to work today? How are the servers doing? Will Our users like this new feature.

To the existential, how will we continue to be valuable to our customers, what happens if our industry fundamentally changes and we are no longer needed.

I think it's easy in the face of risk to be both cavalier, and fatalisitc, neither of which are helpful attitudesd when it comes to the day to day work of creating software.

So, we could fret about risk, or we could make it core to our process.
</div>
---

# The only certain thing is uncertainty

<div class="notes">
We could embrace the fact that the only certain thing is uncertaintiy.

So, if we embrace uncertaintiy, and we embrace risk. We can start to ask: How do we systemically minimize the impact of risk and uncertainty.

Personally, when I finally understood this, it was freeing.

I worked with CI and CD systems for a long time before I understood why they were helpful. Before I actually dug in and did the work to understand the buisness value. All I knew was that I felt better when I used them, the team's I worked on seemed to get a lot done.

It wasn't until I did the work that I realized that spending a lot of time on the delivery of software isn't a luxury, it needs to be a core buissness value. The process of delivering the code is just as important as the code it's self.
</div>

# Risk meet Science

Hypothesis + Experiment = Learning

<div class="notes">
The only real cure for risk is science. Specifically the scientific method.

We need to formulate hypothesis, run experiements, and then learn a little bit.

This is super general, but it is the core of this whole process. It's the guiding force that underlines all the other things I am going to talk about.

If you taking nothing away from this talk take this.

The rate at which you can experiment is the rate at which you can learn. If you can learn faster then others, you have an advantage.
</div>

# Don't invent everything though

<div class="notes">
Fortunatley, we don't need to invent the whole science. There are lots of other people who are focuings on speeding up experimentation cycles. We can use their work.

Not only can we use others work, we can use the work that people have put in to other industries.

There is actually an intersting history around applying other industries best practices to our own.

For instance, did you know that the philisophical ancestory of capitale-A agile, is from manfuacting?
</div>



# Quick History

The philosophical origin of Continuous Integration and Devilry is almost 100 Yeas old, far before "IT" was ever a thing.

In some sense, that's why it's so powerful these ideas have been tested, again and again and continue to demonstrate results, even when they are applied to more abstract processes like software development.

<div class="notes">
Many of todays continuous integration, and delivery practices are highly influenced by the lean manufacturing movement, which in turn was highly influenced by various manfuacting philosophies developed in Japan after WW2, which was influenced by this guy Edward Deming.
</div>

---

# definitions

Continuous Integration:
---

# Maturity Model

![https://cdn.infoq.com/statics_s2_20170214-0417_2/resource/articles/Continuous-Delivery-Maturity-Model/en/resources/fig1large.jpg](Maturity Modely)

https://www.infoq.com/articles/Continuous-Delivery-Maturity-Model

![http://blog.arungupta.me/continuous-integration-delivery-deployment-maturity-model/](Maturity model)

http://blog.arungupta.me/continuous-integration-delivery-deployment-maturity-model/

![https://developer.ibm.com/urbancode/docs/continuous-delivery-maturity-model/](Maturity Model)

https://developer.ibm.com/urbancode/docs/continuous-delivery-maturity-model/

I like this last one because it talks about where the community is and where the target is.

---

# How do we achieve the goal?

1. Focus on end-to-end flow
2. Fast Feedback
3. Continuous Improvement

<div class="notes">
These are known as the 3 ways
</div>

---

# Risk vs Reward

* Every new feature is a risk
* Every change can break old features
* Every line of code is an investment

---

* Reduce risk
*
---

# how does CI provide

- Unit test on each commit
- Offers fast feed back
- A precommit check will keep your trunk clean
- allowed developers to build conventions through lint



---
I think the goal is for users to derive value from our software. And, for that value to grow over time.

# how do we create value?

1. Create New valuable features
2. Maintains existing valuable features
3. Remove non-valuable features
4. Continuously improve the process for delivering value






The goal of software is usually to deliver value to users.

If you are google, customers should be able to search
If you are twitter, people should be able to tweet
If you are a repository people should be able to deposit things.

# value is

- is multifaceted
- Value is created through investment
