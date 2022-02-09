import scala.concurrent.duration._
resolvers += Resolver.jcenterRepo // hosts Orchid and its components
resolvers += Resolver.bintrayRepo("javaeden", "sbt-plugins") // hosts Orchid SBT plugin
resolvers +=
  "Sonatype OSS Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots"

// factor out common settings
ThisBuild / organization := "com.thec0dewriter"
ThisBuild / scalaVersion := "2.13.1"
// set the Scala version used for the project
ThisBuild / version      := "0.1.0-SNAPSHOT"


lazy val root = (project in file("."))
  .settings(
    name := "Hello"
  )
//
//resolvers += Resolver.jcenterRepo // hosts Orchid and its components
//resolvers += Resolver.bintrayRepo("javaeden", "sbt-plugins") // hosts Orchid SBT plugin
//
//val OrchidVersion = "0.21.2"