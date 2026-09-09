#set page(
  margin: 0.5in,
)

#set text(
  font: "Arial",
  size: 11pt,
)

#set heading(numbering: none)

#let separator = [
  #v(4pt, weak: true)
  #line(length: 100%, stroke: (paint: gray))
  #v(6pt, weak: true)
]

#let vspacer = [
  #v(10pt)
]

#[
  #set align(center)
  #set text(18pt)

  = Apisit Samorod

  #set text(14pt)
  *Software Developer*

  #set text(11pt)
  #separator
  Thailand | ap.samorod\@gmail.com | +66 0849298505\
  defalse.dev | github.com/0x1A0A
  #vspacer
]

== Summary
#separator
Fullstack developer with experience delivering enterprise-scale financial and telecom systems.
Experience across frontend, backend, microservices, and CI/CD.
Strong interest in system reliability, infrastructure, and secure system design.
#vspacer

#let experience_header(name, tech, ..year) = [

  === #name
  #grid(
    columns: (1fr, 1fr),
    [
      #set align(left)
      #tech.join(", ")
    ], [ #set align(right)
      #if year.pos().len() != 0 [
        #let (val) = year.at(0);
        #set text(size: 9pt, fill: gray)
        #val
      ]
    ]
  )
]

== Experience
#separator

#experience_header("Software Engineer - [ODT] Toyota Nont", ("PHP", "Docker", "AWS ECS/ECR", "CI/CD"), "Aug 2026 - Present")
- Supported migration of a legacy PHP application from PHP 5.2 to 7.4 with a focus on preserving existing application behavior.
- Maintained the development environment and supported testing by investigating database, schema, configuration, and environment issues affecting application functionality.
- Built a CI/CD pipeline to build container images, push them to Amazon ECR, and deploy services through Amazon ECS.
#v(8pt)

#experience_header("Softtware Engineer - [ODT] ttb FINOVA", ("NestJS", "React", "TypeScript", "MSSQL"), "Apr 2025 - May 2026")
- Contributed to delivery of a financial client platform replacing a legacy system under strict release deadlines.
- Implemented application features and improvements within a high-throughput enterprise environment.
- Investigated production incidents, performed root cause analysis, and delivered hotfixes for critical financial platform issues, helping maintain system availability and business continuity.
#v(8pt)

#experience_header("Software Engineer - [ODT] AIS mychannel", ("Angular", "NestJS", "TypeScript", "MongoDB"), "Apr 2023 - Feb 2025")
- Developed frontend microfrontend modules (iframe-based) for a telecom sales platform handling device and subscription workflows.
- Built backend business services coordinating distributed systems within an event-driven microservices architecture.
- Implemented CI automation to validate builds and tests prior to integration with centralized CD pipelines.
- Supported production deployments and hotfix releases in a live enterprise environment.
#v(8pt)

#experience_header("Real-Time 2023 Election Results website - [ODT] Dailynews", ("React",))
- Volunteered to contribute to development of a real-time election results website delivering live vote updates.
- Implemented frontend component to render continuously update election data.
#vspacer

#pagebreak()

== Education
#separator
#experience_header("Suranaree University of Technology", ("Bachelor's degree, Computer Engineering",), "2019 - 2023")
#vspacer

== Skills
#separator
#let skills = (
  "Programming Languages": ("TypeScript/JavaScript", "Rust", "C/C++", "Haskell"),
  "Frontend": ("Astro", "React", "Angular", "Vue"),
  "Backend": ("NestJS", "ExpressJS"),
  "Database": ("MongoDB", "MSSQL", "MYSQL"),
  "Infrastructure & Tools": ("Podman/Docker", "Linux", "CI/CD"),
)

#for (k, v) in skills [
  *#k* #v.join(", ")\.\
]
