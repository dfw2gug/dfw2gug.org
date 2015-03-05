title=Introduction to Groovy Meta-Object Protocol
presenter=Jack Frosch
abstract=Introduction to Groovy meta-object programming while examining various techniques for meta-programming in Groovy and a deep dive into the method invocation flow.
date=2013-10-02
type=post
tags=blog
status=published
~~~~~~

## Abstract

Anyone who has programmed with Groovy is familiar with the many useful dynamic behaviors Groovy has seemingly added to Java classes. For instance, in Java we.ve always been able to do String concatenation with the + (plus) operator; i.e. .Hello. + . World. yields .Hello World.. With Groovy, java.lang.String now appears to have a bevy of new behaviors. For instance, with Groovy our Java String class now has the ability to subtract a substring from a String using the . (minus) operator; i.e. .Frisco, TX 75034. . . TX. yields .Frisco, 75034..

How the heck is that possible? Groovy seems to be messing with the Java String class that is tucked away safely in the Java runtime JAR. Is Groovy using some kind of runtime byte code manipulation or Java security hack to manipulate the String class? Not at all. Groovy accomplishes this and most of its dynamic runtime tricks using the Groovy Meta-Object Protocol (MOP).

This presentation will provide an introduction to Groovy meta-object programming. In the presentation, we.ll examine various techniques for meta-programming in Groovy and take a deep dive into the method invocation flow through Groovy.s MOP API. During the presentation, we.ll see numerous demonstrations illustrating various MOP techniques. Time permitting, we.ll explore a few ways Grails, the Groovy web application framework, leverages Groovy meta-programming.

The presentation is intended for Java developers new to Groovy as well as experienced users of Groovy who want to do more than just consume the many predefined dynamic behaviors added by the Groovy JDK.

## Bio

Jack Frosch is a seasoned software developer / architect and entrepreneur, currently supporting IBM on an insurance administration project. He has been developing with Groovy and Grails for about five years, Java for 17 years, and doing object-oriented programming since 1988. A zealous Agile development proponent, Jack is a Certified ScrumMaster and TDD evangelist. Before Java, he was a PowerBuilder and C/C++ developer. In 1999, he formed the Gateway JUG, a St. Louis-based Java User Group and ran the group for almost 14 years. He was also acting-president of the Gateway Groovy Users Group, when its founder (Dave Klein) took an out of town project. He has presented many dozens of times at user groups, companies, and a Borland Developer Conference. He has also formally trained software developers commercially and through user group "group study" classes.

Jack has recently moved back to Texas from Missouri, having lived in Wichita Falls, Austin and Houston / Clearlake in a previous life as USAF pilot and aerospace engineer. His hobbies (when he has time) include keeping up with advances in astronomy, cosmology, and aerospace technologies. He has also recently entered the world of amateur radio and has a General Class operator.s license. He has a B.S. in Aerospace Engineering and completed about 90% of his masters in Physics/Astrophysics at the University of Missouri, St. Louis. He is married with four mostly grown kids who still regularly hit him up for money.

