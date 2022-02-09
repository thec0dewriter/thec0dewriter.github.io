//resolvers += Resolver.
resolvers += Resolver.jcenterRepo // hosts Orchid and its components
resolvers += Resolver.bintrayRepo("javaeden", "sbt-plugins") // hosts Orchid SBT plugin
resolvers +=
  "Sonatype OSS Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots"
resolvers +=
  "Snapshots" at "https://s01.oss.sonatype.org/content/repositories/snapshots/"

//addSbtPlugin( "io.github.javaeden.orchid" % "sbt-orchid" % "0.21.1" )

val OrchidVersion = "1.0.0-SNAPSHOT"

def orchidComponent( name : String ) = "io.github.copper-leaf.orchid" % name % OrchidVersion

/*
 *  The plugin includes OrchidCore already as a dependency,
 *  but explicitly specifying it helps ensure version consistency
 *  with other components.
 */

libraryDependencies += orchidComponent( "orchid-core" )

/*
 *  Uncomment the components you desire
 */

/* Themes -- see https://orchid.run/themes */
/* Don't forget to set 'orchidTheme' in build.sbt! */

// libraryDependencies += orchidComponent( "OrchidBsDoc" )
// libraryDependencies += orchidComponent( "OrchidCopper" )
// libraryDependencies += orchidComponent( "OrchidEditorial" )
// libraryDependencies += orchidComponent( "OrchidFutureImperfect" )

/* Plugins -- see https://orchid.run/plugins */

// libraryDependencies += orchidComponent( "OrchidPages" )
libraryDependencies += orchidComponent( "orchid-posts-feature" )
// libraryDependencies += orchidComponent( "OrchidPluginDocs" )

libraryDependencies += orchidComponent( "orchid-github-feature")
