#Module 9.1 -- Release 1

##What are some of the key design philosophies of the Linux operating system?

*Linux is open source, so it is a very affordable and popular OS to use. It provides some security including password protection, but there are also vulnerabilities that can be avoided by using best practices. It features a command line much like the one that we've been using at DBC. 

##In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

*A VPS is a remote, walled-off piece of memory from another server or computer that is not your local machine. It acts like a computer would. The advantages of using a VPS are that it is safer to experiment within than using your own machine. If you accidentally corrupt your data or run something desctructive, you can always just rebuild the VPS with whatever repo you cloned to it in the first place. The origin repo was unscathed. 

##Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

*It's a risky way to run programs since the root user is the original user on it. Similar to the way that we use git feature branches to protect the master branch of work, user profiles should be used within a Linux system in order to protect the root user. 