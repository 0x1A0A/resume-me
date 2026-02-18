#let odd_blue = rgb("#13139c")
#let odd_royal = rgb("#fcb808")

#set page(margin: 0pt, fill: odd_blue)
#set text(font: "Arial", size: 10pt)
#set heading(numbering: none)

#place(top + left)[ #pad(5pt)[ #rect(width: 100%, height: 100%, fill: white)] ]

#let bold-first(text) = {
  let first = text.at(0)
  let rest = text.slice(1)
  strong(first) + rest
}

#let firstname = "Apisit"
#let lastname = "Samorod"
#let quote = "I am batman"
#let role = "Software Engineer"
#let number = "084-929-8505"
#let mail = "miles@odds.team"
#let other = "github/0x1A0A | defalse.dev"

#let left_section = ("Education": [
  #pad(left: 6pt)[ *Computer Engineering*, Suranaree University of Technology, TH]
], "Skill Highlight": [
  - Coding, Problem solving
    - Programming languages: Rust, C/C++, JavaScript/TypeScript.
  - Tools and frameworks
    - Frontend: React, Angular, Vue, Astro.
    - Backend: NestJS, Express.js
    - Version control: Git.
    - Container (docker, podman).
    - Linux Operating system.
])

#let right_section = ("Professional Summary": [
  #pad(left: 6pt)[ Fullstack developer with experience delivering enterprise-scale financial and telecom systems. Exposure to microservices, CI automation, and production deployments. Strong interest in system reliability, infrastructure, and secure system design.]
], "Experience Highlight": [
  *ttb Finova*\
  - Contributed to delivery of a financial client platform replacing a legacy system under strict release deadlines.
  - Implemented application features and improvements within a high-throughput enterprise environment.
  *AIS MyChannel*\
  - Developed frontend microfrontend modules (iframe-based) for a telecom sales platform handling device and subscription workflows.
  - Built backend business services coordinating distributed systems within an event-driven microservices architecture.
  - Implemented CI automation to validate builds and tests prior to integration with centralized CD pipelines.
  - Supported production deployments and hotfix releases in a live enterprise environment.
  *Real-Time 2023 Election Results website*
  - Volunteered to contribute to development of a real-time election results website delivering live vote updates.
  - Implemented frontend component to render continuously update election data.
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
  #rect(width: 80pt, height: 32pt, fill: red)
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
        fill: odd_royal.opacify(-67%),
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
        #rect(fill: green, width: 100%, height: 100%)
      ],
      [ #pad(left: 30pt, top: 12pt)[
        #for (index, (key, content)) in left_section.pairs().enumerate() [
          #text(odd_blue, size: 12pt, [*#upper(key)*])\
          #content
          #v(6pt)
          #if index < right_section.len() - 1 [
            #place(dx: -9.5pt)[ #line(length: 112%, stroke: (paint: gray))]
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
          #place(dx: -12pt)[ #line(length: 110%, stroke: (paint: gray))]
          #v(12pt)
        ]
      ]
    ]
  ]
)])

#place.flush()

#place(top, dx: 47.5%, dy: 19.5%)[#line(length: 79%, stroke: 1pt + gray, angle: 90deg)]
#place(bottom, dx: 4%, dy: -1.5%)[#line(length: 93%, stroke: 1pt + gray)]
