# Programming

private and public (qualifiers)
demarcation line
upstream/downstram
client/impl
caller/callee
1st-party/3rd-party
promise/demand
polymorphism and promise/demand
specification


One of the not-so-obvious aspects of programming, that is beneficial to understand early, is that programming is almost never considered in isolation, from the aspect of one lone coder. Programming may be discussed from a perspective of a broader group (like a team), but in general, it is discussed with an eye to the entire community and ecosystem of a programming language.

This is because almost all modern PLs have acknowledged code reuse and an open source approach, pulling project dependencies from the central code and library repository that works in tandem with package and project managers.

That's why it is only in rare occasions that you really are working on a program alone; you will almost always skip reinventing the same old wheel by declaring a dependency on some well-established public package that covers its subject matter phenomenally well; plus, the large community means every newly discovered problems and issues are quickly dealt with. In brief, software component reuse is certainly well established practice, so its practically guaranteed every programmer will use some publically available libraries no matter the size and the purpose of their project.

And when there's public and own code, then there is a demarcation line dividing two distinct jurisdictions and it is usually located on the caller/callee (function) border.
