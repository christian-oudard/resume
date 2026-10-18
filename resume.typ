#import "style.typ": *
#show: resume.with(
  name: "Christian Oudard",
  email: "ChristianOudard@pm.me",
  github: "christian-oudard",
)

#intro[
It turns out that if you really understand something well, you can teach a computer to do it. This
has been a source of endless fascination for me throughout my life, ever since I implemented
a chessboard on my TI-85 calculator in high school. For me, it all starts with gathering a precise
understanding of what needs to happen. I'm a great communicator and I thrive in collaboration with
others. In a team context, I'm often playing the role of a translator, who helps make technical
realities legible for business-oriented roles, and represents business priorities for technologists.

I've written code for a wide variety of applications, including game development, graphics
programming, server administration, full stack web development, cryptography, and financial analysis.
]

== Skills

Some of my favorite tools and technologies are:

#skills[
- `NixOS` Linux
- `Git`
- `Vim`
- `Claude Code`
- Cloud computing (`GCP`, `AWS`)
- Databases:
  - `SQLite`
  - `Postgres`
  - `Redis`
][
- Programming Languages:
  - `Python`
  - `Rust`
  - `Go`
  - `Haskell`
  - `Lean`
  - `HTML` / `CSS` / `TypeScript`
  - Shell script
]

== Work History

#entry(
  title: [Software Consultant],
  dates: [November 2017 – Present],
)[
Various small projects for private clients. I have helped people with their personal websites,
bookkeeping systems for small businesses, cybersecurity audits, embedded software for
scientific applications, oversight of junior programmers, and hiring due diligence, among other
work.
]

#entry(
  title: [Software Developer, RHS Financial],
  dates: [November 2017 – Present],
  tech: [`Python`, `CVXPY`, `Postgres`, `Pandas`, `GCP`, `FIX` protocol],
)[
I have been working part-time with RHS Financial as the only software developer for quite a few
years now, some of that as a minor partner in the firm. We have built a sophisticated portfolio
optimization system using a convex optimizer. It rebalances client portfolios with a modern
expected returns and covariance model, with automatic tax-loss harvesting. This system reduced the
average client rebalance from two tedious hours (in Excel) to under ten minutes of work, including automated
trade execution over the FIX protocol.

- https://rhsfinancial.com/
]

#entry(
  title: [Senior Software Engineer, MobileCoin Inc.],
  dates: [May 2021 – October 2023],
  tech: [`Rust`, `Python`, `gRPC`, `SQLite`, `SQLCipher`, Intel `SGX` enclaves, Elliptic Curve Cryptography ],
)[
As a member of the core blockchain team, I worked with a Rust codebase doing high security
cryptographic calculations. The most safety-critical portions of the code communicate in a
decentralized consensus network, via secure enclaves. I implemented the client wallet software
responsible for maintaining private keys and transaction history. Since MobileCoin is an end-to-end
encrypted (E2EE) system, the client software requires an encrypted database for proper security.
All the software I wrote here is open-source:

- #link("https://github.com/mobilecoinofficial/full-service")[github.com/mobilecoinofficial/full-service]
- #link("https://github.com/mobilecoinfoundation/mobilecoin")[github.com/mobilecoinfoundation/mobilecoin]
]

#entry(
  title: [Engineer, Bonsai AI],
  dates: [March 2017 – October 2017],
  tech: [`Python`, `Django`, `Docker`, `TensorFlow`],
)[
Bonsai AI built a reinforcement-learning platform and domain specific language, with the goal of
making RL training and inference more accessible to non-expert developers. As a platform engineer, I found it fascinating to work directly with our ML researchers, helping to implement and
scale RL algorithms. I learned a great deal about optimization theory and machine learning in
general.
]

#entry(
  title: [Data Engineer, Disqus],
  dates: [May 2016 – December 2016],
  tech: [`Postgres`, `SQL`, `Python`, `Django`, `JavaScript`, `React`, `AWS`, `Apache Kafka`],
)[
I worked here on the data team, writing and managing batch database jobs to transform large data
sets coming from their 500 million monthly unique users. Our three-person team was responsible for
an analytics pipeline handling tens of millions of events per day. My role was fairly flexible, and
I also helped with the Django backend and the React frontend.

- https://disqus.com/
]

