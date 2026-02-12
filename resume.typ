#set page(
  margin: 1in,
)

#set text(
  font: "Arial",
  size: 11pt,
)

#set heading(numbering: none)

#let separator = [
  #v(4pt, weak: true)
  #line(length: 100%, stroke: (paint: gray))
  #v(8pt, weak: true)
]

#[
  #set align(center)
  #set text(18pt)
  = Apisit Samorod

  #set text(14pt)
  *Software Developer*

  #set text(11pt)
  #separator
  Thailand | ap.samorod\@gmail.com | defalse.dev | github.com/0x1A0A\
  #v(12pt)
]

== Summary
#separator
Fullstack developer with experience delivering enterprise-scale financial and telecom systems. Exposure to microservices, CI automation, and production deployments. Strong interest in system reliability, infrastructure, and secure system design.
#v(12pt)

#let experience_header(name, tech, ..year) = [
  === #name
  #grid(columns: (1fr,1fr), [
    #set align(left)
    #tech.join(", ")
  ],[ #set align(right)
    #if year.pos().len() != 0 [
      #let (val) = year.at(0);
      #set text(size: 9pt, fill: gray)
      #val
    ]
  ]) 
]

== Experience
#separator
#experience_header("Softtware Engineer - [ODDS] ttb FINOVA",  ("NestJS", "React", "TypeScript", "MSSQL"), "Apr 2025 - Present")
- Contributed to delivery of a financial client platform replacing a legacy system under strict release deadlines.
- Implemented application features and improvements within a high-throughput enterprise environment.
#v(8pt)

#experience_header("Software Engineer - [ODDS] AIS mychannel",  ("Angular", "NestJS", "TypeScript", "MongoDB"), "Apr 2023 - Feb 2025")
- Developed frontend microfrontend modules (iframe-based) for a telecom sales platform handling device and subscription workflows.
- Built backend business services coordinating distributed systems within an event-driven microservices architecture.
- Implemented CI automation to validate builds and tests prior to integration with centralized CD pipelines.
- Supported production deployments and hotfix releases in a live enterprise environment.
#v(8pt)

#experience_header("Real-Time 2023 Election Results website - [ODDS] Dailynews",  ("React",))
- Volunteered to contribute to development of a real-time election results website delivering live vote updates.
- Implemented frontend component to render continuously update election data.
#v(12pt)

== Skills
#separator
#let skills = (
  "Languages": ("TypeScript/JavaScript", "Rust", "C/C++", "Haskell"),
  "Frontend": ("Astro", "React", "Angular", "Vue"),
  "Backend": ("NestJS", "Express"),
  "Database": ("MongoDB","MSSQL"),
  "Infrastructure & Tools": ("Podman/Docker", "Linux", "CI pipelines"),
)

#for (k, v) in skills [
  *#k* #v.join(", ")\.\
]

