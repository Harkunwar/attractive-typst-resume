#let project(
  name: "",
  email: none,
  jobTitle: none,
  themeColor: rgb("#4273B0"),
  contactInfo: (
    phone: none,
    email: none,
    github: none,
    linkedin: none,
    website: none,
  ),
  skills: (
    languages: ()
  ),
  authors: (),
  body) = {

  let themeLink(uri, content) = {
    underline(link(uri, text(themeColor, content)))
  }

  let backgroundTitle(content) = {
    align(center, box(fill: themeColor, text(white, size: 1.25em, weight: "bold", upper(content)), width: 1fr, inset: 0.3em))
  }

  let secondaryTitle(content) = {
    text(weight: "bold", size: 1.125em, upper(content))
  }

  let italicColorTitle(content) = {
    text(weight: "bold", style: "italic", size: 1.125em, themeColor, content)
  }

  set page(
    margin: (left: 10mm, right: 10mm, top: 15mm, bottom: 15mm),
  )
  
  set text(font: "Century Gothic", lang: "en")

  let formattedName = block(upper(text(2.5em, weight: "bold", themeColor, name)))

  let formattedJobTitle = block(upper(text(2.25em, gray.darken(50%), jobTitle)))

  let titleColumn = align(center)[
    #formattedName
    #formattedJobTitle
  ]

  let formattedEmail = themeLink("mailto:"+contactInfo.email, contactInfo.email)

  let formattedGithub = themeLink("https://github.com/"+contactInfo.github, "GitHub.com/"+contactInfo.github)

  let formattedLinkedIn = themeLink("https://www.linkedin.com/in/"+contactInfo.linkedin, "LinkedIn.com/in/"+contactInfo.linkedin)

  let formattedWebsite = themeLink("https://"+contactInfo.website, contactInfo.website)

  let contactInfoColumn = align(center)[
    #formattedEmail\
    #formattedGithub\
    #formattedLinkedIn\
    #formattedWebsite\
  ]

  grid(
    columns: (1fr, 2fr),
    column-gutter: 2em,
    contactInfoColumn,
    titleColumn,
  )
  
  set par(justify: true)

  let formattedLanguageSkills = [
    #secondaryTitle("Languages")\
    #text(skills.languages.join(" • "))
  ]

  let leftSide = [
    #backgroundTitle("Skills")
    #formattedLanguageSkills
  ]

  let formattedWorkExperience = [
    #secondaryTitle("Splunk")\
    #italicColorTitle("Software Engineer")
  ]

  let rightSide = [
    #backgroundTitle("Relevant Work Experience")
    #formattedWorkExperience
  ]

  grid(
    columns: (1fr, 2fr),
    column-gutter: 1em,
    leftSide,
    rightSide,
  )


  // Main body.
  set par(justify: true)
  show: columns.with(3, gutter: 1.3em)

  // body
}