#entry(
  title: [Engineer, Infer Inc.],
  dates: [July 2015 – September 2015],
  tech: [`Python`, `scikit-learn`, `CoffeeScript`],
)[
Infer was a company that helped to optimize sales pipelines via a Salesforce plugin. We used machine
learning to help sales teams prioritize which contacts were most likely to convert into customers.
My responsibility here was mainly to write an internal user interface for the data engineers to
develop their ML models.
]

#entry(
  title: [Senior Backend Engineer, TinyCo],
  dates: [September 2012 – January 2014],
  tech: [`Python`, `Django`, `Tornado`, `MySQL`],
)[
TinyCo creates free-to-play mobile games, focusing on cute characters and time-locked game
mechanics. I worked on the backend team. In collaboration with the mobile frontend team, we released
several games a year, each one requiring its own backend code and database deployment. Here I coded
complete rewrites of several major systems, such as the code deployment system and game
configuration server. I also introduced better practices for unittesting and database migrations.
]

#entry(
  title: [Engineer, Scribd Inc.],
  dates: [January 2012 – August 2012],
  tech: [`Ruby on Rails`, `JavaScript`, `HTML`/`CSS`],
)[
As a full stack engineer, my responsibilities at Scribd included the Scribd Developer API, internal
mobile client API, and the embedded document viewer.
]

#entry(
  title: [Lead Software Developer, PolicyStat, LLC],
  dates: [October 2008 – January 2012],
  tech: [`Python`, `Django`, `AWS`, `HTML`/`CSS`, `jQuery`, `Redis`, `MySQL`],
)[
I joined PolicyStat at a very early stage, when there was just the CEO, the CTO, and me. Over my
time there, our client base grew from two hospitals to over a hundred. I did a little of everything
here, including server administration, the Django backend, a responsive web frontend, and some help
with pitch decks.
]

#entry(
  title: [Web Developer, BluegrassNet Development],
  dates: [May 2008 – October 2008],
  tech: [`PHP`, `MySQL`],
)[
My first job out of college was as a developer at a small custom web development shop, using PHP.
We were making a trucking logistics platform for Tennessee Steel Haulers.
]

#entry(
  title: [Software Engineering Intern, Flight Data Simulator Project],
  dates: [March 2008 – May 2008],
  tech: [`Python`, `PyOpenGL`],
)[
Speed School Computer Science Department, University of Louisville

This internship involved writing 3D renderings of airplane landing approach paths.
]

#entry(
  title: [Software Engineering Intern, CMTS Project],
  dates: [October 2006 – March 2008],
  tech: [`C#`, `DirectX`],
)[
Speed School Mechanical Engineering Department, University of Louisville

This project, the "Concept Modeling Tool Suite", was a collaboration with the
U.S. Army. It was aimed at designing soldier transport vehicles with reduced
noise, vibration, and harshness characteristics. I wrote the 3D user interface
to the vehicle modeling program we developed. The output was a vibration
analysis produced by finite element modeling. Read all about the project in the
dissertation of one of our researchers:

- https://ir.library.louisville.edu/cgi/viewcontent.cgi?referer=&httpsredir=1&article=1816&context=etd
]

#entry(
  title: [Software Engineering Intern, Alcoa Louisville Foil Plant],
  dates: [August 2005 – August 2006],
  tech: [`ASP.NET`, Microsoft Access],
)[
My work at the aluminum foil plant was to create data reporting pages for
internal usage. I created an up-to-the-minute reporting system showing the
readings from the foil mills, which roll sheet aluminum down to the thickness
of kitchen foil.
]

== Education

#entry(
  title: [Bachelor of Computer Science],
  dates: [Fall 2004 – Spring 2008],
)[
University of Louisville, Speed School of Engineering
]
