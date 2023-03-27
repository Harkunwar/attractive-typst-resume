#import "template.typ": *

#set page(
  margin: (
    left: 10mm, 
    right: 10mm, 
    top: 15mm, 
    bottom: 15mm
  ),
)

#set text(font: "Mulish")

#show: project.with(
  theme: rgb("#0F83C0"),
  name: "Harkunwar Kochar",
  title: "Software Engineer",
  contact: (
    contact(
      text: "604-123-4567"
    ),
    contact(
      text: "hello@example.com", 
      link: "mailto:hello@example.com"
    ),
    contact(
      text: "GitHub.com/Harkunwar", 
      link: "https://www.github.com/Harkunwar"
    ),
    contact(
      text: "www.Harkunwar.com", 
      link: "https://www.harkunwar.com"
    )
  ),
  main: (
    section(
      title: "Work Experience",
      content: (
        subSection(
          title: "Splunk",
          titleEnd: "Vancouver, BC",
          subTitle: "Software Engineer",
          subTitleEnd: "(June 2021 - Present)",
          content: list(
            [Improved web page load time by a factor of *10 times* by using React Virtualized Lazy Loading to render large lists.],
            [Spearheaded the implementation and design of embedding images and icons in Splunk Dashboard using React affecting *1000+ users*.],
            [Designed and implemented *4 major dialogs* used in Splunk Dashboard.],
          ),
        ),
        subSection(
          title: "AppNeta",
          titleEnd: "Vancouver, BC",
          subTitle: "Full Stack Developer Intern",
          subTitleEnd: "(September 2019 – May 2020)",
          content: list(
            [Solely responsible for the development of the Web Analytics Dashboard using AWS Lambda and API Gateway in NodeJS.],
            [Improved Experience Monitoring feature with React and Java which actively monitors *4000+ sites* from around the world.],
            [Successfully developed the HTTP Monitoring feature used by *over 100 companies* to monitor their APIs and Websites.],
            [Refined analytics report system generating *1000+ reports daily*.],
            [Automated internal AWS tasks with Terraform and TeamCity.]
          ),
        ),
        subSection(
          title: "Better Way Lighting",
          titleEnd: "Vancouver, BC",
          subTitle: "Embedded System Developer",
          subTitleEnd: "(April 2019 – Aug 2020)",
          content: list(
            [Spearheaded a Smart LED Mesh System Project for the company.],
            [Physically designed and programmed an Arduino DMX Controller to automate testing of lighting products.],
            [Built an interactive Movie Lighting System using the Espressif Framework.],
          ),
        ),
      ),
    ),
    section(
      title: "Projects",
      content: (
        subSection(
          title: "Nutri – Nutrition Tracker app",
          content: list("Engineered and completed a nutrition tracker app in 24 hours using Flutter and Microsoft’s Computer Vision APIs. The app allows one to take picture of their meal and add the nutrition level one ate to their daily intake.")
        ),
        subSection(
          title: "CycSafe Vest",
          content: list("Formulated a custom vest for bikers that uses Arduino and an accelerometer to produce LED lights on the back using hand gestures.")
        ),
        subSection(
          title: "Root Checker",
          content: list([Created a simple ad-free android app using Java and Bash to check if the phone is rooted. It has over 500,000 downloads and has generated *\$2000 in revenue*.])
        ),
      ),
    )
  ),
  sidebar: (
    section(
      title: "Skills",
      content: (
        subSection(
          title: "Languages",
          content: (
            "C",
            "C++",
            "CSS",
            "HTML5",
            "Java",
            "JavaScript",
            "Rust",
            "TypeScript",
          ).join(" • "),
        ),
        subSection(
          title: "Technologies",
          content: (
            "NodeJS",
            "Firebase",
            "Git",
            "Flutter",
            "Express",
            "Arduino",
            "AWS",
            "React",
            "Terraform",
            "Cypress", 
            "Selenium"
          ).join(" • "),
        ),
        subSection(
          title: "concepts",
          content: (
            "Object-oriented programming",
            "Machine Learning",
            "Unit Tests",
            "Functional Programming",
            "Agile Methadology",
          ).join(" • "),
        ),
      ),
    ),
    section(
      title: "Education",
      content: (
        subSection(
          title: [
            #set par(justify: false)
            University of British Columbia
          ],
          subTitle: "BSc in Computer Science",
          content: [
            Graduated: May 2021\
            Vancouver, BC
          ],
        ),
      ),
    ),
    section(
      title: "Volunteer",
      content: (
        subSection(
          title: "Project Roots",
          content: list(
            [Saved over *900,000L* of water], [Generated over *\$6000*],
            [Saved consumers over *\$8000*],
          ),
        ),
      ),
    ),
    section(
      title: "Awards",
      content: (
        subSection(
          content: list(
            [1st Year Computer Science \(BSc\) *Honorable Mention*],
            [Hellmann’s Best New Enactus Project 2019 *1st Prize*],
            [Hellmann’s Food Security Challenge 2018 *1st Prize*],
            [Scotiabank EcoLiving Green Challenge *Regional Champion*],
            [Scotiabank Environmental Challenge *Regional Champion*],
          ),
        ),
      ),
    ),
  ),
)

