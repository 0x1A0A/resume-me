#let odd_blue = rgb("#13139c")
#let odd_royal = rgb("#fcb808")

#set page(margin: 0pt, fill: odd_blue)
#set text(font: "Tahoma", size: 10pt)
#set heading(numbering: none)

#place(top + left)[ #pad(5pt)[ #rect(width: 100%, height: 100%, fill: white)] ]
#place(top + left, dx: -8%, dy: -10%)[ #pad(5pt)[ #circle(width: 60%, fill: odd_royal.opacify(-57%))] ]
#place(bottom + left)[ #rotate(-15deg)[#image("./width_759_bg.png", width: 700pt)] ]

#let bold-first(text) = {
  let first = text.at(0)
  let rest = text.slice(1)
  strong(first) + rest
}

#let firstname = "Apisit"
#let lastname = "Samorod"
#let quote = "less is more"
#let role = "Software Engineer"
#let number = "084-929-8505"
#let mail = "miles@odds.team"
#let other = "github/0x1A0A | defalse.dev"

#let left_section = ("Education": [
  #pad(left: 6pt)[ *Computer Engineering*, Suranaree University of Technology, TH]
], "Skill Highlight": [
  - Coding, Problem solving
    - Programming languages: JavaScript/TypeScript, Rust, C/C++, Haskell.
  - Tools and frameworks
    - Frontend: React, Angular, Vue, Astro.
    - Backend: NestJS, Express.js.
    - Database: MongoDB, MSSQL, MySQL.
    - Infrastructure: Podman/Docker, Linux, CI/CD, Git.
])

#let right_section = ("Professional Summary": [
  #pad(left: 6pt)[ Fullstack developer with experience delivering enterprise-scale financial and telecom systems. Experience across frontend, backend, microservices, and CI/CD. Strong interest in system reliability, infrastructure, and secure system design.]
], "Experience Highlight": [
  *Toyota Nont* (Aug 2026 - Present)\
  [PHP, Rails, ClickHouse, Airflow, AWS ECS/ECR, CI/CD]
  - Supported migration of a legacy PHP application from PHP 5.2 to 7.4 with a focus on preserving existing application behavior.
  - Maintained the development environment, including restoring production databases to dev, and supported testing by investigating database, schema, configuration, and environment issues affecting application functionality.
  - Built a CI/CD pipeline to build container images, push them to Amazon ECR, and deploy services through Amazon ECS.
  - Developed sales and after-sales dashboards (Rails, ClickHouse) with Airflow data pipelines, owning development, production setup, and deployment.
  *ttb Finova* (Apr 2025 - May 2026)\
  [React, NestJS, TypeScript, MSSQL]
  - Contributed to delivery of a financial client platform replacing a legacy system under strict release deadlines.
  - Implemented application features and improvements within a high-throughput enterprise environment.
  - Investigated production incidents, performed root cause analysis, and delivered hotfixes for critical financial platform issues, helping maintain system availability and business continuity.
  *AIS MyChannel* (Apr 2023 - Feb 2025)\
  [Angular, NestJS, Express.js, Kafka, MongoDB]
  - Developed frontend microfrontend modules (iframe-based) for a telecom sales platform handling device and subscription workflows.
  - Built backend business services coordinating distributed systems within an event-driven microservices architecture.
  - Implemented CI automation to validate builds and tests prior to integration with centralized CD pipelines.
  - Supported production deployments and hotfix releases in a live enterprise environment.
])

#let introduction(firstname, lastname, quote) = [
  #text(fill: odd_blue, size: 39pt)[
    #bold-first(upper(firstname))\
    #v(12pt, weak: true)
    #bold-first(upper(lastname))\
  ]
  #text(odd_blue)[
    #emph(["#quote"])
  ]
]

#let additional_detail(role, phone, email, other) = [
  #image("width_200", width: 50pt)
  #v(8pt, weak: true)
  #text(odd_blue, size: 11pt, [
    #role\
    #phone\
    #email\
    #other\
  ])
]

#let separator = [
  #v(4pt, weak: true)
  #line(length: 100%, stroke: (paint: gray))
  #v(8pt, weak: true)
]

#pad(5pt, [ #grid(
  rows: (2fr, 8fr),
  columns: (4fr, 5fr),
  grid.cell(colspan: 2, [
    #pad(y: 20pt)[
      #place(center)[ #rect(
        width: 100%,
        height: 100%,
        fill: odd_royal.opacify(-57%),
      )]
      #grid(
        columns: (1fr, auto),
        [ #pad(left: 30pt, y: 18pt)[ #introduction(firstname, lastname, quote) ] ], [
          #pad(right: 18pt, y: 12pt)[
            #align(right)[
              #additional_detail(role, number, mail, other)
            ]
          ]
        ]
      )
    ]
  ]),
  [
    #grid(
      rows: (2fr, 3fr),
      [
        #pad(left: 30pt, [ #place(center + horizon, [#block(clip: true, radius: (
          top-left: 60%,
          bottom-right: 60%,
          top-right: 40%,
          bottom-left: 40%,
        ), [
          #move(dx: 10pt, [
            #image("me2.jpg", width: 120%)
          ])
        ])])])
      ],
      [ #pad(left: 30pt, top: 12pt)[
        #for (index, (key, content)) in left_section.pairs().enumerate() [
          #text(odd_blue, size: 12pt, [*#upper(key)*])\
          #content
          #v(6pt)
          #if index < right_section.len() - 1 [
            #place(dx: -6.0pt)[ #line(length: 110%, stroke: (thickness: 2pt, paint: gray, cap: "round"))]
            #v(12pt)
          ]
        ]
      ]]
    )
  ], [
    #pad(left: 30pt, top: 12pt, right: 30pt)[
      #for (index, (key, content)) in right_section.pairs().enumerate() [
        #text(odd_blue, size: 12pt, [*#upper(key)*])\
        #content
        #v(6pt)

        #if index < right_section.len() - 1 [
          #place(dx: -12pt)[ #line(length: 110%, stroke: (thickness: 2pt, paint: gray, cap: "round"))]
          #v(12pt)
        ]
      ]
    ]
  ]
)])

#place.flush()

#place(top, dx: 47.5%, dy: 19.5%)[#line(length: 79%, stroke: (thickness: 2pt, paint: gray, cap: "round"), angle: 90deg)]
#place(bottom, dx: 4%, dy: -1.5%)[#line(length: 93%, stroke: (thickness: 2pt, paint: gray, cap: "round"))]
