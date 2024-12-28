<!DOCTYPE html>
<html><!-- Created by GNU Texinfo 7.0.1, https://www.gnu.org/software/texinfo/ --><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- This is Edition 1.6 of TCP/IP Internetworking with gawk,
for the 5.2.0 (or later) version of the GNU
implementation of AWK.


Copyright (C) 2000, 2001, 2002, 2004, 2009, 2010, 2016, 2019, 2020, 2021, 2023
Free Software Foundation, Inc.


Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3 or
any later version published by the Free Software Foundation; with the
Invariant Sections being "GNU General Public License", the Front-Cover
texts being (a) (see below), and with the Back-Cover Texts being (b)
(see below).  A copy of the license is included in the section entitled
"GNU Free Documentation License".

a. "A GNU Manual"

b. "You have the freedom to
copy and modify this GNU manual.  Buying copies from the FSF
supports it in developing GNU and promoting software freedom." -->
<title>TCP/IP Internetworking With gawk</title>

<meta name="description" content="TCP/IP Internetworking With gawk">
<meta name="keywords" content="TCP/IP Internetworking With gawk">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#Index" rel="index" title="Index">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<link href="https://www.gnu.org/software/gawk/manual/gawkinet/dir.html#Top" rel="up" title="(dir)">
<link href="#Preface" rel="next" title="Preface">
<link href="https://www.gnu.org/software/gawk/manual/gawkinet/dir.html#Top" rel="prev" title="(dir)">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
div.center {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
kbd.kbd {font-style: oblique}
pre.display-preformatted {font-family: inherit}
span:hover a.copiable-link {visibility: visible}
td.printindex-index-entry {vertical-align: top}
td.printindex-index-section {vertical-align: top}
th.entries-header-printindex {text-align:left}
th.sections-header-printindex {text-align:left}
ul.mark-bullet {list-style-type: disc}
ul.toc-numbered-mark {list-style: none}
-->
</style>
<link rel="stylesheet" type="text/css" href="README_files/manual.css">


</head>

<body lang="en">















<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#Preface" accesskey="n" rel="next">Preface</a>, Previous: <a href="https://www.gnu.org/software/gawk/manual/gawkinet/dir.html#Top" accesskey="p" rel="prev">(dir)</a>, Up: <a href="https://www.gnu.org/software/gawk/manual/gawkinet/dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="General-Introduction">General Introduction</h1>

<p>This file documents the networking features in GNU Awk (<code class="command">gawk</code>)
version 4.0 and later.
</p>
<p>This is Edition 1.6 of <cite class="cite">TCP/IP Internetworking with <code class="command">gawk</code></cite>,
for the 5.2.0 (or later) version of the GNU
implementation of AWK.
</p><br>
<br>
<p>Copyright (C) 2000, 2001, 2002, 2004, 2009, 2010, 2016, 2019, 2020, 2021, 2023
Free Software Foundation, Inc.
</p><br>
<br>
<p>Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3 or
any later version published by the Free Software Foundation; with the
Invariant Sections being “GNU General Public License”, the Front-Cover
texts being (a) (see below), and with the Back-Cover Texts being (b)
(see below).  A copy of the license is included in the section entitled
“GNU Free Documentation License”.
</p>
<ol class="enumerate" type="a" start="1">
<li> “A GNU Manual”

</li><li> “You have the freedom to
copy and modify this GNU manual.  Buying copies from the FSF
supports it in developing GNU and promoting software freedom.”
</li></ol>



<div class="element-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-Preface-1" href="#Preface">Preface</a></li>
  <li><a id="toc-Networking-Concepts" href="#Introduction">1 Networking Concepts</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Reliable-Byte_002dstreams-_0028Phone-Calls_0029" href="#Stream-Communications">1.1 Reliable Byte-streams (Phone Calls)</a></li>
    <li><a id="toc-Best_002deffort-Datagrams-_0028Mailed-Letters_0029" href="#Datagram-Communications">1.2 Best-effort Datagrams (Mailed Letters)</a></li>
    <li><a id="toc-The-Internet-Protocols" href="#The-TCP_002fIP-Protocols">1.3 The Internet Protocols</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-The-Basic-Internet-Protocols" href="#Basic-Protocols">1.3.1 The Basic Internet Protocols</a></li>
      <li><a id="toc-TCP-and-UDP-Ports" href="#Ports">1.3.2 TCP and UDP Ports</a></li>
    </ul></li>
    <li><a id="toc-Making-TCP_002fIP-Connections-_0028And-Some-Terminology_0029" href="#Making-Connections">1.4 Making TCP/IP Connections (And Some Terminology)</a></li>
  </ul></li>
  <li><a id="toc-Networking-With-gawk" href="#Using-Networking">2 Networking With <code class="command">gawk</code></a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-gawk_0027s-Networking-Mechanisms" href="#Gawk-Special-Files">2.1 <code class="command">gawk</code>’s Networking Mechanisms</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-The-Fields-of-the-Special-File-Name" href="#Special-File-Fields">2.1.1 The Fields of the Special File Name</a></li>
      <li><a id="toc-Comparing-Protocols-1" href="#Comparing-Protocols">2.1.2 Comparing Protocols</a>
      <ul class="toc-numbered-mark">
        <li><a id="toc-_002finet_002ftcp" href="#File-_002finet_002ftcp">2.1.2.1 <samp class="file">/inet/tcp</samp></a></li>
        <li><a id="toc-_002finet_002fudp" href="#File-_002finet_002fudp">2.1.2.2 <samp class="file">/inet/udp</samp></a></li>
      </ul></li>
    </ul></li>
    <li><a id="toc-Establishing-a-TCP-Connection" href="#TCP-Connecting">2.2 Establishing a TCP Connection</a></li>
    <li><a id="toc-Troubleshooting-Connection-Problems" href="#Troubleshooting">2.3 Troubleshooting Connection Problems</a></li>
    <li><a id="toc-Interacting-with-a-Network-Service" href="#Interacting">2.4 Interacting with a Network Service</a></li>
    <li><a id="toc-Setting-Up-a-Service" href="#Setting-Up">2.5 Setting Up a Service</a></li>
    <li><a id="toc-Reading-Email" href="#Email">2.6 Reading Email</a></li>
    <li><a id="toc-Reading-a-Web-Page" href="#Web-page">2.7 Reading a Web Page</a></li>
    <li><a id="toc-A-Primitive-Web-Service" href="#Primitive-Service">2.8 A Primitive Web Service</a></li>
    <li><a id="toc-A-Web-Service-with-Interaction" href="#Interacting-Service">2.9 A Web Service with Interaction</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-A-Simple-CGI-Library" href="#CGI-Lib">2.9.1 A Simple CGI Library</a></li>
    </ul></li>
    <li><a id="toc-A-Simple-Web-Server" href="#Simple-Server">2.10 A Simple Web Server</a></li>
    <li><a id="toc-Network-Programming-Caveats" href="#Caveats">2.11 Network Programming Caveats</a></li>
    <li><a id="toc-Where-To-Go-From-Here" href="#Challenges">2.12 Where To Go From Here</a></li>
  </ul></li>
  <li><a id="toc-Some-Applications-and-Techniques-1" href="#Some-Applications-and-Techniques">3 Some Applications and Techniques</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-PANIC_003a-An-Emergency-Web-Server" href="#PANIC">3.1 PANIC: An Emergency Web Server</a></li>
    <li><a id="toc-GETURL_003a-Retrieving-Web-Pages" href="#GETURL">3.2 GETURL: Retrieving Web Pages</a></li>
    <li><a id="toc-REMCONF_003a-Remote-Configuration-of-Embedded-Systems" href="#REMCONF">3.3 REMCONF: Remote Configuration of Embedded Systems</a></li>
    <li><a id="toc-URLCHK_003a-Look-for-Changed-Web-Pages" href="#URLCHK">3.4 URLCHK: Look for Changed Web Pages</a></li>
    <li><a id="toc-WEBGRAB_003a-Extract-Links-from-a-Page" href="#WEBGRAB">3.5 WEBGRAB: Extract Links from a Page</a></li>
    <li><a id="toc-STATIST_003a-Graphing-a-Statistical-Distribution" href="#STATIST">3.6 STATIST: Graphing a Statistical Distribution</a></li>
    <li><a id="toc-MAZE_003a-Walking-Through-a-Maze-In-Virtual-Reality" href="#MAZE">3.7 MAZE: Walking Through a Maze In Virtual Reality</a></li>
    <li><a id="toc-MOBAGWHO_003a-a-Simple-Mobile-Agent" href="#MOBAGWHO">3.8 MOBAGWHO: a Simple Mobile Agent</a></li>
    <li><a id="toc-STOXPRED_003a-Stock-Market-Prediction-As-A-Service" href="#STOXPRED">3.9 STOXPRED: Stock Market Prediction As A Service</a></li>
    <li><a id="toc-PROTBASE_003a-Searching-Through-A-Protein-Database" href="#PROTBASE">3.10 PROTBASE: Searching Through A Protein Database</a></li>
  </ul></li>
  <li><a id="toc-Related-Links" href="#Links">4 Related Links</a></li>
  <li><a id="toc-GNU-Free-Documentation-License-1" href="#GNU-Free-Documentation-License">GNU Free Documentation License</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-ADDENDUM_003a-How-to-use-this-License-for-your-documents" href="#ADDENDUM_003a-How-to-use-this-License-for-your-documents">ADDENDUM: How to use this License for your documents</a></li>
  </ul></li>
  <li><a id="toc-Index-1" href="#Index" rel="index">Index</a></li>
</ul>
</div>
</div>
<hr>
<div class="unnumbered-level-extent" id="Preface">
<div class="nav-panel">
<p>
Next: <a href="#Introduction" accesskey="n" rel="next">Networking Concepts</a>, Previous: <a href="#Top" accesskey="p" rel="prev">General Introduction</a>, Up: <a href="#Top" accesskey="u" rel="up">General Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="unnumbered" id="Preface-1">Preface</h2>

<p>In May of 1997, Jürgen Kahrs felt the need for network access
from <code class="command">awk</code>, and, with a little help from me, set about adding
features to do this for <code class="command">gawk</code>.  At that time, he
wrote the bulk of this web page.
</p>
<p>The code and documentation were added to the <code class="command">gawk</code> 3.1 development
tree, and languished somewhat until I could finally get
down to some serious work on that version of <code class="command">gawk</code>.
This finally happened in the middle of 2000.
</p>
<p>Meantime, Jürgen wrote an article about the Internet special
files and ‘<samp class="samp">|&amp;</samp>’ operator for <cite class="cite">Linux Journal</cite>, and made a
networking patch for the production versions of <code class="command">gawk</code>
available from his home page.
In August of 2000 (for <code class="command">gawk</code> 3.0.6), this patch
also made it to the main GNU <code class="command">ftp</code> distribution site.
</p>
<p>For release with <code class="command">gawk</code>, I edited Jürgen’s prose
for English grammar and style, as he is not a native English
speaker.  I also
rearranged the material somewhat for what I felt was a better order of
presentation, and (re)wrote some of the introductory material.
</p>
<p>The majority of this document and the code are his work, and the
high quality and interesting ideas speak for themselves.  It is my
hope that these features will be of significant value to the <code class="command">awk</code>
community.
</p>
<br>
<p>Arnold Robbins <br>
Nof Ayalon, ISRAEL <br>
March, 2001
</p>
<hr>
</div>
<div class="chapter-level-extent" id="Introduction">
<div class="nav-panel">
<p>
Next: <a href="#Using-Networking" accesskey="n" rel="next">Networking With <code class="command">gawk</code></a>, Previous: <a href="#Preface" accesskey="p" rel="prev">Preface</a>, Up: <a href="#Top" accesskey="u" rel="up">General Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Networking-Concepts">1 Networking Concepts</h2>

<p>This chapter provides a (necessarily) brief introduction to
computer networking concepts.  For many applications of <code class="command">gawk</code>
to TCP/IP networking, we hope that this is enough.  For more
advanced tasks, you will need deeper background, and it may be necessary
to switch to lower-level programming in C or C++.
</p>
<p>There are two real-life models for the way computers send messages
to each other over a network.  While the analogies are not perfect,
they are close enough to convey the major concepts.
These two models are the phone system (reliable byte-stream communications),
and the postal system (best-effort datagrams).
</p>

<ul class="mini-toc">
<li><a href="#Stream-Communications" accesskey="1">Reliable Byte-streams (Phone Calls)</a></li>
<li><a href="#Datagram-Communications" accesskey="2">Best-effort Datagrams (Mailed Letters)</a></li>
<li><a href="#The-TCP_002fIP-Protocols" accesskey="3">The Internet Protocols</a></li>
<li><a href="#Making-Connections" accesskey="4">Making TCP/IP Connections (And Some Terminology)</a></li>
</ul>
<hr>
<div class="section-level-extent" id="Stream-Communications">
<div class="nav-panel">
<p>
Next: <a href="#Datagram-Communications" accesskey="n" rel="next">Best-effort Datagrams (Mailed Letters)</a>, Previous: <a href="#Introduction" accesskey="p" rel="prev">Networking Concepts</a>, Up: <a href="#Introduction" accesskey="u" rel="up">Networking Concepts</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Reliable-Byte_002dstreams-_0028Phone-Calls_0029">1.1 Reliable Byte-streams (Phone Calls)</h3>

<p>When you make a phone call, the following steps occur:
</p>
<ol class="enumerate">
<li> You dial a number.

</li><li> The phone system connects to the called party, telling
them there is an incoming call. (Their phone rings.)

</li><li> The other party answers the call, or, in the case of a
computer network, refuses to answer the call.

</li><li> Assuming the other party answers, the connection between
you is now a <em class="dfn">duplex</em> (two-way), <em class="dfn">reliable</em> (no data lost),
sequenced (data comes out in the order sent) data stream.

</li><li> You and your friend may now talk freely, with the phone system
moving the data (your voices) from one end to the other.
From your point of view, you have a direct end-to-end
connection with the person on the other end.
</li></ol>

<p>The same steps occur in a duplex reliable computer networking connection.
There is considerably more overhead in setting up the communications,
but once it’s done, data moves in both directions, reliably, in sequence.
</p>
<hr>
</div>
<div class="section-level-extent" id="Datagram-Communications">
<div class="nav-panel">
<p>
Next: <a href="#The-TCP_002fIP-Protocols" accesskey="n" rel="next">The Internet Protocols</a>, Previous: <a href="#Stream-Communications" accesskey="p" rel="prev">Reliable Byte-streams (Phone Calls)</a>, Up: <a href="#Introduction" accesskey="u" rel="up">Networking Concepts</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Best_002deffort-Datagrams-_0028Mailed-Letters_0029">1.2 Best-effort Datagrams (Mailed Letters)</h3>

<p>Suppose you mail three different documents to your office on the
other side of the country on two different days.  Doing so
entails the following.
</p>
<ol class="enumerate">
<li> Each document travels in its own envelope.

</li><li> Each envelope contains both the sender and the
recipient address.

</li><li> Each envelope may travel a different route to its destination.

</li><li> The envelopes may arrive in a different order from the one
in which they were sent.

</li><li> One or more may get lost in the mail.
(Although, fortunately, this does not occur very often.)

</li><li> In a computer network, one or more <em class="dfn">packets</em>
may also arrive multiple times.  (This doesn’t happen
with the postal system!)

</li></ol>

<p>The important characteristics of datagram communications, like
those of the postal system are thus:
</p>
<ul class="itemize mark-bullet">
<li>Delivery is “best effort;” the data may never get there.

</li><li>Each message is self-contained, including the source and
destination addresses.

</li><li>Delivery is <em class="emph">not</em> sequenced; packets may arrive out
of order, and/or multiple times.

</li><li>Unlike the phone system, overhead is considerably lower.
It is not necessary to set up the call first.
</li></ul>

<p>The price the user pays for the lower overhead of datagram communications
is exactly the lower reliability; it is often necessary for user-level
protocols that use datagram communications to add their own reliability
features on top of the basic communications.
</p>
<hr>
</div>
<div class="section-level-extent" id="The-TCP_002fIP-Protocols">
<div class="nav-panel">
<p>
Next: <a href="#Making-Connections" accesskey="n" rel="next">Making TCP/IP Connections (And Some Terminology)</a>, Previous: <a href="#Datagram-Communications" accesskey="p" rel="prev">Best-effort Datagrams (Mailed Letters)</a>, Up: <a href="#Introduction" accesskey="u" rel="up">Networking Concepts</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="The-Internet-Protocols">1.3 The Internet Protocols</h3>

<p>The Internet Protocol Suite (usually referred to as just TCP/IP)<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>
consists of a number of different protocols at different levels or “layers.”
For our purposes, three protocols provide the fundamental communications
mechanisms.  All other defined protocols are referred to as user-level
protocols (e.g., HTTP, used later in this web page).
</p>

<ul class="mini-toc">
<li><a href="#Basic-Protocols" accesskey="1">The Basic Internet Protocols</a></li>
<li><a href="#Ports" accesskey="2">TCP and UDP Ports</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="Basic-Protocols">
<div class="nav-panel">
<p>
Next: <a href="#Ports" accesskey="n" rel="next">TCP and UDP Ports</a>, Previous: <a href="#The-TCP_002fIP-Protocols" accesskey="p" rel="prev">The Internet Protocols</a>, Up: <a href="#The-TCP_002fIP-Protocols" accesskey="u" rel="up">The Internet Protocols</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="subsection" id="The-Basic-Internet-Protocols">1.3.1 The Basic Internet Protocols</h4>

<dl class="table">
<dt>IP</dt>
<dd><p>The Internet Protocol.  This protocol is almost never used directly by
applications.  It provides the basic packet delivery and routing infrastructure
of the Internet.  Much like the phone company’s switching centers or the Post
Office’s trucks, it is not of much day-to-day interest to the regular user
(or programmer).
It happens to be a best effort datagram protocol.
In the early twenty-first century, there are two versions of this protocol
in use:
</p>
<dl class="table">
<dt>IPv4</dt>
<dd><p>The original version of the Internet Protocol, with 32-bit addresses, on which
most of the current Internet is based.
</p>
</dd>
<dt>IPv6</dt>
<dd><p>The “next generation” of the Internet Protocol, with 128-bit addresses.
This protocol is in wide use in certain parts of the world, but has not
yet replaced IPv4.<a class="footnote" id="DOCF2" href="#FOOT2"><sup>2</sup></a>
</p></dd>
</dl>

<p>Versions of the other protocols that sit “atop” IP exist for both
IPv4 and IPv6. However, as the IPv6 versions are fundamentally the same
as the original IPv4 versions, we will not distinguish further between them.
</p>
</dd>
<dt>UDP</dt>
<dd><p>The User Datagram Protocol.  This is a best effort datagram protocol.
It provides a small amount of extra reliability over IP, and adds
the notion of <em class="dfn">ports</em>, described in <a class="ref" href="#Ports">TCP and UDP Ports</a>.
</p>
</dd>
<dt>TCP</dt>
<dd><p>The Transmission Control Protocol.  This is a duplex, reliable, sequenced
byte-stream protocol, again layered on top of IP, and also providing the
notion of ports.  This is the protocol that you will most likely use
when using <code class="command">gawk</code> for network programming.
</p></dd>
</dl>

<p>All other user-level protocols use either TCP or UDP to do their basic
communications.  Examples are SMTP (Simple Mail Transfer Protocol),
FTP (File Transfer Protocol), and HTTP (HyperText Transfer Protocol).
<a class="index-entry-id" id="index-SMTP-_0028Simple-Mail-Transfer-Protocol_0029"></a>
<a class="index-entry-id" id="index-Simple-Mail-Transfer-Protocol-_0028SMTP_0029"></a>
<a class="index-entry-id" id="index-FTP-_0028File-Transfer-Protocol_0029"></a>
<a class="index-entry-id" id="index-HTTP-_0028Hypertext-Transfer-Protocol_0029"></a>
</p>
<hr>
</div>
<div class="subsection-level-extent" id="Ports">
<div class="nav-panel">
<p>
Previous: <a href="#Basic-Protocols" accesskey="p" rel="prev">The Basic Internet Protocols</a>, Up: <a href="#The-TCP_002fIP-Protocols" accesskey="u" rel="up">The Internet Protocols</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="subsection" id="TCP-and-UDP-Ports">1.3.2 TCP and UDP Ports</h4>

<p>In the postal system, the address on an envelope indicates a physical
location, such as a residence or office building.  But there may be
more than one person at the location; thus you have to further quantify
the recipient by putting a person or company name on the envelope.
</p>
<p>In the phone system, one phone number may represent an entire company,
in which case you need a person’s extension number in order to
reach that individual directly.  Or, when you call a home, you have to
say, “May I please speak to ...” before talking to the person directly.
</p>
<p>IP networking provides the concept of addressing.  An IP address represents
a particular computer, but no more.  In order to reach the mail service
on a system, or the FTP or WWW service on a system, you must have some
way to further specify which service you want.  In the Internet Protocol suite,
this is done with <em class="dfn">port numbers</em>, which represent the services, much
like an extension number used with a phone number.
</p>
<p>Port numbers are 16-bit integers.  Unix and Unix-like systems reserve ports
below 1024 for “well known” services, such as SMTP, FTP, and HTTP.
Numbers 1024 and above may be used by any application, although there is no
promise made that a particular port number is always available.
</p>
<hr>
</div>
</div>
<div class="section-level-extent" id="Making-Connections">
<div class="nav-panel">
<p>
Previous: <a href="#The-TCP_002fIP-Protocols" accesskey="p" rel="prev">The Internet Protocols</a>, Up: <a href="#Introduction" accesskey="u" rel="up">Networking Concepts</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Making-TCP_002fIP-Connections-_0028And-Some-Terminology_0029">1.4 Making TCP/IP Connections (And Some Terminology)</h3>

<p>Two terms come up repeatedly when discussing networking:
<em class="dfn">client</em> and <em class="dfn">server</em>.  For now, we’ll discuss these terms
at the <em class="dfn">connection level</em>, when first establishing connections
between two processes on different systems over a network.
(Once the connection is established, the higher level, or
<em class="dfn">application level</em> protocols,
such as HTTP or FTP, determine who is the client and who is the
server.  Often, it turns out that the client and server are the
same in both roles.)
</p>
<a class="index-entry-id" id="index-servers"></a>
<p>The <em class="dfn">server</em> is the system providing the service, such as the
web server or email server.  It is the <em class="dfn">host</em> (system) which
is <em class="emph">connected to</em> in a transaction.
For this to work though, the server must be expecting connections.
Much as there has to be someone at the office building to answer
the phone,<a class="footnote" id="DOCF3" href="#FOOT3"><sup>3</sup></a> the
server process (usually) has to be started first and be waiting
for a connection.
</p>
<a class="index-entry-id" id="index-clients"></a>
<p>The <em class="dfn">client</em> is the system requesting the service.
It is the system <em class="emph">initiating the connection</em> in a transaction.
(Just as when you pick up the phone to call an office or store.)
</p>
<p>In the TCP/IP framework, each end of a connection is represented by a pair
of (<var class="var">address</var>, <var class="var">port</var>) pairs.  For the duration of the connection,
the ports in use at each end are unique, and cannot be used simultaneously
by other processes on the same system.  (Only after closing a connection
can a new one be built up on the same port. This is contrary to the usual
behavior of fully developed web servers which have to avoid situations
in which they are not reachable. We have to pay this price in order to
enjoy the benefits of a simple communication paradigm in <code class="command">gawk</code>.)
</p>
<a class="index-entry-id" id="index-blocking"></a>
<a class="index-entry-id" id="index-synchronous-communications"></a>
<p>Furthermore, once the connection is established, communications are
<em class="dfn">synchronous</em>.<a class="footnote" id="DOCF4" href="#FOOT4"><sup>4</sup></a> I.e.,
each end waits on the other to finish transmitting, before replying. This
is much like two people in a phone conversation.  While both could talk
simultaneously, doing so usually doesn’t work too well.
</p>
<p>In the case of TCP, the synchronicity is enforced by the protocol when
sending data.  Data writes <em class="dfn">block</em> until the data have been received on the
other end.  For both TCP and UDP, data reads block until there is incoming
data waiting to be read.  This is summarized in the following table,
where an “x” indicates that the given action blocks.
</p>
<table class="multitable">
<tbody><tr><td>TCP</td><td>x</td><td>x</td></tr>
<tr><td>UDP</td><td>x</td><td></td></tr>
</tbody>
</table>

<hr>
</div>
</div>
<div class="chapter-level-extent" id="Using-Networking">
<div class="nav-panel">
<p>
Next: <a href="#Some-Applications-and-Techniques" accesskey="n" rel="next">Some Applications and Techniques</a>, Previous: <a href="#Introduction" accesskey="p" rel="prev">Networking Concepts</a>, Up: <a href="#Top" accesskey="u" rel="up">General Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Networking-With-gawk">2 Networking With <code class="command">gawk</code></h2>

<a class="index-entry-id" id="index-networks"></a>
<a class="index-entry-id" id="index-gawk"></a>
<p>The <code class="command">awk</code> programming language was originally developed as a
pattern-matching language for writing short programs to perform
data manipulation tasks.
<code class="command">awk</code>’s strength is the manipulation of textual data
that is stored in files.
It was never meant to be used for networking purposes.
To exploit its features in a
networking context, it’s necessary to use an access mode for network connections
that resembles the access of files as closely as possible.
</p>
<a class="index-entry-id" id="index-Perl"></a>
<a class="index-entry-id" id="index-Python"></a>
<a class="index-entry-id" id="index-Tcl_002fTk"></a>
<p><code class="command">awk</code> is also meant to be a prototyping language. It is used
to demonstrate feasibility and to play with features and user interfaces.
This can be done with file-like handling of network
connections.
<code class="command">gawk</code> trades the lack
of many of the advanced features of the TCP/IP family of protocols
for the convenience of simple connection handling.
The advanced
features are available when programming in C or Perl. In fact, the
network programming
in this chapter
is very similar to what is described in books such as
<cite class="cite">Internet Programming with Python</cite>,
<cite class="cite">Advanced Perl Programming</cite>,
or
<cite class="cite">Web Client Programming with Perl</cite>.
</p>
<a class="index-entry-id" id="index-Perl-1"></a>
<a class="index-entry-id" id="index-Python-1"></a>
<a class="index-entry-id" id="index-Tcl_002fTk-1"></a>
<p>However, you can do the programming here without first having to learn object-oriented
ideology; underlying languages such as Tcl/Tk, Perl, Python; or all of
the libraries necessary to extend these languages before they are ready for the Internet.
</p>
<a class="index-entry-id" id="index-TCP-_0028Transmission-Control-Protocol_0029"></a>
<p>This chapter demonstrates how to use the TCP protocol. The
UDP protocol is much less important for most users.
</p>

<ul class="mini-toc">
<li><a href="#Gawk-Special-Files" accesskey="1"><code class="command">gawk</code>’s Networking Mechanisms</a></li>
<li><a href="#TCP-Connecting" accesskey="2">Establishing a TCP Connection</a></li>
<li><a href="#Troubleshooting" accesskey="3">Troubleshooting Connection Problems</a></li>
<li><a href="#Interacting" accesskey="4">Interacting with a Network Service</a></li>
<li><a href="#Setting-Up" accesskey="5">Setting Up a Service</a></li>
<li><a href="#Email" accesskey="6">Reading Email</a></li>
<li><a href="#Web-page" accesskey="7">Reading a Web Page</a></li>
<li><a href="#Primitive-Service" accesskey="8">A Primitive Web Service</a></li>
<li><a href="#Interacting-Service" accesskey="9">A Web Service with Interaction</a></li>
<li><a href="#Simple-Server">A Simple Web Server</a></li>
<li><a href="#Caveats">Network Programming Caveats</a></li>
<li><a href="#Challenges">Where To Go From Here</a></li>
</ul>
<hr>
<div class="section-level-extent" id="Gawk-Special-Files">
<div class="nav-panel">
<p>
Next: <a href="#TCP-Connecting" accesskey="n" rel="next">Establishing a TCP Connection</a>, Previous: <a href="#Using-Networking" accesskey="p" rel="prev">Networking With <code class="command">gawk</code></a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="gawk_0027s-Networking-Mechanisms">2.1 <code class="command">gawk</code>’s Networking Mechanisms</h3>

<p>The ‘<samp class="samp">|&amp;</samp>’ operator for use in
communicating with a <em class="dfn">coprocess</em> is described in
<a data-manual="gawk" href="https://www.gnu.org/software/gawk/manual/gawk.html#Two_002dway-I_002fO">Two-way Communications With Another Process</a> in <cite class="cite">GAWK: Effective AWK Programming</cite>.
It shows how to do two-way I/O to a
separate process, sending it data with <code class="code">print</code> or <code class="code">printf</code> and
reading data with <code class="code">getline</code>.  If you haven’t read it already, you should
detour there to do so.
</p>
<p><code class="command">gawk</code> transparently extends the two-way I/O mechanism to simple networking through
the use of special file names.  When a “coprocess” that matches
the special files we are about to describe
is started, <code class="command">gawk</code> creates the appropriate network
connection, and then two-way I/O proceeds as usual.
</p>
<a class="index-entry-id" id="index-TCP_002fIP"></a>
<p>At the C, C++, and Perl level, networking is accomplished
via <em class="dfn">sockets</em>, an Application Programming Interface (API) originally
developed at the University of California at Berkeley that is now used
almost universally for TCP/IP networking.
Socket level programming, while fairly straightforward, requires paying
attention to a number of details, as well as using binary data.  It is not
well-suited for use from a high-level language like <code class="command">awk</code>.
The special files provided in <code class="command">gawk</code> hide the details from
the programmer, making things much simpler and easier to use.
</p>
<a class="index-entry-id" id="index-filenames_002c-for-network-access"></a>
<a class="index-entry-id" id="index-gawk-1"></a>
<a class="index-entry-id" id="index-networks-1"></a>
<p>The special file name for network access is made up of several fields, all
of which are mandatory:
</p>
<div class="example">
<pre class="example-preformatted">/<var class="var">net-type</var>/<var class="var">protocol</var>/<var class="var">localport</var>/<var class="var">hostname</var>/<var class="var">remoteport</var>
</pre></div>

<a class="index-entry-id" id="index-_002finet_002f-files-_0028gawk_0029"></a>
<a class="index-entry-id" id="index-files"></a>
<a class="index-entry-id" id="index-localport-field"></a>
<a class="index-entry-id" id="index-remoteport-field"></a>
<p>The <var class="var">net-type</var> field lets you specify IPv4 versus IPv6, or lets
you allow the system to choose.
</p>

<ul class="mini-toc">
<li><a href="#Special-File-Fields" accesskey="1">The Fields of the Special File Name</a></li>
<li><a href="#Comparing-Protocols" accesskey="2">Comparing Protocols</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="Special-File-Fields">
<div class="nav-panel">
<p>
Next: <a href="#Comparing-Protocols" accesskey="n" rel="next">Comparing Protocols</a>, Previous: <a href="#Gawk-Special-Files" accesskey="p" rel="prev"><code class="command">gawk</code>’s Networking Mechanisms</a>, Up: <a href="#Gawk-Special-Files" accesskey="u" rel="up"><code class="command">gawk</code>’s Networking Mechanisms</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="subsection" id="The-Fields-of-the-Special-File-Name">2.1.1 The Fields of the Special File Name</h4>
<p>This section explains the meaning of all of the fields,
as well as the range of values and the defaults.
All of the fields are mandatory.  To let the system pick a value,
or if the field doesn’t apply to the protocol, specify it as ‘<samp class="samp">0</samp>’ (zero):
</p>
<dl class="table">
<dd><a class="index-entry-id" id="index-network-type-field"></a>
<a class="index-entry-id" id="index-TCP_002fIP-1"></a>
</dd>
<dt><var class="var">net-type</var></dt>
<dd><p>This is one of ‘<samp class="samp">inet4</samp>’ for IPv4, ‘<samp class="samp">inet6</samp>’ for IPv6,
or ‘<samp class="samp">inet</samp>’ to use the system default (which is likely to be IPv4).
For the rest of this document, we will use the generic ‘<samp class="samp">/inet</samp>’
in our descriptions of how <code class="command">gawk</code>’s networking works.
</p>
<a class="index-entry-id" id="index-protocol-field"></a>
<a class="index-entry-id" id="index-TCP_002fIP-2"></a>
</dd>
<dt><var class="var">protocol</var></dt>
<dd><p>Determines which member of the TCP/IP
family of protocols is selected to transport the data across the
network. There are two possible values (always written in lowercase):
‘<samp class="samp">tcp</samp>’ and ‘<samp class="samp">udp</samp>’. The exact meaning of each is
explained later in this section.
</p>
</dd>
<dt id="index-networks-2"><span><var class="var">localport</var><a class="copiable-link" href="#index-networks-2"> ¶</a></span></dt>
<dd><p>Determines which port on the local
machine is used to communicate across the network.  Application-level clients
usually use ‘<samp class="samp">0</samp>’ to indicate they do not care which local port is
used—instead they specify a remote port to connect to.
</p>
<p>It is vital for
application-level servers to use a number different from ‘<samp class="samp">0</samp>’ here
because their service has to be available at a specific publicly known
port number. It is possible to use a name from <samp class="file">/etc/services</samp> here.
</p>
</dd>
<dt id="index-hostname-field"><span><var class="var">hostname</var><a class="copiable-link" href="#index-hostname-field"> ¶</a></span></dt>
<dd><a class="index-entry-id" id="index-servers-1"></a>
<p>Determines which remote host is to
be at the other end of the connection.
Application-level clients must enter a name different from ‘<samp class="samp">0</samp>’.
The name can be either symbolic
(e.g., ‘<samp class="samp">jpl-devvax.jpl.nasa.gov</samp>’) or numeric (e.g., ‘<samp class="samp">128.149.1.143</samp>’).
</p>
<p>Application-level servers must fill
this field with a ‘<samp class="samp">0</samp>’ to indicate their being open for all other hosts
to connect to them and enforce connection level server behavior this way.
It is not possible for an application-level server to restrict its
availability to one remote host by entering a host name here.
</p>
</dd>
<dt><var class="var">remoteport</var></dt>
<dd><p>Determines which port on the remote
machine is used to communicate across the network.
For <samp class="file">/inet/tcp</samp> and <samp class="file">/inet/udp</samp>,
application-level clients <em class="emph">must</em> use a number
other than ‘<samp class="samp">0</samp>’ to indicate to which port on the remote machine
they want to connect.
</p>
<p>Application-level servers must not fill this field with
a ‘<samp class="samp">0</samp>’. Instead they specify a local port to which clients connect.
It is possible to use a name from <samp class="file">/etc/services</samp> here.
</p></dd>
</dl>

<a class="index-entry-id" id="index-networks-3"></a>
<a class="index-entry-id" id="index-gawk-2"></a>
<p>Experts in network programming will notice that the usual
client/server asymmetry found at the level of the socket API is not visible
here. This is for the sake of simplicity of the high-level concept. If this
asymmetry is necessary for your application,
use another language.
For <code class="command">gawk</code>, it is
more important to enable users to write a client program with a minimum
of code. What happens when first accessing a network connection is seen
in the following pseudocode:
</p>
<div class="example smallexample">
<pre class="example-preformatted">if ((name of remote host given) &amp;&amp; (other side accepts connection)) {
  rendez-vous successful; transmit with getline or print
} else {
  if ((other side did not accept) &amp;&amp; (localport == 0))
    exit unsuccessful
  if (TCP) {
    set up a server accepting connections
    this means waiting for the client on the other side to connect
  } else
    ready
}
</pre></div>

<p>The exact behavior of this algorithm depends on the values of the
fields of the special file name. When in doubt, <a class="ref" href="#table_002dinet_002dcomponents">Table 2.1</a>
gives you the combinations of values and their meaning. If this
table is too complicated, focus on the three lines printed in
<strong class="strong">bold</strong>. All the examples in
<a class="ref" href="#Using-Networking">Networking With <code class="command">gawk</code></a>,
use only the
patterns printed in bold letters.
</p>
<div class="float" id="table_002dinet_002dcomponents">

<table class="multitable">
<thead><tr><th width="15%"><small class="sc">PROTOCOL</small></th><th width="15%"><small class="sc">LOCAL PORT</small></th><th width="15%"><small class="sc">HOST NAME</small></th><th width="15%"><small class="sc">REMOTE PORT</small></th><th width="40%"><small class="sc">RESULTING CONNECTION-LEVEL BEHAVIOR</small></th></tr></thead>
<tbody><tr><td width="15%"><strong class="strong">tcp</strong></td><td width="15%"><strong class="strong">0</strong></td><td width="15%"><strong class="strong">x</strong></td><td width="15%"><strong class="strong">x</strong></td><td width="40%"><strong class="strong">Dedicated client, fails if immediately connecting to a
              server on the other side fails</strong></td></tr>
<tr><td width="15%">udp</td><td width="15%">0</td><td width="15%">x</td><td width="15%">x</td><td width="40%">Dedicated client</td></tr>
<tr><td width="15%"><strong class="strong">tcp, udp</strong></td><td width="15%"><strong class="strong">x</strong></td><td width="15%"><strong class="strong">x</strong></td><td width="15%"><strong class="strong">x</strong></td><td width="40%"><strong class="strong">Client, switches to dedicated server if necessary</strong></td></tr>
<tr><td width="15%"><strong class="strong">tcp, udp</strong></td><td width="15%"><strong class="strong">x</strong></td><td width="15%"><strong class="strong">0</strong></td><td width="15%"><strong class="strong">0</strong></td><td width="40%"><strong class="strong">Dedicated server</strong></td></tr>
<tr><td width="15%">tcp, udp</td><td width="15%">x</td><td width="15%">x</td><td width="15%">0</td><td width="40%">Invalid</td></tr>
<tr><td width="15%">tcp, udp</td><td width="15%">0</td><td width="15%">0</td><td width="15%">x</td><td width="40%">Invalid</td></tr>
<tr><td width="15%">tcp, udp</td><td width="15%">x</td><td width="15%">0</td><td width="15%">x</td><td width="40%">Invalid</td></tr>
<tr><td width="15%">tcp, udp</td><td width="15%">0</td><td width="15%">0</td><td width="15%">0</td><td width="40%">Invalid</td></tr>
<tr><td width="15%">tcp, udp</td><td width="15%">0</td><td width="15%">x</td><td width="15%">0</td><td width="40%">Invalid</td></tr>
</tbody>
</table>
<div class="caption"><p><strong class="strong">Table 2.1: </strong><code class="code">/inet</code> Special File Components</p></div></div>
<p>In general, TCP is the preferred mechanism to use.  It is the simplest
protocol to understand and to use.  Use UDP only if circumstances
demand low-overhead.
</p>
<hr>
</div>
<div class="subsection-level-extent" id="Comparing-Protocols">
<div class="nav-panel">
<p>
Previous: <a href="#Special-File-Fields" accesskey="p" rel="prev">The Fields of the Special File Name</a>, Up: <a href="#Gawk-Special-Files" accesskey="u" rel="up"><code class="command">gawk</code>’s Networking Mechanisms</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="subsection" id="Comparing-Protocols-1">2.1.2 Comparing Protocols</h4>

<p>This section develops a pair of programs (sender and receiver)
that do nothing but send a timestamp from one machine to another. The
sender and the receiver are implemented with each of the two protocols
available and demonstrate the differences between them.
</p>

<ul class="mini-toc">
<li><a href="#File-_002finet_002ftcp" accesskey="1"><samp class="file">/inet/tcp</samp></a></li>
<li><a href="#File-_002finet_002fudp" accesskey="2"><samp class="file">/inet/udp</samp></a></li>
</ul>
<hr>
<div class="subsubsection-level-extent" id="File-_002finet_002ftcp">
<div class="nav-panel">
<p>
Next: <a href="#File-_002finet_002fudp" accesskey="n" rel="next"><samp class="file">/inet/udp</samp></a>, Previous: <a href="#Comparing-Protocols" accesskey="p" rel="prev">Comparing Protocols</a>, Up: <a href="#Comparing-Protocols" accesskey="u" rel="up">Comparing Protocols</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="subsubsection" id="g_t_002finet_002ftcp">2.1.2.1 <samp class="file">/inet/tcp</samp></h4>
<a class="index-entry-id" id="index-_002finet_002ftcp-special-files-_0028gawk_0029"></a>
<a class="index-entry-id" id="index-files-1"></a>
<a class="index-entry-id" id="index-TCP-_0028Transmission-Control-Protocol_0029-1"></a>
<p>Once again, always use TCP.
(Use UDP when low overhead is a necessity.)
The first example is the sender
program:
</p>
<div class="example">
<pre class="example-preformatted"># Server
BEGIN {
  print strftime() |&amp; "/inet/tcp/8888/0/0"
  close("/inet/tcp/8888/0/0")
}
</pre></div>

<p>The receiver is very simple:
</p>
<div class="example">
<pre class="example-preformatted"># Client
BEGIN {
  "/inet/tcp/0/localhost/8888" |&amp; getline
  print $0
  close("/inet/tcp/0/localhost/8888")
}
</pre></div>

<p>TCP guarantees that the bytes arrive at the receiving end in exactly
the same order that they were sent. No byte is lost
(except for broken connections), doubled, or out of order. Some
overhead is necessary to accomplish this, but this is the price to pay for
a reliable service.
It does matter which side starts first. The sender/server has to be started
first, and it waits for the receiver to read a line.
</p>
<hr>
</div>
<div class="subsubsection-level-extent" id="File-_002finet_002fudp">
<div class="nav-panel">
<p>
Previous: <a href="#File-_002finet_002ftcp" accesskey="p" rel="prev"><samp class="file">/inet/tcp</samp></a>, Up: <a href="#Comparing-Protocols" accesskey="u" rel="up">Comparing Protocols</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="subsubsection" id="g_t_002finet_002fudp">2.1.2.2 <samp class="file">/inet/udp</samp></h4>
<a class="index-entry-id" id="index-_002finet_002fudp-special-files-_0028gawk_0029"></a>
<a class="index-entry-id" id="index-files-2"></a>
<a class="index-entry-id" id="index-UDP-_0028User-Datagram-Protocol_0029"></a>
<p>The server and client programs that use UDP are almost identical to their TCP counterparts;
only the <var class="var">protocol</var> has changed. As before, it does matter which side
starts first. The receiving side blocks and waits for the sender.
In this case, the receiver/client has to be started first:
</p>
<div class="example">
<pre class="example-preformatted"># Server
BEGIN {
  print strftime() |&amp; "/inet/udp/8888/0/0"
  close("/inet/udp/8888/0/0")
}
</pre></div>

<p>The receiver is almost identical to the TCP receiver:
</p>
<div class="example">
<pre class="example-preformatted"># Client
BEGIN {
  print "hi!" |&amp; "/inet/udp/0/localhost/8888"
  "/inet/udp/0/localhost/8888" |&amp; getline
  print $0
  close("/inet/udp/0/localhost/8888")
}
</pre></div>

<p>In the case of UDP, the initial <code class="code">print</code> command is the one
that actually sends data so that there is a connection.
UDP and “connection” sounds strange to anyone
who has learned that UDP is a connectionless protocol.
Here, “connection” means that the <code class="code">connect()</code> system call
has completed its work and completed the “association”
between a certain socket and an IP address. Thus there are
subtle differences between <code class="code">connect()</code> for TCP and UDP;
see the man page for details.<a class="footnote" id="DOCF5" href="#FOOT5"><sup>5</sup></a>
</p>
<p>UDP cannot guarantee that the datagrams at the receiving end will arrive in exactly
the same order they were sent. Some datagrams could be
lost, some doubled, and some could arrive out of order.
But no overhead is necessary to
accomplish this. This unreliable behavior is good enough for tasks
such as data acquisition, logging, and even stateless services like
the original versions of NFS.
</p>
<hr>
</div>
</div>
</div>
<div class="section-level-extent" id="TCP-Connecting">
<div class="nav-panel">
<p>
Next: <a href="#Troubleshooting" accesskey="n" rel="next">Troubleshooting Connection Problems</a>, Previous: <a href="#Gawk-Special-Files" accesskey="p" rel="prev"><code class="command">gawk</code>’s Networking Mechanisms</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Establishing-a-TCP-Connection">2.2 Establishing a TCP Connection</h3>

<a class="index-entry-id" id="index-TCP-_0028Transmission-Control-Protocol_0029-2"></a>
<a class="index-entry-id" id="index-networks-4"></a>
<a class="index-entry-id" id="index-gawk-3"></a>
<p>Let’s observe a network connection at work. Type in the following program
and watch the output. Within a second, it connects via TCP (<samp class="file">/inet/tcp</samp>)
to a remote server and asks the service
‘<samp class="samp">daytime</samp>’ on the machine what time it is:
</p>
<a class="index-entry-id" id="index-getline-command"></a>
<div class="example">
<pre class="example-preformatted">BEGIN {
  daytime_server     = "time-a-g.nist.gov"
  daytime_connection = "/inet/tcp/0/" daytime_server "/daytime"
  daytime_connection |&amp; getline
  print $0
  daytime_connection |&amp; getline
  print $0
  close(daytime_connection)
}
</pre></div>

<p>Even experienced <code class="command">awk</code> users will find the fourth and sixth line
strange in two respects:
</p>
<ul class="itemize mark-bullet">
<li>A string containing the name of a special file is used as a shell command that pipes its output
into <code class="code">getline</code>. One would rather expect to see the special file
being read like any other file (‘<samp class="samp">getline &lt;
"/inet/tcp/0/time-a-g.nist.gov/daytime"</samp>’).

</li><li><a class="index-entry-id" id="index-_007c-_0028vertical-bar_0029_002c-_007c_0026-operator-_0028I_002fO_0029"></a>
<a class="index-entry-id" id="index-vertical-bar-_0028_007c_0029_002c-_007c_0026-operator-_0028I_002fO_0029"></a>
The operator ‘<samp class="samp">|&amp;</samp>’ has not been part of any <code class="command">awk</code>
implementation (until now).
It is actually the only extension of the <code class="command">awk</code>
language needed (apart from the special files) to introduce network access.
</li></ul>

<a class="index-entry-id" id="index-pipes_002c-networking-and"></a>
<p>The ‘<samp class="samp">|&amp;</samp>’ operator was introduced in <code class="command">gawk</code> 3.1 in order to
overcome the crucial restriction that access to files and pipes in
<code class="command">awk</code> is always unidirectional. It was formerly impossible to use
both access modes on the same file or pipe. Instead of changing the whole
concept of file access, the ‘<samp class="samp">|&amp;</samp>’ operator
behaves exactly like the usual pipe operator except for two additions:
</p>
<ul class="itemize mark-bullet">
<li>Normal shell commands connected to their <code class="command">gawk</code> program with a ‘<samp class="samp">|&amp;</samp>’
pipe can be accessed bidirectionally. The ‘<samp class="samp">|&amp;</samp>’ turns out to be a quite
general, useful, and natural extension of <code class="command">awk</code>.

</li><li>Pipes that consist of a special file name for network connections are not
executed as shell commands. Instead, they can be read and written to, just
like a full-duplex network connection.
</li></ul>

<p>In the earlier example, the ‘<samp class="samp">|&amp;</samp>’ operator tells <code class="code">getline</code>
to read a line from the special file <samp class="file">/inet/tcp/0/time-a-g.nist.gov/daytime</samp>.
We could also have printed a line into the special file. But instead we just
consumed an empty leading line, printed it, then read a line with the time,
printed that, and closed the connection.
(While we could just let <code class="command">gawk</code> close the connection by finishing
the program, in this web page
we are pedantic and always explicitly close the connections.)
</p>
<p>Network services like <samp class="file">daytime</samp> are not really useful because
there are so many better ways to print the current time.
In the early days of TCP networking, such a service may have looked
like a good idea for testing purposes. Later, simple TCP services
like these have been used to teach TCP/IP networking and therefore
you can still find much educational material of good quality on the
Internet about such outdated services. The
<a class="uref" href="https://tf.nist.gov/tf-cgi/servers.cgi">list of servers</a>
that still support the legacy service
<a class="uref" href="https://en.wikipedia.org/wiki/Daytime_Protocol">daytime</a>
can be found at Wikipedia. We hesitated to use this service in
this manual because it is hard to find servers that still support
services like <samp class="file">daytime</samp> openly to the Internet.
Later on we will see that some of these nostalgic
protocols have turned into security risks.
</p>
<hr>
</div>
<div class="section-level-extent" id="Troubleshooting">
<div class="nav-panel">
<p>
Next: <a href="#Interacting" accesskey="n" rel="next">Interacting with a Network Service</a>, Previous: <a href="#TCP-Connecting" accesskey="p" rel="prev">Establishing a TCP Connection</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Troubleshooting-Connection-Problems">2.3 Troubleshooting Connection Problems</h3>
<a class="index-entry-id" id="index-advanced-features_002c-network-connections"></a>
<a class="index-entry-id" id="index-troubleshooting"></a>
<p>It may well be that for some reason the program shown in the previous example does not run on your
machine. When looking at possible reasons for this, you will learn much
about typical problems that arise in network programming.
</p>
<p>For the rest of this chapter, we will assume you work on a POSIX-style
system that supports TCP/IP. If the previous example program does not
run on your machine, it may help to replace the value assigned to the variable
‘<samp class="samp">daytime_server</samp>’ with the name (or the IP address) of another server
from the list mentioned above.
Now you should see the date and time being printed by the program,
otherwise you may have run out of servers that support the ‘<samp class="samp">daytime</samp>’ service.
</p>
<p>Try changing the service to ‘<samp class="samp">chargen</samp>’ or ‘<samp class="samp">ftp</samp>’. This way, the program
connects to other services that should give you some response. If you are
curious, you should have a look at your <samp class="file">/etc/services</samp> file. It could
look like this:
</p>
<div class="example smallexample">
<pre class="example-preformatted"># /etc/services:
#
# Network services, Internet style
#
# Name     Number/Protocol  Alternate name # Comments

echo        7/tcp
echo        7/udp
discard     9/tcp         sink null
discard     9/udp         sink null
daytime     13/tcp
daytime     13/udp
chargen     19/tcp        ttytst source
chargen     19/udp        ttytst source
ftp         21/tcp
telnet      23/tcp
smtp        25/tcp        mail
finger      79/tcp
www         80/tcp        http      # WorldWideWeb HTTP
www         80/udp        # HyperText Transfer Protocol
pop-2       109/tcp       postoffice    # POP version 2
pop-2       109/udp
pop-3       110/tcp       # POP version 3
pop-3       110/udp
nntp        119/tcp       readnews untp  # USENET News
irc         194/tcp       # Internet Relay Chat
irc         194/udp
…
</pre></div>

<a class="index-entry-id" id="index-Linux"></a>
<a class="index-entry-id" id="index-GNU_002fLinux"></a>
<a class="index-entry-id" id="index-Microsoft-Windows"></a>
<p>Here, you find a list of services that traditional Unix machines usually
support. If your GNU/Linux machine does not do so, it may be that these
services are switched off in some startup script. Systems running some
flavor of Microsoft Windows usually do <em class="emph">not</em> support these services.
Nevertheless, it <em class="emph">is</em> possible to do networking with <code class="command">gawk</code> on
Microsoft
Windows.<a class="footnote" id="DOCF6" href="#FOOT6"><sup>6</sup></a>
The first column of the file gives the name of the service, and
the second column gives a unique number and the protocol that one can use to connect to
this service.
The rest of the line is treated as a comment.
You see that some services (‘<samp class="samp">echo</samp>’) support TCP as
well as UDP.
</p>
<hr>
</div>
<div class="section-level-extent" id="Interacting">
<div class="nav-panel">
<p>
Next: <a href="#Setting-Up" accesskey="n" rel="next">Setting Up a Service</a>, Previous: <a href="#Troubleshooting" accesskey="p" rel="prev">Troubleshooting Connection Problems</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Interacting-with-a-Network-Service">2.4 Interacting with a Network Service</h3>

<p>The next program begins really interacting with a
network service by printing something into the special file. It asks the
so-called <code class="command">finger</code> service if a user of the machine is logged in. When
testing this program, try to change the variable ‘<samp class="samp">finger_server</samp>’
to some other machine name in your local network:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  finger_server     = "andrew.cmu.edu"
  finger_connection = "/inet/tcp/0/" finger_server "/finger"
  print "wnace" |&amp; finger_connection
  while ((finger_connection |&amp; getline) &gt; 0)
    print $0
  close(finger_connection)
}
</pre></div>

<p>After telling the service on the machine which user to look for,
the program repeatedly reads lines that come as a reply. When no more
lines are available (because the service has closed the connection), the
program also closes the connection. If you tried to replace ‘<samp class="samp">finger_server</samp>’
with some other server name, the script probably reported being unable to
open the connection, because most servers today no longer support this
service.  Try replacing the login name of Professor Nace (<code class="code">wnace</code>)
with another login name (like <code class="code">help</code>). You will receive a list of
login names similar to the one you asked for. In the 1980s you could get
a list of all users currently logged in by asking for an empty string (<code class="code">""</code>).
</p>
<a class="index-entry-id" id="index-Linux-1"></a>
<a class="index-entry-id" id="index-GNU_002fLinux-1"></a>
<p>The final <code class="code">close()</code> call could be safely deleted from
the above script, because the operating system closes any open connection
by default when a script reaches the end of execution. But, in order to avoid
portability problems, it is best to always close connections explicitly.
With the Linux kernel,
for example, proper closing results in flushing of buffers. Letting
the close happen by default may result in discarding buffers.
</p>
<p>When looking at <samp class="file">/etc/services</samp> you may have noticed that the
‘<samp class="samp">daytime</samp>’ service is also available with ‘<samp class="samp">udp</samp>’. In the earlier
examples, change ‘<samp class="samp">tcp</samp>’ to ‘<samp class="samp">udp</samp>’ and try if the ‘<samp class="samp">finger</samp>’ and ‘<samp class="samp">daytime</samp>’
clients still work as expected. They probably will not respond because
a wise administrator switched off these services.
But if they do, you may see the expected day and time message.
The program then hangs, because it waits for more lines to come from the
service. However, they never do. This behavior is a consequence of the
differences between TCP and UDP. When using UDP, neither party is
automatically informed about the other closing the connection.
Continuing to experiment this way reveals many other subtle
differences between TCP and UDP. To avoid such trouble, you should always
remember the advice Douglas E. Comer and David Stevens give in
Volume III of their series <cite class="cite">Internetworking With TCP</cite>
(page 14):
</p>
<a class="index-entry-id" id="index-TCP-_0028Transmission-Control-Protocol_0029-3"></a>
<a class="index-entry-id" id="index-UDP-_0028User-Datagram-Protocol_0029-1"></a>
<blockquote class="quotation">
<p>When designing client-server applications, beginners are strongly
advised to use TCP because it provides reliable, connection-oriented
communication. Programs only use UDP if the application protocol handles
reliability, the application requires hardware broadcast or multicast,
or the application cannot tolerate virtual circuit overhead.
</p></blockquote>

<p>This advice is actually quite dated and we hesitated to repeat it here.
But we left it in because we are still observing beginners running
into this pitfall. While this advice has aged quite well, some other
ideas from the 1980s have not. The ‘<samp class="samp">finger</samp>’ service may still be
available in Microsoft
<a class="uref" href="https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/finger">Windows Server 2019</a>,
but it turned out to be a never-ending cause of trouble. First of all,
it is now obvious that a server should never reveal personal data about
its users to anonymous client software that connects over the wild wild Internet.
So every server on the Internet should reject ‘<samp class="samp">finger</samp>’ requests
(by disabling the port and by disabling the software serving this port).
But things got even worse in 2020 when it turned out that even the client
software (the ‘<samp class="samp">finger</samp>’ command documented in the link above) is a
security problem. A tool called
<a class="uref" href="https://seclists.org/fulldisclosure/2020/Sep/30">DarkFinger</a>
allows to leverage the Microsoft Windows ‘<samp class="samp">finger.exe</samp>’ as a file downloader
and help evade network security devices.
</p>
<hr>
</div>
<div class="section-level-extent" id="Setting-Up">
<div class="nav-panel">
<p>
Next: <a href="#Email" accesskey="n" rel="next">Reading Email</a>, Previous: <a href="#Interacting" accesskey="p" rel="prev">Interacting with a Network Service</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Setting-Up-a-Service">2.5 Setting Up a Service</h3>
<a class="index-entry-id" id="index-networks-5"></a>
<a class="index-entry-id" id="index-gawk-4"></a>
<p>The preceding programs behaved as clients that connect to a server somewhere
on the Internet and request a particular service. Now we set up such a
service to mimic the behavior of the ‘<samp class="samp">daytime</samp>’ service.
Such a server does not know in advance who is going to connect to it over
the network. Therefore, we cannot insert a name for the host to connect to
in our special file name.
</p>
<p>Start the following program in one window. Notice that the service does
not have the name ‘<samp class="samp">daytime</samp>’, but the number ‘<samp class="samp">8888</samp>’.
From looking at <samp class="file">/etc/services</samp>, you know that names like ‘<samp class="samp">daytime</samp>’
are just mnemonics for predetermined 16-bit integers.
Only the system administrator (<code class="code">root</code>) could enter
our new service into <samp class="file">/etc/services</samp> with an appropriate name.
Also notice that the service name has to be entered into a different field
of the special file name because we are setting up a server, not a client:
</p>
<a class="index-entry-id" id="index-finger-utility"></a>
<a class="index-entry-id" id="index-servers-2"></a>
<div class="example">
<pre class="example-preformatted">BEGIN {
  print strftime() |&amp; "/inet/tcp/8888/0/0"
  close("/inet/tcp/8888/0/0")
}
</pre></div>

<p>Now open another window on the same machine.
Copy the client program given as the first example
(see <a class="pxref" href="#TCP-Connecting">Establishing a TCP Connection</a>)
to a new file and edit it, changing the variable ‘<samp class="samp">daytime_server</samp>’ to
‘<samp class="samp">localhost</samp>’ and the port name ‘<samp class="samp">daytime</samp>’ to ‘<samp class="samp">8888</samp>’.
Then start the modified client.  You should get a reply like this:
</p>
<div class="example">
<pre class="example-preformatted">$ <kbd class="kbd">gawk -f awklib/eg/network/daytimeclient.awk</kbd>
-| Sun Dec 27 17:33:57 CET 2020
-| Sun Dec 27 17:33:57 CET 2020
</pre></div>

<p>Both programs explicitly close the connection.
</p>
<a class="index-entry-id" id="index-Microsoft-Windows-1"></a>
<a class="index-entry-id" id="index-networks-6"></a>
<a class="index-entry-id" id="index-Unix_002c-network-ports-and"></a>
<p>Now we will intentionally make a mistake to see what happens when the name
‘<samp class="samp">8888</samp>’ (the port) is already used by another service.
Start the server
program in both windows. The first one works, but the second one
complains that it could not open the connection. Each port on a single
machine can only be used by one server program at a time. Now terminate the
server program and change the name ‘<samp class="samp">8888</samp>’ to ‘<samp class="samp">echo</samp>’. After restarting it,
the server program does not run any more, and you know why: there is already
an ‘<samp class="samp">echo</samp>’ service running on your machine. But even if this isn’t true,
you would not get
your own ‘<samp class="samp">echo</samp>’ server running on a Unix machine,
because the ports with numbers smaller
than 1024 (‘<samp class="samp">echo</samp>’ is at port 7) are reserved for <code class="code">root</code>.
On machines running some flavor of Microsoft Windows, there is no restriction
that reserves ports 1 to 1024 for a privileged user; hence, you can start
an ‘<samp class="samp">echo</samp>’ server there.
Even in later version of Microsoft Windows, this restriction of
the Unix world seems to have never been adopted
<a class="uref" href="https://social.technet.microsoft.com/Forums/windowsserver/en-US/334f0770-eda9-475a-a27f-46b80ab7e872/does-windows10server2016-have-privileged-ports-?forum=ws2016"><cite class="cite">Does windows(10/server-2016) have privileged ports?</cite></a>.
In Microsoft Windows it is the level of the firewall that handles
port access restrictions, not the level of the operating system’s kernel.
</p>
<p>Turning this short server program into something really useful is simple.
Imagine a server that first reads a file name from the client through the
network connection, then does something with the file and
sends a result back to the client. The server-side processing
could be:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  NetService = "/inet/tcp/8888/0/0"
  NetService |&amp; getline       # sets $0 and the fields
  CatPipe    = ("cat " $1)
  while ((CatPipe | getline) &gt; 0)
    print $0 |&amp; NetService
  close(NetService)
}
</pre></div>

<p>and we would
have a remote copying facility. Such a server reads the name of a file
from any client that connects to it and transmits the contents of the
named file across the net. The server-side processing could also be
the execution of a command that is transmitted across the network. From this
example, you can see how simple it is to open up a security hole on your
machine. If you allow clients to connect to your machine and
execute arbitrary commands, anyone would be free to do ‘<samp class="samp">rm -rf *</samp>’.
</p>
<p>The client side connects to port number 8888 on the server side and
sends the name of the desired file to be sent across the same TCP
connection. The main loop reads all content coming in from the TCP
connection line-wise and prints it.
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  NetService = "/inet/tcp/0/localhost/8888"
  print "README" |&amp; NetService
  while ((NetService |&amp; getline) &gt; 0)
    print $0
  close(NetService)
}
</pre></div>

<hr>
</div>
<div class="section-level-extent" id="Email">
<div class="nav-panel">
<p>
Next: <a href="#Web-page" accesskey="n" rel="next">Reading a Web Page</a>, Previous: <a href="#Setting-Up" accesskey="p" rel="prev">Setting Up a Service</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Reading-Email">2.6 Reading Email</h3>
<a class="index-entry-id" id="index-RFC-1939"></a>
<a class="index-entry-id" id="index-RFC-821"></a>
<a class="index-entry-id" id="index-gawk-5"></a>
<a class="index-entry-id" id="index-networks-7"></a>
<a class="index-entry-id" id="index-POP-_0028Post-Office-Protocol_0029"></a>
<a class="index-entry-id" id="index-SMTP-_0028Simple-Mail-Transfer-Protocol_0029-1"></a>
<a class="index-entry-id" id="index-Post-Office-Protocol-_0028POP_0029"></a>
<a class="index-entry-id" id="index-Simple-Mail-Transfer-Protocol-_0028SMTP_0029-1"></a>
<p>The distribution of email is usually done by dedicated email servers that
communicate with your machine using special protocols.
In this section we show how simple the basic steps are.<a class="footnote" id="DOCF7" href="#FOOT7"><sup>7</sup></a>
</p>
<p>To receive email, we use the Post Office Protocol (POP).  Sending can
be done with the much older Simple Mail Transfer Protocol (SMTP).
</p>
<a class="index-entry-id" id="index-email"></a>
<p>When you type in the following program, replace the <var class="var">emailhost</var> by the
name of your local email server. Ask your administrator if the server has a
POP service, and then use its name or number in the program below.
Now the program is ready to connect to your email server, but it will not
succeed in retrieving your mail because it does not yet know your login
name or password. Replace them in the program and it
shows you the first email the server has in store:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  POPService  = "/inet/tcp/0/<var class="var">emailhost</var>/pop3"
  RS = ORS = "\r\n"
  print "user <var class="var">name</var>"             |&amp; POPService
  POPService                    |&amp; getline
  print "pass <var class="var">password</var>"         |&amp; POPService
  POPService                    |&amp; getline
  print "retr 1"                |&amp; POPService
  POPService                    |&amp; getline
  if ($1 != "+OK") exit
  print "quit"                  |&amp; POPService
  RS = "\r\n\\.\r\n"
  POPService |&amp; getline
  print $0
  close(POPService)
}
</pre></div>

<a class="index-entry-id" id="index-RFC-1939-1"></a>
<a class="index-entry-id" id="index-record-separators"></a>
<a class="index-entry-id" id="index-RS-variable"></a>
<a class="index-entry-id" id="index-ORS-variable"></a>
<a class="index-entry-id" id="index-POP-_0028Post-Office-Protocol_0029-1"></a>
<p>We redefine the record separators <code class="code">RS</code> and <code class="code">ORS</code> because the
protocol (POP) requires CR-LF to separate lines. After identifying
yourself to the email service, the command ‘<samp class="samp">retr 1</samp>’ instructs the
service to send the first of all your email messages in line. If the service
replies with something other than ‘<samp class="samp">+OK</samp>’, the program exits; maybe there
is no email. Otherwise, the program first announces that it intends to finish
reading email, and then redefines <code class="code">RS</code> in order to read the entire
email as multiline input in one record. From the POP RFC, we know that the body
of the email always ends with a single line containing a single dot.
The program looks for this using ‘<samp class="samp">RS = "\r\n\\.\r\n"</samp>’.
When it finds this sequence in the mail message, it quits.
You can invoke this program as often as you like; it does not delete the
message it reads, but instead leaves it on the server.
</p>
<hr>
</div>
<div class="section-level-extent" id="Web-page">
<div class="nav-panel">
<p>
Next: <a href="#Primitive-Service" accesskey="n" rel="next">A Primitive Web Service</a>, Previous: <a href="#Email" accesskey="p" rel="prev">Reading Email</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Reading-a-Web-Page">2.7 Reading a Web Page</h3>
<a class="index-entry-id" id="index-web-pages"></a>
<a class="index-entry-id" id="index-HTTP-_0028Hypertext-Transfer-Protocol_0029-1"></a>
<a class="index-entry-id" id="index-RFC-2068"></a>
<a class="index-entry-id" id="index-RFC-2616"></a>

<p>Retrieving a web page from a web server is as simple as
retrieving email from an email server. We only have to use a
similar, but not identical, protocol and a different port. The name of the
protocol is HyperText Transfer Protocol (HTTP) and the port number is usually
80.  As in the preceding section, ask your administrator about the
name of your local web server or proxy web server and its port number
for HTTP requests.
</p>
<p>The following program employs a rather crude approach toward retrieving a
web page. It uses the prehistoric syntax of HTTP 0.9, which almost all
web servers still support. The most noticeable thing about it is that the
program directs the request to the local proxy server whose name you insert
in the special file name (which in turn calls ‘<samp class="samp">www.yahoo.com</samp>’):
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  RS = ORS = "\r\n"
  HttpService = "/inet/tcp/0/<var class="var">proxy</var>/80"
  print "GET http://www.yahoo.com"     |&amp; HttpService
  while ((HttpService |&amp; getline) &gt; 0)
     print $0
  close(HttpService)
}
</pre></div>

<a class="index-entry-id" id="index-RFC-1945"></a>
<a class="index-entry-id" id="index-record-separators-1"></a>
<a class="index-entry-id" id="index-RS-variable-1"></a>
<a class="index-entry-id" id="index-ORS-variable-1"></a>
<a class="index-entry-id" id="index-HTTP-_0028Hypertext-Transfer-Protocol_0029-2"></a>
<a class="index-entry-id" id="index-HTML-_0028Hypertext-Markup-Language_0029"></a>
<a class="index-entry-id" id="index-Hypertext-Markup-Language-_0028HTML_0029"></a>
<p>Again, lines are separated by a redefined <code class="code">RS</code> and <code class="code">ORS</code>.
The <code class="code">GET</code> request that we send to the server is the only kind of
HTTP request that existed when the web was created in the early 1990s.
HTTP calls this <code class="code">GET</code> request a “method,” which tells the
service to transmit a web page (here the home page of the Yahoo! search
engine). Version 1.0 added the request methods <code class="code">HEAD</code> and
<code class="code">POST</code>. The current version of HTTP is 1.1,<a class="footnote" id="DOCF8" href="#FOOT8"><sup>8</sup></a><a class="footnote" id="DOCF9" href="#FOOT9"><sup>9</sup></a>
and knows the additional request
methods <code class="code">OPTIONS</code>, <code class="code">PUT</code>, <code class="code">DELETE</code>, and <code class="code">TRACE</code>.
You can fill in any valid web address, and the program prints the
HTML code of that page to your screen.
</p>
<p>Notice the similarity between the responses of the POP and HTTP
services. First, you get a header that is terminated by an empty line, and
then you get the body of the page in HTML.  The lines of the headers also
have the same form as in POP. There is the name of a parameter,
then a colon, and finally the value of that parameter.
</p>
<a class="index-entry-id" id="index-CGI-_0028Common-Gateway-Interface_0029"></a>
<a class="index-entry-id" id="index-GIF-image-format"></a>
<a class="index-entry-id" id="index-PNG-image-format"></a>
<a class="index-entry-id" id="index-images"></a>
<p>Images (<samp class="file">.png</samp> or <samp class="file">.gif</samp> files) can also be retrieved this way,
but then you
get binary data that should be redirected into a file. Another
application is calling a CGI (Common Gateway Interface) script on some
server. CGI scripts are used when the contents of a web page are not
constant, but generated on demand at the moment you send a request
for the page. For example, to get a detailed report about the current
quotes of Motorola stock shares, call a CGI script at Yahoo! with
the following:
</p>
<div class="example">
<pre class="example-preformatted">get = "GET http://quote.yahoo.com/q?s=MOT&amp;d=t"
print get |&amp; HttpService
</pre></div>

<p>You can also request weather reports this way.
</p>
<hr>
</div>
<div class="section-level-extent" id="Primitive-Service">
<div class="nav-panel">
<p>
Next: <a href="#Interacting-Service" accesskey="n" rel="next">A Web Service with Interaction</a>, Previous: <a href="#Web-page" accesskey="p" rel="prev">Reading a Web Page</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="A-Primitive-Web-Service">2.8 A Primitive Web Service</h3>
<a class="index-entry-id" id="index-web-service"></a>
<p>Now we know enough about HTTP to set up a primitive web service that just
says <code class="code">"Hello, world"</code> when someone connects to it with a browser.
Compared
to the situation in the preceding section, our program changes the role. It
tries to behave just like the server we have observed. Since we are setting
up a server here, we have to insert the port number in the ‘<samp class="samp">localport</samp>’
field of the special file name. The other two fields (<var class="var">hostname</var> and
<var class="var">remoteport</var>) have to contain a ‘<samp class="samp">0</samp>’ because we do not know in
advance which host will connect to our service.
</p>
<p>In the early 1990s, all a server had to do was send an HTML document and
close the connection. Here, we adhere to the modern syntax of HTTP.
The steps are as follows:
</p>
<ol class="enumerate">
<li> Send a status line telling the web browser that everything
is okay.

</li><li> Send a line to tell the browser how many bytes follow in the
body of the message. This was not necessary earlier because both
parties knew that the document ended when the connection closed. Nowadays
it is possible to stay connected after the transmission of one web page.
This avoids the network traffic necessary for repeatedly establishing
TCP connections for requesting several images. Thus, it is necessary to tell
the receiving party how many bytes will be sent. The header is terminated
as usual with an empty line.

</li><li> Send the <code class="code">"Hello, world"</code> body
in HTML.
The useless <code class="code">while</code> loop swallows the request of the browser.
We could actually omit the loop, and on most machines the program would still
work.
First, start the following program:
</li></ol>

<div class="example">
<pre class="example-preformatted">BEGIN {
  RS = ORS = "\r\n"
  HttpService = "/inet/tcp/8080/0/0"
  Hello = "&lt;HTML&gt;&lt;HEAD&gt;" \
          "&lt;TITLE&gt;A Famous Greeting&lt;/TITLE&gt;&lt;/HEAD&gt;" \
          "&lt;BODY&gt;&lt;H1&gt;Hello, world&lt;/H1&gt;&lt;/BODY&gt;&lt;/HTML&gt;"
  Len = length(Hello) + length(ORS)
  print "HTTP/1.0 200 OK"          |&amp; HttpService
  print "Content-Length: " Len ORS |&amp; HttpService
  print Hello                      |&amp; HttpService
  while ((HttpService |&amp; getline) &gt; 0)
     continue;
  close(HttpService)
}
</pre></div>

<p>Now, on the same machine, start your favorite browser and let it point to
<a class="uref" href="http://localhost:8080/">http://localhost:8080</a> (the browser needs to know on which port
our server is listening for requests). If this does not work, the browser
probably tries to connect to a proxy server that does not know your machine.
If so, change the browser’s configuration so that the browser does not try to
use a proxy to connect to your machine.
</p>
<hr>
</div>
<div class="section-level-extent" id="Interacting-Service">
<div class="nav-panel">
<p>
Next: <a href="#Simple-Server" accesskey="n" rel="next">A Simple Web Server</a>, Previous: <a href="#Primitive-Service" accesskey="p" rel="prev">A Primitive Web Service</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="A-Web-Service-with-Interaction">2.9 A Web Service with Interaction</h3>
<a class="index-entry-id" id="index-gawk-6"></a>
<a class="index-entry-id" id="index-HTTP-server_002c-core-logic"></a>
<a class="index-entry-id" id="index-servers-3"></a>


<p>Setting up a web service that allows user interaction is more difficult and
shows us the limits of network access in <code class="command">gawk</code>. In this section,
we develop  a main program (a <code class="code">BEGIN</code> pattern and its action)
that will become the core of event-driven execution controlled by a
graphical user interface (GUI).
Each HTTP event that the user triggers by some action within the browser
is received in this central procedure. Parameters and menu choices are
extracted from this request, and an appropriate measure is taken according to
the user’s choice:
</p>
<a class="index-entry-id" id="index-HTTP-server_002c-core-logic-1"></a>
<div class="example">
<pre class="example-preformatted">BEGIN {
  if (MyHost == "") {
     "uname -n" | getline MyHost
     close("uname -n")
  }
  if (MyPort ==  0) MyPort = 8080
  HttpService = "/inet/tcp/" MyPort "/0/0"
  MyPrefix    = "http://" MyHost ":" MyPort
  SetUpServer()
  while ("awk" != "complex") {
    # header lines are terminated this way
    RS = ORS = "\r\n"
    Status   = 200          # this means OK
    Reason   = "OK"
    Header   = TopHeader
    Document = TopDoc
    Footer   = TopFooter
    if        (GETARG["Method"] == "GET") {
        HandleGET()
    } else if (GETARG["Method"] == "HEAD") {
        # not yet implemented
    } else if (GETARG["Method"] != "") {
        print "bad method", GETARG["Method"]
    }
    Prompt = Header Document Footer
    print "HTTP/1.0", Status, Reason       |&amp; HttpService
    print "Connection: Close"              |&amp; HttpService
    print "Pragma: no-cache"               |&amp; HttpService
    len = length(Prompt) + length(ORS)
    print "Content-length:", len           |&amp; HttpService
    print ORS Prompt                       |&amp; HttpService
    # ignore all the header lines
    while ((HttpService |&amp; getline) &gt; 0)
        ;
    # stop talking to this client
    close(HttpService)
    # wait for new client request
    HttpService |&amp; getline
    # do some logging
    print systime(), strftime(), $0
    # read request parameters
    CGI_setup($1, $2, $3)
  }
}
</pre></div>

<p>This web server presents menu choices in the form of HTML links.
Therefore, it has to tell the browser the name of the host it is
residing on. When starting the server, the user may supply the name
of the host from the command line with ‘<samp class="samp">gawk -v MyHost="Rumpelstilzchen"</samp>’.
If the user does not do this, the server looks up the name of the host it is
running on for later use as a web address in HTML documents. The same
applies to the port number. These values are inserted later into the
HTML content of the web pages to refer to the home system.
</p>
<p>Each server that is built around this core has to initialize some
application-dependent variables (such as the default home page) in a function
<code class="code">SetUpServer()</code>, which is called immediately before entering the
infinite loop of the server. For now, we will write an instance that
initiates a trivial interaction.  With this home page, the client user
can click on two possible choices, and receive the current date either
in human-readable format or in seconds since 1970:
</p>
<div class="example">
<pre class="example-preformatted">function SetUpServer() {
  TopHeader = "&lt;HTML&gt;&lt;HEAD&gt;"
  TopHeader = TopHeader \
     "&lt;title&gt;My name is GAWK, GNU AWK&lt;/title&gt;&lt;/HEAD&gt;"
  TopDoc    = "&lt;BODY&gt;&lt;h2&gt;\
    Do you prefer your date &lt;A HREF=" MyPrefix \
    "/human&gt;human&lt;/A&gt; or \
    &lt;A HREF=" MyPrefix "/POSIX&gt;POSIXed&lt;/A&gt;?&lt;/h2&gt;" ORS ORS
  TopFooter = "&lt;/BODY&gt;&lt;/HTML&gt;"
}
</pre></div>

<p>On the first run through the main loop, the default line terminators are
set and the default home page is copied to the actual home page. Since this
is the first run, <code class="code">GETARG["Method"]</code> is not initialized yet, hence the
case selection over the method does nothing. Now that the home page is
initialized, the server can start communicating to a client browser.
</p>
<a class="index-entry-id" id="index-RFC-2068-1"></a>
<p>It does so by printing the HTTP header into the network connection
(‘<samp class="samp">print … |&amp; HttpService</samp>’). This command blocks execution of
the server script until a client connects.
</p>
<p>If you compare this server
script with the primitive one we wrote before, you will notice
two additional lines in the header. The first instructs the browser
to close the connection after each request. The second tells the
browser that it should never try to <em class="emph">remember</em> earlier requests
that had identical web addresses (no caching). Otherwise, it could happen
that the browser retrieves the time of day in the previous example just once,
and later it takes the web page from the cache, always displaying the same
time of day although time advances each second.
</p>
<p>Having supplied the initial home page to the browser with a valid document
stored in the parameter <code class="code">Prompt</code>, it closes the connection and waits
for the next request.  When the request comes, a log line is printed that
allows us to see which request the server receives. The final step in the
loop is to call the function <code class="code">CGI_setup()</code>, which reads all the lines
of the request (coming from the browser), processes them, and stores the
transmitted parameters in the array <code class="code">PARAM</code>. The complete
text of these application-independent functions can be found in
<a class="ref" href="#CGI-Lib">A Simple CGI Library</a>.
For now, we use a simplified version of <code class="code">CGI_setup()</code>:
</p>
<div class="example">
<pre class="example-preformatted">function CGI_setup(   method, uri, version, i) {
  delete GETARG;         delete MENU;        delete PARAM
  GETARG["Method"] = $1
  GETARG["URI"] = $2
  GETARG["Version"] = $3
  i = index($2, "?")
  # is there a "?" indicating a CGI request?
</pre><div class="group"><pre class="example-preformatted">  if (i &gt; 0) {
    split(substr($2, 1, i-1), MENU, "[/:]")
    split(substr($2, i+1), PARAM, "&amp;")
    for (i in PARAM) {
      j = index(PARAM[i], "=")
      GETARG[substr(PARAM[i], 1, j-1)] = \
                                  substr(PARAM[i], j+1)
    }
  } else {    # there is no "?", no need for splitting PARAMs
    split($2, MENU, "[/:]")
  }
</pre></div><pre class="example-preformatted">}
</pre></div>

<p>At first, the function clears all variables used for
global storage of request parameters. The rest of the function serves
the purpose of filling the global parameters with the extracted new values.
To accomplish this, the name of the requested resource is split into
parts and stored for later evaluation. If the request contains a ‘<samp class="samp">?</samp>’,
then the request has CGI variables seamlessly appended to the web address.
Everything in front of the ‘<samp class="samp">?</samp>’ is split up into menu items, and
everything behind the ‘<samp class="samp">?</samp>’ is a list of ‘<samp class="samp"><var class="var">variable</var>=<var class="var">value</var></samp>’ pairs
(separated by ‘<samp class="samp">&amp;</samp>’) that also need splitting. This way, CGI variables are
isolated and stored. This procedure lacks recognition of special characters
that are transmitted in coded form<a class="footnote" id="DOCF10" href="#FOOT10"><sup>10</sup></a>. Here, any
optional request header and body parts are ignored. We do not need
header parameters and the request body. However, when refining our approach or
working with the <code class="code">POST</code> and <code class="code">PUT</code> methods, reading the header
and body
becomes inevitable. Header parameters should then be stored in a global
array as well as the body.
</p>
<p>On each subsequent run through the main loop, one request from a browser is
received, evaluated, and answered according to the user’s choice. This can be
done by letting the value of the HTTP method guide the main loop into
execution of the procedure <code class="code">HandleGET()</code>, which evaluates the user’s
choice. In this case, we have only one hierarchical level of menus,
but in the general case,
menus are nested.
The menu choices at each level are
separated by ‘<samp class="samp">/</samp>’, just as in file names. Notice how simple it is to
construct menus of arbitrary depth:
</p>
<div class="example">
<pre class="example-preformatted">function HandleGET() {
  if (       MENU[2] == "human") {
    Footer = strftime() TopFooter
  } else if (MENU[2] == "POSIX") {
    Footer = systime()  TopFooter
  }
}
</pre></div>

<p>The disadvantage of this approach is that our server is slow and can
handle only one request at a time. Its main advantage, however, is that
the server
consists of just one <code class="command">gawk</code> program. No need for installing an
<code class="command">httpd</code>, and no need for static separate HTML files, CGI scripts, or
<code class="code">root</code> privileges. This is rapid prototyping.
This program can be started on the same host that runs your browser.
Then let your browser point to <a class="uref" href="http://localhost:8080/">http://localhost:8080</a>.
</p>
<a class="index-entry-id" id="index-XBM-image-format"></a>
<a class="index-entry-id" id="index-images-1"></a>
<a class="index-entry-id" id="index-web-pages-1"></a>
<a class="index-entry-id" id="index-GNUPlot-utility"></a>
<p>It is also possible to include images into the HTML pages.
Most browsers support the not very well-known
<samp class="file">.xbm</samp> format,
which may contain only
monochrome pictures but is an ASCII format. Binary images are possible but
not so easy to handle. Another way of including images is to generate them
with a tool such as GNUPlot,
by calling the tool with the <code class="code">system()</code> function or through a pipe.
</p>
<ul class="mini-toc">
<li><a href="#CGI-Lib" accesskey="1">A Simple CGI Library</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="CGI-Lib">
<div class="nav-panel">
<p>
Previous: <a href="#Interacting-Service" accesskey="p" rel="prev">A Web Service with Interaction</a>, Up: <a href="#Interacting-Service" accesskey="u" rel="up">A Web Service with Interaction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="subsection" id="A-Simple-CGI-Library">2.9.1 A Simple CGI Library</h4>
<blockquote class="quotation">
<p><i class="i">HTTP is like being married: you have to be able to handle whatever
you’re given, while being very careful what you send back.</i><br>
</p></blockquote>
<div class="center">— <em class="emph">Phil Smith III,<br> <a class="uref" href="http://www.netfunny.com/rhf/jokes/99/Mar/http.html">http://www.netfunny.com/rhf/jokes/99/Mar/http.html</a></em>
</div>
<a class="index-entry-id" id="index-CGI-_0028Common-Gateway-Interface_0029-1"></a>
<p>In <a class="ref" href="#Interacting-Service">A Web Service with Interaction</a>,
we saw the function <code class="code">CGI_setup()</code> as part of the web server
“core logic” framework. The code presented there handles almost
everything necessary for CGI requests.
One thing it doesn’t do is handle encoded characters in the requests.
For example, an ‘<samp class="samp">&amp;</samp>’ is encoded as a percent sign followed by
the hexadecimal value: ‘<samp class="samp">%26</samp>’.  These encoded values should be
decoded.
Following is a simple library to perform these tasks.
This code is used for all web server examples
throughout the rest of this web page.
If you want to use it for your own web server, store the source code
into a file named <samp class="file">inetlib.awk</samp>. Then you can include
these functions into your code by placing the following statement
into your program
(on the first line of your script):
</p>
<div class="example">
<pre class="example-preformatted">@include inetlib.awk
</pre></div>

<p>But beware, this mechanism is
only possible if you invoke your web server script with <code class="command">igawk</code>
instead of the usual <code class="command">awk</code> or <code class="command">gawk</code>.
Here is the code:
</p>
<div class="example">
<pre class="example-preformatted"># CGI Library and core of a web server
# Global arrays
#   GETARG --- arguments to CGI GET command
#   MENU   --- menu items (path names)
#   PARAM  --- parameters of form x=y

# Optional variable MyHost contains host address
# Optional variable MyPort contains port number
# Needs TopHeader, TopDoc, TopFooter
# Sets MyPrefix, HttpService, Status, Reason

BEGIN {
  if (MyHost == "") {
     "uname -n" | getline MyHost
     close("uname -n")
  }
  if (MyPort ==  0) MyPort = 8080
  HttpService = "/inet/tcp/" MyPort "/0/0"
  MyPrefix    = "http://" MyHost ":" MyPort
  SetUpServer()
  while ("awk" != "complex") {
    # header lines are terminated this way
    RS = ORS    = "\r\n"
    Status      = 200             # this means OK
    Reason      = "OK"
    Header      = TopHeader
    Document    = TopDoc
    Footer      = TopFooter
    if        (GETARG["Method"] == "GET") {
        HandleGET()
    } else if (GETARG["Method"] == "HEAD") {
        # not yet implemented
    } else if (GETARG["Method"] != "") {
        print "bad method", GETARG["Method"]
    }
    Prompt = Header Document Footer
    print "HTTP/1.0", Status, Reason     |&amp; HttpService
    print "Connection: Close"            |&amp; HttpService
    print "Pragma: no-cache"             |&amp; HttpService
    len = length(Prompt) + length(ORS)
    print "Content-length:", len         |&amp; HttpService
    print ORS Prompt                     |&amp; HttpService
    # ignore all the header lines
    while ((HttpService |&amp; getline) &gt; 0)
        continue
    # stop talking to this client
    close(HttpService)
    # wait for new client request
    HttpService |&amp; getline
    # do some logging
    print systime(), strftime(), $0
    CGI_setup($1, $2, $3)
  }
}

function CGI_setup(method, uri, version,    i)
{
    delete GETARG
    delete MENU
    delete PARAM
    GETARG["Method"] = method
    GETARG["URI"] = uri
    GETARG["Version"] = version

    i = index(uri, "?")
    if (i &gt; 0) {  # is there a "?" indicating a CGI request?
        split(substr(uri, 1, i-1), MENU, "[/:]")
        split(substr(uri, i+1), PARAM, "&amp;")
        for (i in PARAM) {
            PARAM[i] = _CGI_decode(PARAM[i])
            j = index(PARAM[i], "=")
            GETARG[substr(PARAM[i], 1, j-1)] = \
                                         substr(PARAM[i], j+1)
        }
    } else { # there is no "?", no need for splitting PARAMs
        split(uri, MENU, "[/:]")
    }
    for (i in MENU)     # decode characters in path
        if (i &gt; 4)      # but not those in host name
            MENU[i] = _CGI_decode(MENU[i])
}
</pre></div>

<p>This isolates details in a single function, <code class="code">CGI_setup()</code>.
Decoding of encoded characters is pushed off to a helper function,
<code class="code">_CGI_decode()</code>. The use of the leading underscore (‘<samp class="samp">_</samp>’) in
the function name is intended to indicate that it is an “internal”
function, although there is nothing to enforce this:
</p>
<div class="example">
<pre class="example-preformatted">function _CGI_decode(str,   hexdigs, i, pre, code1, code2,
                            val, result)
{
   hexdigs = "123456789abcdef"

   i = index(str, "%")
   if (i == 0) # no work to do
      return str

   do {
      pre = substr(str, 1, i-1)   # part before %xx
      code1 = substr(str, i+1, 1) # first hex digit
      code2 = substr(str, i+2, 1) # second hex digit
      str = substr(str, i+3)      # rest of string

      code1 = tolower(code1)
      code2 = tolower(code2)
      val = index(hexdigs, code1) * 16 \
            + index(hexdigs, code2)

      result = result pre sprintf("%c", val)
      i = index(str, "%")
   } while (i != 0)
   if (length(str) &gt; 0)
      result = result str
   return result
}
</pre></div>

<p>This works by splitting the string apart around an encoded character.
The two digits are converted to lowercase characters and looked up in a string
of hex digits.  Note that <code class="code">0</code> is not in the string on purpose;
<code class="code">index()</code> returns zero when it’s not found, automatically giving
the correct value!  Once the hexadecimal value is converted from
characters in a string into a numerical value, <code class="code">sprintf()</code>
converts the value back into a real character.
The following is a simple test harness for the above functions:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  CGI_setup("GET",
  "http://www.gnu.org/cgi-bin/foo?p1=stuff&amp;p2=stuff%26junk" \
       "&amp;percent=a %25 sign",
  "1.0")
  for (i in MENU)
      printf "MENU[\"%s\"] = %s\n", i, MENU[i]
  for (i in PARAM)
      printf "PARAM[\"%s\"] = %s\n", i, PARAM[i]
  for (i in GETARG)
      printf "GETARG[\"%s\"] = %s\n", i, GETARG[i]
}
</pre></div>

<p>And this is the result when we run it:
</p>
<div class="example">
<pre class="example-preformatted">$ gawk -f testserv.awk
-| MENU["4"] = www.gnu.org
-| MENU["5"] = cgi-bin
-| MENU["6"] = foo
-| MENU["1"] = http
-| MENU["2"] =
-| MENU["3"] =
-| PARAM["1"] = p1=stuff
-| PARAM["2"] = p2=stuff&amp;junk
-| PARAM["3"] = percent=a % sign
-| GETARG["p1"] = stuff
-| GETARG["percent"] = a % sign
-| GETARG["p2"] = stuff&amp;junk
-| GETARG["Method"] = GET
-| GETARG["Version"] = 1.0
-| GETARG["URI"] = http://www.gnu.org/cgi-bin/foo?p1=stuff&amp;
p2=stuff%26junk&amp;percent=a %25 sign
</pre></div>

<hr>
</div>
</div>
<div class="section-level-extent" id="Simple-Server">
<div class="nav-panel">
<p>
Next: <a href="#Caveats" accesskey="n" rel="next">Network Programming Caveats</a>, Previous: <a href="#Interacting-Service" accesskey="p" rel="prev">A Web Service with Interaction</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="A-Simple-Web-Server">2.10 A Simple Web Server</h3>
<a class="index-entry-id" id="index-web-servers"></a>
<a class="index-entry-id" id="index-servers-4"></a>
<p>In the preceding section, we built the core logic for event-driven GUIs.
In this section, we finally extend the core to a real application.
No one would actually write a commercial web server in <code class="command">gawk</code>, but
it is instructive to see that it is feasible in principle.
</p>
<a class="index-entry-id" id="index-ELIZA-program"></a>
<a class="index-entry-id" id="index-Weizenbaum_002c-Joseph"></a>
<p>The application is ELIZA, the famous program by Joseph Weizenbaum that
mimics the behavior of a professional psychotherapist when talking to you.
Weizenbaum would certainly object to this description, but this is part of
the legend around ELIZA.
Take the site-independent core logic and append the following code:
</p>
<div class="example">
<pre class="example-preformatted">function SetUpServer() {
  SetUpEliza()
  TopHeader = \
    "&lt;HTML&gt;&lt;title&gt;An HTTP-based System with GAWK&lt;/title&gt;\
    &lt;HEAD&gt;&lt;META HTTP-EQUIV=\"Content-Type\"\
    CONTENT=\"text/html; charset=iso-8859-1\"&gt;&lt;/HEAD&gt;\
    &lt;BODY BGCOLOR=\"#ffffff\" TEXT=\"#000000\"\
    LINK=\"#0000ff\" VLINK=\"#0000ff\"\
    ALINK=\"#0000ff\"&gt; &lt;A NAME=\"top\"&gt;"
  TopDoc    = "\
   &lt;h2&gt;Please choose one of the following actions:&lt;/h2&gt;\
   &lt;UL&gt;\
   &lt;LI&gt;\
   &lt;A HREF=" MyPrefix "/AboutServer&gt;About this server&lt;/A&gt;\
   &lt;/LI&gt;&lt;LI&gt;\
   &lt;A HREF=" MyPrefix "/AboutELIZA&gt;About Eliza&lt;/A&gt;&lt;/LI&gt;\
   &lt;LI&gt;\
   &lt;A HREF=" MyPrefix \
      "/StartELIZA&gt;Start talking to Eliza&lt;/A&gt;&lt;/LI&gt;&lt;/UL&gt;"
  TopFooter = "&lt;/BODY&gt;&lt;/HTML&gt;"
}
</pre></div>

<p><code class="code">SetUpServer()</code> is similar to the previous example,
except for calling another function, <code class="code">SetUpEliza()</code>.
This approach can be used to implement other kinds of servers.
The only changes needed to do so are hidden in the functions
<code class="code">SetUpServer()</code> and <code class="code">HandleGET()</code>. Perhaps it might be necessary to
implement other HTTP methods.
The <code class="command">igawk</code> program that comes with <code class="command">gawk</code>
may be useful for this process.
</p>
<p>When extending this example to a complete application, the first
thing to do is to implement the function <code class="code">SetUpServer()</code> to
initialize the HTML pages and some variables. These initializations
determine the way your HTML pages look (colors, titles, menu
items, etc.).
</p>
<p>The function <code class="code">HandleGET()</code> is a nested case selection that decides
which page the user wants to see next.  Each nesting level refers to a menu
level of the GUI. Each case implements a certain action of the menu. At the
deepest level of case selection, the handler essentially knows what the
user wants and stores the answer into the variable that holds the HTML
page contents:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function HandleGET() {
  # A real HTTP server would treat some parts of the URI as a file name.
  # We take parts of the URI as menu choices and go on accordingly.
  if (MENU[2] == "AboutServer") {
    Document    = "This is not a CGI script.\
      This is an httpd, an HTML file, and a CGI script all \
      in one GAWK script. It needs no separate www-server, \
      no installation, and no root privileges.\
      &lt;p&gt;To run it, do this:&lt;/p&gt;&lt;ul&gt;\
      &lt;li&gt; start this script with \"gawk -f httpserver.awk\",&lt;/li&gt;\
      &lt;li&gt; and on the same host let your www browser open location\
           \"http://localhost:8080\"&lt;/li&gt;\
      &lt;/ul&gt;\&lt;p&gt;\ Details of HTTP come from:&lt;/p&gt;&lt;ul&gt;\
            &lt;li&gt;Hethmon:  Illustrated Guide to HTTP&lt;/p&gt;\
            &lt;li&gt;RFC 2068&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;JK 14.9.1997&lt;/p&gt;"
  } else if (MENU[2] == "AboutELIZA") {
    Document    = "This is an implementation of the famous ELIZA\
        program by Joseph Weizenbaum. It is written in GAWK and\
        uses an HTML GUI."
  } else if (MENU[2] == "StartELIZA") {
    gsub(/\+/, " ", GETARG["YouSay"])
    # Here we also have to substitute coded special characters
    Document    = "&lt;form method=GET&gt;" \
      "&lt;h3&gt;" ElizaSays(GETARG["YouSay"]) "&lt;/h3&gt;\
      &lt;p&gt;&lt;input type=text name=YouSay value=\"\" size=60&gt;\
      &lt;br&gt;&lt;input type=submit value=\"Tell her about it\"&gt;&lt;/p&gt;&lt;/form&gt;"
  }
}
</pre></div>

<p>Now we are down to the heart of ELIZA, so you can see how it works.
Initially the user does not say anything; then ELIZA resets its money
counter and asks the user to tell what comes to mind open-heartedly.
The subsequent answers are converted to uppercase characters and stored for
later comparison. ELIZA presents the bill when being confronted with
a sentence that contains the phrase “shut up.” Otherwise, it looks for
keywords in the sentence, conjugates the rest of the sentence, remembers
the keyword for later use, and finally selects an answer from the set of
possible answers:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function ElizaSays(YouSay) {
  if (YouSay == "") {
    cost = 0
    answer = "HI, IM ELIZA, TELL ME YOUR PROBLEM"
  } else {
    q = toupper(YouSay)
    gsub("'", "", q)
    if (q == qold) {
      answer = "PLEASE DONT REPEAT YOURSELF !"
    } else {
      if (index(q, "SHUT UP") &gt; 0) {
        answer = "WELL, PLEASE PAY YOUR BILL. ITS EXACTLY ... $"\
                 int(100*rand()+30+cost/100)
      } else {
        qold = q
        w = "-"                 # no keyword recognized yet
        for (i in k) {          # search for keywords
          if (index(q, i) &gt; 0) {
            w = i
            break
          }
        }
        if (w == "-") {         # no keyword, take old subject
          w    = wold
          subj = subjold
        } else {                # find subject
          subj = substr(q, index(q, w) + length(w)+1)
          wold = w
          subjold = subj        #  remember keyword and subject
        }
        for (i in conj)
           gsub(i, conj[i], q)   # conjugation
        # from all answers to this keyword, select one randomly
        answer = r[indices[int(split(k[w], indices) * rand()) + 1]]
        # insert subject into answer
        gsub("_", subj, answer)
      }
    }
  }
  cost += length(answer) # for later payment : 1 cent per character
  return answer
}
</pre></div>

<p>In the long but simple function <code class="code">SetUpEliza()</code>, you can see tables
for conjugation, keywords, and answers.<a class="footnote" id="DOCF11" href="#FOOT11"><sup>11</sup></a> The associative array <code class="code">k</code>
contains indices into the array of answers <code class="code">r</code>. To choose an
answer, ELIZA just picks an index randomly:
</p>
<div class="example">
<pre class="example-preformatted">function SetUpEliza() {
  srand()
  wold = "-"
  subjold = " "

  # table for conjugation
  conj[" ARE "     ] = " AM "
  conj["WERE "     ] = "WAS "
  conj[" YOU "     ] = " I "
  conj["YOUR "     ] = "MY "
  conj[" IVE "     ] =\
  conj[" I HAVE "  ] = " YOU HAVE "
  conj[" YOUVE "   ] =\
  conj[" YOU HAVE "] = " I HAVE "
  conj[" IM "      ] =\
  conj[" I AM "    ] = " YOU ARE "
  conj[" YOURE "   ] =\
  conj[" YOU ARE " ] = " I AM "

  # table of all answers
  r[1]   = "DONT YOU BELIEVE THAT I CAN  _"
  r[2]   = "PERHAPS YOU WOULD LIKE TO BE ABLE TO _ ?"
  …
</pre></div>

<div class="example">
<pre class="example-preformatted">  # table for looking up answers that
  # fit to a certain keyword
  k["CAN YOU"]      = "1 2 3"
  k["CAN I"]        = "4 5"
  k["YOU ARE"]      =\
  k["YOURE"]        = "6 7 8 9"
  …
</pre></div>
<div class="example">
<pre class="example-preformatted">}
</pre></div>

<a class="index-entry-id" id="index-Humphrys_002c-Mark"></a>
<a class="index-entry-id" id="index-ELIZA-program-1"></a>
<p>Some interesting remarks and details (including the original source code
of ELIZA) are found on Mark Humphrys’s home page
<a class="uref" href="https://computing.dcu.ie/~humphrys/eliza.html"><cite class="cite">How my program passed the Turing Test</cite></a>.
Wikipedia provides much background information about
<a class="uref" href="https://en.wikipedia.org/wiki/ELIZA">ELIZA</a>,
including the original design of the software and
its early implementations.
</p>
<hr>
</div>
<div class="section-level-extent" id="Caveats">
<div class="nav-panel">
<p>
Next: <a href="#Challenges" accesskey="n" rel="next">Where To Go From Here</a>, Previous: <a href="#Simple-Server" accesskey="p" rel="prev">A Simple Web Server</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Network-Programming-Caveats">2.11 Network Programming Caveats</h3>

<a class="index-entry-id" id="index-networks-8"></a>
<a class="index-entry-id" id="index-gawk-7"></a>
<a class="index-entry-id" id="index-troubleshooting-1"></a>
<p>By now it should be clear
that debugging a networked application is more
complicated than debugging a single-process single-hosted application.
The behavior of a networked application sometimes looks noncausal because
it is not reproducible in a strong sense. Whether a network application
works or not sometimes depends on the following:
</p>
<ul class="itemize mark-bullet">
<li>How crowded the underlying network is

</li><li>If the party at the other end is running or not

</li><li>The state of the party at the other end
</li></ul>

<a class="index-entry-id" id="index-troubleshooting-2"></a>
<p>The most difficult problems for a beginner arise from the hidden states of the
underlying network. After closing a TCP connection, it’s often necessary to wait
a short while before reopening the connection. Even more difficult is the
establishment of a connection that previously ended with a “broken pipe.”
Those connections have to “time out” for a minute or so
before they can reopen.
Check this with the command ‘<samp class="samp">netstat -a</samp>’, which
provides a list of still-active connections.
</p>
<hr>
</div>
<div class="section-level-extent" id="Challenges">
<div class="nav-panel">
<p>
Previous: <a href="#Caveats" accesskey="p" rel="prev">Network Programming Caveats</a>, Up: <a href="#Using-Networking" accesskey="u" rel="up">Networking With <code class="command">gawk</code></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Where-To-Go-From-Here">2.12 Where To Go From Here</h3>

<a class="index-entry-id" id="index-Loebner_002c-Hugh"></a>
<a class="index-entry-id" id="index-contest"></a>
<p>Now, you have learned enough to build your own application. You could,
for example, take part in the
Loebner Contest
to win $100,000.  The Loebner Prize is the first formal instantiation of
a Turing Test. Hugh Loebner agreed with The Cambridge Center for Behavioral
Studies to underwrite a contest designed to implement the Turing Test.
Dr. Loebner pledged a Grand Prize of $100,000 for the first computer whose
responses were indistinguishable from a human’s. Each year an annual prize
of $2000 and a bronze medal is awarded to the <em class="emph">most</em> human computer.
The winner of the annual contest is the best entry relative to other entries
that year, irrespective of how good it is in an absolute sense. Here is
an example of a conversation with the winning program of 1997:
</p>
<div class="example smallexample">
<pre class="example-preformatted">(c)1997 Cambridge Center For Behavioral Studies all rights reserved [CONVERSE]
[Intelligent Research Ltd.] Start at: [1997/04/29 08:59:40]
PROGRAM[10:39:20]Hi, my name is Catherine, what's yours?
JUDGE02[10:39:36]My name is Nathan.
PROGRAM[10:39:37]Well, it's nice to meet you, Nathan.
PROGRAM[10:39:45]Did you see that story on CNN last night about the lesbian
PROGRAM[10:40:03]couple who came out at a White House party on Sunday?
JUDGE02[10:40:45]No.  I'm sorry I missed that.  How did the Prez take it?
PROGRAM[10:40:47]Ellen Degeneres was one of them - she was kissing her lover
PROGRAM[10:41:08]in front of Bill Clinton. Do you think he was very
PROGRAM[10:41:21]embarrassed?
JUDGE02[10:41:37]You tell me.  I didn't see it.
PROGRAM[10:41:38]Are you still a Friend of Bill Clinton?
JUDGE02[10:42:22]Yes.  I would like to talk about something else.  Do you know anything about sculpture.
PROGRAM[10:42:24]Well, I suppose he's doing his best like most of us, but he
PROGRAM[10:42:35]does seem to attract an UNUSUAL amount of bad publicity,
PROGRAM[10:42:51]wouldnt you say--can it all be bad luck?
JUDGE02[10:43:20]I asked you if you knew anything about sculpture.
PROGRAM[10:43:21]OK, but what happens now--does it all drift on, with
PROGRAM[10:43:36]everyone waiting to see how much his friends have said about
PROGRAM[10:43:47]him under threat of lots and lots of jail-or will something
PROGRAM[10:44:01]dramatic actually happen?
JUDGE02[10:44:19]Do you know what sculpture is?
PROGRAM[10:44:20]Well, youre more a fan of his than I am I guess---though I
PROGRAM[10:44:34]cant SWEAR what Id have done in that locked hotel room, I
PROGRAM[10:44:51]must say.
JUDGE02[10:45:26]Have you ever been to the Salmagundi Club?
PROGRAM[10:45:29]Never. to go back to the original discussion Time to get
PROGRAM[10:45:43]off this one I think and onto something more down to earth!
JUDGE02[10:46:20]What is more down to earth than art?
PROGRAM[10:46:21]I don't know what -- to be honest. -
PROGRAM[10:46:30]I suppose it depends on where you're coming from, but as the
PROGRAM[10:46:46]song goes in My Fair Lady, "Why can't a woman be more like a
PROGRAM[10:47:03]man? "
JUDGE02[10:47:52]I liked that song but I prefer "Why can't children be more like we are"
JUDGE02[10:48:10]from another play the name of which I cannot remember.
PROGRAM[10:48:12]What, if anything, do you enjoy about being a man?
JUDGE02[10:49:01]I would enjoy all aspects of life no matter what my gender.
PROGRAM[10:49:02]Do you think of yourself as being attractive?
</pre></div>

<a class="index-entry-id" id="index-Clinton_002c-Bill"></a>
<p>This program insists on always speaking about the same story around Bill
Clinton. You see, even a program with a rather narrow mind can behave so
much like a human being that it can win this prize. It is quite common to
let these programs talk to each other via network connections. But during the
competition itself, the program and its computer have to be present at the
place the competition is held. We all would love to see a <code class="command">gawk</code>
program win in such an event. Maybe it is up to you to accomplish this?
</p>
<p>Some other ideas for useful networked applications:
</p><ul class="itemize mark-bullet">
<li>Read the file <samp class="file">doc/awkforai.txt</samp> in earlier <code class="command">gawk</code>
distributions.<a class="footnote" id="DOCF12" href="#FOOT12"><sup>12</sup></a>
It was written by Ronald P. Loui (at the time, Associate
Professor of Computer Science, at Washington University in St. Louis,
<a class="email" href="mailto:loui@ai.wustl.edu">loui@ai.wustl.edu</a>) and summarizes why he taught <code class="command">gawk</code> to
students of Artificial Intelligence. Here are some passages from the text:

<a class="index-entry-id" id="index-AI"></a>
<a class="index-entry-id" id="index-PROLOG"></a>
<a class="index-entry-id" id="index-Loui_002c-Ronald"></a>
<a class="index-entry-id" id="index-agent"></a>
<blockquote class="quotation">
<p>The GAWK manual can
be consumed in a single lab session and the language can be mastered by
the next morning by the average student.  GAWK’s automatic
initialization, implicit coercion, I/O support and lack of pointers
forgive many of the mistakes that young programmers are likely to make.
Those who have seen C but not mastered it are happy to see that GAWK
retains some of the same sensibilities while adding what must be
regarded as spoonsful of syntactic sugar.<br>
…<br>
<a class="index-entry-id" id="index-robot"></a>
There are further simple answers.  Probably the best is the fact that
increasingly, undergraduate AI programming is involving the Web.  Oren
Etzioni (University of Washington, Seattle) has for a while been arguing
that the “softbot” is replacing the mechanical engineers’ robot as the
most glamorous AI testbed.  If the artifact whose behavior needs to be
controlled in an intelligent way is the software agent, then a language
that is well-suited to controlling the software environment is the
appropriate language.  That would imply a scripting language.  If the
robot is KAREL, then the right language is “turn left; turn right.” If
the robot is Netscape, then the right language is something that can
generate ‘<samp class="samp">netscape -remote 'openURL(http://cs.wustl.edu/~loui)'</samp>’ with
elan.<br>
…<br>
AI programming requires high-level thinking.  There have always been a few
gifted programmers who can write high-level programs in assembly language.
Most however need the ambient abstraction to have a higher floor.<br>
…<br>
Second, inference is merely the expansion of notation.  No matter whether
the logic that underlies an AI program is fuzzy, probabilistic, deontic,
defeasible, or deductive, the logic merely defines how strings can be
transformed into other strings.  A language that provides the best
support for string processing in the end provides the best support for
logic, for the exploration of various logics, and for most forms of
symbolic processing that AI might choose to call “reasoning” instead of
“logic.”  The implication is that PROLOG, which saves the AI programmer
from having to write a unifier, saves perhaps two dozen lines of GAWK
code at the expense of strongly biasing the logic and representational
expressiveness of any approach.
</p></blockquote>

<p>Now that <code class="command">gawk</code> itself can connect to the Internet, it should be obvious
that it is suitable for writing intelligent web agents.
</p>
</li><li><code class="command">awk</code> is strong at pattern recognition and string processing.
So, it is well suited to the classic problem of language translation.
A first try could be a program that knows the 100 most frequent English
words and their counterparts in German or French. The service could be
implemented by regularly reading email with the program above, replacing
each word by its translation and sending the translation back via SMTP.
Users would send English email to their translation service and get
back a translated email message in return. As soon as this works,
more effort can be spent on a real translation program.

</li><li>Another dialogue-oriented application (on the verge
of ridicule) is the email “support service.” Troubled customers write an
email to an automatic <code class="command">gawk</code> service that reads the email. It looks
for keywords in the mail and assembles a reply email accordingly. By carefully
investigating the email header, and repeating these keywords through the
reply email, it is rather simple to give the customer a feeling that
someone cares. Ideally, such a service would search a database of previous
cases for solutions. If none exists, the database could, for example, consist
of all the newsgroups, mailing lists and FAQs on the Internet.
</li></ul>

<hr>
</div>
</div>
<div class="chapter-level-extent" id="Some-Applications-and-Techniques">
<div class="nav-panel">
<p>
Next: <a href="#Links" accesskey="n" rel="next">Related Links</a>, Previous: <a href="#Using-Networking" accesskey="p" rel="prev">Networking With <code class="command">gawk</code></a>, Up: <a href="#Top" accesskey="u" rel="up">General Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>

<h2 class="chapter" id="Some-Applications-and-Techniques-1">3 Some Applications and Techniques</h2>
<p>In this chapter, we look at a number of self-contained
scripts, with an emphasis on concise networking.  Along the way, we
work towards creating building blocks that encapsulate often-needed
functions of the networking world, show new techniques that
broaden the scope of problems that can be solved with <code class="command">gawk</code>, and
explore leading edge technology that may shape the future of networking.
</p>
<p>We often refer to the site-independent core of the server that
we built in
<a class="ref" href="#Simple-Server">A Simple Web Server</a>.
When building new and nontrivial servers, we
always copy this building block and append new instances of the two
functions <code class="code">SetUpServer()</code> and <code class="code">HandleGET()</code>.
</p>
<p>This makes a lot of sense, since
this scheme of event-driven
execution provides <code class="command">gawk</code> with an interface to the most widely
accepted standard for GUIs: the web browser. Now, <code class="command">gawk</code> can rival even
Tcl/Tk.
</p>
<a class="index-entry-id" id="index-Tcl_002fTk-2"></a>
<p>Tcl and <code class="command">gawk</code> have much in common. Both are simple scripting
languages that allow us to quickly solve problems with short programs. But
Tcl has Tk on top of it, and <code class="command">gawk</code> had nothing comparable up
to now. While Tcl needs a large and ever-changing library (Tk, which was
originally bound to the X Window System), <code class="command">gawk</code> needs just the
networking interface
and some kind of browser on the client’s side. Besides better portability,
the most important advantage of this approach (embracing well-established
standards such HTTP and HTML) is that <em class="emph">we do not need to change the
language</em>. We let others do the work of fighting over protocols and standards.
We can use HTML, JavaScript, VRML, or whatever else comes along to do our work.
</p>

<ul class="mini-toc">
<li><a href="#PANIC" accesskey="1">PANIC: An Emergency Web Server</a></li>
<li><a href="#GETURL" accesskey="2">GETURL: Retrieving Web Pages</a></li>
<li><a href="#REMCONF" accesskey="3">REMCONF: Remote Configuration of Embedded Systems</a></li>
<li><a href="#URLCHK" accesskey="4">URLCHK: Look for Changed Web Pages</a></li>
<li><a href="#WEBGRAB" accesskey="5">WEBGRAB: Extract Links from a Page</a></li>
<li><a href="#STATIST" accesskey="6">STATIST: Graphing a Statistical Distribution</a></li>
<li><a href="#MAZE" accesskey="7">MAZE: Walking Through a Maze In Virtual Reality</a></li>
<li><a href="#MOBAGWHO" accesskey="8">MOBAGWHO: a Simple Mobile Agent</a></li>
<li><a href="#STOXPRED" accesskey="9">STOXPRED: Stock Market Prediction As A Service</a></li>
<li><a href="#PROTBASE">PROTBASE: Searching Through A Protein Database</a></li>
</ul>
<hr>
<div class="section-level-extent" id="PANIC">
<div class="nav-panel">
<p>
Next: <a href="#GETURL" accesskey="n" rel="next">GETURL: Retrieving Web Pages</a>, Previous: <a href="#Some-Applications-and-Techniques" accesskey="p" rel="prev">Some Applications and Techniques</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="PANIC_003a-An-Emergency-Web-Server">3.1 PANIC: An Emergency Web Server</h3>
<a class="index-entry-id" id="index-PANIC-program"></a>
<a class="index-entry-id" id="index-web-service-1"></a>
<p>At first glance, the <code class="code">"Hello, world"</code> example in
<a class="ref" href="#Primitive-Service">A Primitive Web Service</a>,
seems useless. By adding just a few lines, we can turn it into something useful.
</p>
<p>The PANIC program tells everyone who connects that the local
site is not working. When a web server breaks down, it makes a difference
if customers get a strange “network unreachable” message, or a short message
telling them that the server has a problem. In such an emergency,
the hard disk and everything on it (including the regular web service) may
be unavailable. Rebooting the web server off a USB drive makes sense in this
setting.
</p>
<p>To use the PANIC program as an emergency web server, all you need are the
<code class="command">gawk</code> executable and the program below on a USB drive. By default,
it connects to port 8080. A different value may be supplied on the
command line:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  RS = ORS = "\r\n"
  if (MyPort ==  0) MyPort = 8080
  HttpService = "/inet/tcp/" MyPort "/0/0"
  Hello = "&lt;HTML&gt;&lt;HEAD&gt;&lt;TITLE&gt;Out Of Service&lt;/TITLE&gt;" \
     "&lt;/HEAD&gt;&lt;BODY&gt;&lt;H1&gt;" \
     "This site is temporarily out of service." \
     "&lt;/H1&gt;&lt;/BODY&gt;&lt;/HTML&gt;"
  Len = length(Hello) + length(ORS)
  while ("awk" != "complex") {
    print "HTTP/1.0 200 OK"          |&amp; HttpService
    print "Content-Length: " Len ORS |&amp; HttpService
    print Hello                      |&amp; HttpService
    while ((HttpService |&amp; getline) &gt; 0)
       continue;
    close(HttpService)
  }
}
</pre></div>

<hr>
</div>
<div class="section-level-extent" id="GETURL">
<div class="nav-panel">
<p>
Next: <a href="#REMCONF" accesskey="n" rel="next">REMCONF: Remote Configuration of Embedded Systems</a>, Previous: <a href="#PANIC" accesskey="p" rel="prev">PANIC: An Emergency Web Server</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="GETURL_003a-Retrieving-Web-Pages">3.2 GETURL: Retrieving Web Pages</h3>
<a class="index-entry-id" id="index-GETURL-program"></a>
<a class="index-entry-id" id="index-web-pages-2"></a>
<p>GETURL is a versatile building block for shell scripts that need to retrieve
files from the Internet. It takes a web address as a command-line parameter and
tries to retrieve the contents of this address. The contents are printed
to standard output, while the header is printed to <samp class="file">/dev/stderr</samp>.
A surrounding shell script
could analyze the contents and extract the text or the links. An ASCII
browser could be written around GETURL. But more interestingly, web robots are
straightforward to write on top of GETURL. On the Internet, you can find
several programs of the same name that do the same job. They are usually
much more complex internally and at least 10 times as big.
</p>
<p>At first, GETURL checks if it was called with exactly one web address.
Then, it checks if the user chose to use a special proxy server whose name
is handed over in a variable. By default, it is assumed that the local
machine serves as proxy. GETURL uses the <code class="code">GET</code> method by default
to access the web page. By handing over the name of a different method
(such as <code class="code">HEAD</code>), it is possible to choose a different behavior. With
the <code class="code">HEAD</code> method, the user does not receive the body of the page
content, but does receive the header:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  if (ARGC != 2) {
    print "GETURL - retrieve Web page via HTTP 1.0"
    print "IN:\n    the URL as a command-line parameter"
    print "PARAM(S):\n    -v Proxy=MyProxy"
    print "OUT:\n    the page content on stdout"
    print "    the page header on stderr"
    print "JK 16.05.1997"
    print "ADR 13.08.2000"
    exit
  }
  URL = ARGV[1]; ARGV[1] = ""
  if (Proxy     == "")  Proxy     = "127.0.0.1"
  if (ProxyPort ==  0)  ProxyPort = 80
  if (Method    == "")  Method    = "GET"
  HttpService = "/inet/tcp/0/" Proxy "/" ProxyPort
  ORS = RS = "\r\n\r\n"
  print Method " " URL " HTTP/1.0" |&amp; HttpService
  HttpService                      |&amp; getline Header
  print Header &gt; "/dev/stderr"
  while ((HttpService |&amp; getline) &gt; 0)
    printf "%s", $0
  close(HttpService)
}
</pre></div>

<p>This program can be changed as needed, but be careful with the last lines.
Make sure transmission of binary data is not corrupted by additional line
breaks. Even as it is now, the byte sequence <code class="code">"\r\n\r\n"</code> would
disappear if it were contained in binary data. Don’t get caught in a
trap when trying a quick fix on this one.
</p>
<hr>
</div>
<div class="section-level-extent" id="REMCONF">
<div class="nav-panel">
<p>
Next: <a href="#URLCHK" accesskey="n" rel="next">URLCHK: Look for Changed Web Pages</a>, Previous: <a href="#GETURL" accesskey="p" rel="prev">GETURL: Retrieving Web Pages</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="REMCONF_003a-Remote-Configuration-of-Embedded-Systems">3.3 REMCONF: Remote Configuration of Embedded Systems</h3>
<a class="index-entry-id" id="index-REMCONF-program"></a>
<a class="index-entry-id" id="index-Linux-2"></a>
<a class="index-entry-id" id="index-GNU_002fLinux-2"></a>
<a class="index-entry-id" id="index-Yahoo_0021"></a>
<p>Today, you often find powerful processors in embedded systems.  Dedicated
network routers and controllers for all kinds of machinery are examples
of embedded systems. Processors like the Intel 80x86 or the AMD Elan are
able to run multitasking operating systems, such as XINU or GNU/Linux
in embedded PCs.  These systems are small and usually do not have
a keyboard or a display.  Therefore it is difficult to set up their
configuration. There are several widespread ways to set them up:
</p>
<ul class="itemize mark-bullet">
<li>DIP switches

</li><li>Read Only Memories such as EPROMs

</li><li>Serial lines or some kind of keyboard

</li><li>Network connections via <code class="command">telnet</code> or SNMP

</li><li>HTTP connections with HTML GUIs
</li></ul>

<p>In this section, we look at a solution that uses HTTP connections
to control variables of an embedded system that are stored in a file.
Since embedded systems have tight limits on resources like memory,
it is difficult to employ advanced techniques such as SNMP and HTTP
servers. <code class="command">gawk</code> fits in quite nicely with its single executable
which needs just a short script to start working.
The following program stores the variables in a file, and a concurrent
process in the embedded system may read the file. The program uses the
site-independent part of the simple web server that we developed in
<a class="ref" href="#Interacting-Service">A Web Service with Interaction</a>.
As mentioned there, all we have to do is to write two new procedures
<code class="code">SetUpServer()</code> and <code class="code">HandleGET()</code>:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function SetUpServer() {
  TopHeader = "&lt;HTML&gt;&lt;title&gt;Remote Configuration&lt;/title&gt;"
  TopDoc = "&lt;BODY&gt;\
    &lt;h2&gt;Please choose one of the following actions:&lt;/h2&gt;\
    &lt;UL&gt;\
      &lt;LI&gt;&lt;A HREF=" MyPrefix "/AboutServer&gt;About this server&lt;/A&gt;&lt;/LI&gt;\
      &lt;LI&gt;&lt;A HREF=" MyPrefix "/ReadConfig&gt;Read Configuration&lt;/A&gt;&lt;/LI&gt;\
      &lt;LI&gt;&lt;A HREF=" MyPrefix "/CheckConfig&gt;Check Configuration&lt;/A&gt;&lt;/LI&gt;\
      &lt;LI&gt;&lt;A HREF=" MyPrefix "/ChangeConfig&gt;Change Configuration&lt;/A&gt;&lt;/LI&gt;\
      &lt;LI&gt;&lt;A HREF=" MyPrefix "/SaveConfig&gt;Save Configuration&lt;/A&gt;&lt;/LI&gt;\
    &lt;/UL&gt;"
  TopFooter  = "&lt;/BODY&gt;&lt;/HTML&gt;"
  if (ConfigFile == "") ConfigFile = "config.asc"
}
</pre></div>

<p>The function <code class="code">SetUpServer()</code> initializes the top level HTML texts
as usual. It also initializes the name of the file that contains the
configuration parameters and their values. In case the user supplies
a name from the command line, that name is used. The file is expected to
contain one parameter per line, with the name of the parameter in
column one and the value in column two.
</p>
<p>The function <code class="code">HandleGET()</code> reflects the structure of the menu
tree as usual. The first menu choice tells the user what this is all
about. The second choice reads the configuration file line by line
and stores the parameters and their values. Notice that the record
separator for this file is <code class="code">"\n"</code>, in contrast to the record separator
for HTTP. The third menu choice builds an HTML table to show
the contents of the configuration file just read. The fourth choice
does the real work of changing parameters, and the last one just saves
the configuration into a file:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function HandleGET() {
  if (MENU[2] == "AboutServer") {
    Document  = "This is a GUI for remote configuration of an\
      embedded system. It is is implemented as one GAWK script."
  } else if (MENU[2] == "ReadConfig") {
    RS = "\n"
    while ((getline &lt; ConfigFile) &gt; 0)
       config[$1] = $2;
    close(ConfigFile)
    RS = "\r\n"
    Document = "Configuration has been read."
  } else if (MENU[2] == "CheckConfig") {
    Document = "&lt;TABLE BORDER=1 CELLPADDING=5&gt;"
    for (i in config)
      Document = Document "&lt;TR&gt;&lt;TD&gt;" i "&lt;/TD&gt;" \
        "&lt;TD&gt;" config[i] "&lt;/TD&gt;&lt;/TR&gt;"
    Document = Document "&lt;/TABLE&gt;"
  } else if (MENU[2] == "ChangeConfig") {
    if ("Param" in GETARG) {            # any parameter to set?
      if (GETARG["Param"] in config) {  # is  parameter valid?
        config[GETARG["Param"]] = GETARG["Value"]
        Document = (GETARG["Param"] " = " GETARG["Value"] ".")
      } else {
        Document = "Parameter &lt;b&gt;" GETARG["Param"] "&lt;/b&gt; is invalid."
      }
    } else {
      Document = "&lt;FORM method=GET&gt;&lt;h4&gt;Change one parameter&lt;/h4&gt;\
        &lt;TABLE BORDER CELLPADDING=5&gt;\
        &lt;TR&gt;&lt;TD&gt;Parameter&lt;/TD&gt;&lt;TD&gt;Value&lt;/TD&gt;&lt;/TR&gt;\
        &lt;TR&gt;&lt;TD&gt;&lt;input type=text name=Param value=\"\" size=20&gt;&lt;/TD&gt;\
            &lt;TD&gt;&lt;input type=text name=Value value=\"\" size=40&gt;&lt;/TD&gt;\
        &lt;/TR&gt;&lt;/TABLE&gt;&lt;input type=submit value=\"Set\"&gt;&lt;/FORM&gt;"
    }
  } else if (MENU[2] == "SaveConfig") {
    for (i in config)
      printf("%s %s\n", i, config[i]) &gt; ConfigFile
    close(ConfigFile)
    Document = "Configuration has been saved."
  }
}
</pre></div>

<a class="index-entry-id" id="index-MiniSQL"></a>
<p>We could also view the configuration file as a database. From this
point of view, the previous program acts like a primitive database server.
Real SQL database systems also make a service available by providing
a TCP port that clients can connect to. But the application level protocols
they use are usually proprietary and also change from time to time.
This is also true for the protocol that
MiniSQL uses.
</p>
<hr>
</div>
<div class="section-level-extent" id="URLCHK">
<div class="nav-panel">
<p>
Next: <a href="#WEBGRAB" accesskey="n" rel="next">WEBGRAB: Extract Links from a Page</a>, Previous: <a href="#REMCONF" accesskey="p" rel="prev">REMCONF: Remote Configuration of Embedded Systems</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="URLCHK_003a-Look-for-Changed-Web-Pages">3.4 URLCHK: Look for Changed Web Pages</h3>
<a class="index-entry-id" id="index-URLCHK-program"></a>
<p>Most people who make heavy use of Internet resources have a large
bookmark file with pointers to interesting web sites. It is impossible
to regularly check by hand if any of these sites have changed. A program
is needed to automatically look at the headers of web pages and tell
which ones have changed. URLCHK does the comparison after using GETURL
with the <code class="code">HEAD</code> method to retrieve the header.
</p>
<p>Like GETURL, this program first checks that it is called with exactly
one command-line parameter. URLCHK also takes the same command-line variables
<code class="code">Proxy</code> and <code class="code">ProxyPort</code> as GETURL,
because these variables are handed over to GETURL for each URL
that gets checked. The one and only parameter is the name of a file that
contains one line for each URL. In the first column, we find the URL, and
the second and third columns hold the length of the URL’s body when checked
for the two last times. Now, we follow this plan:
</p>
<ol class="enumerate">
<li> Read the URLs from the file and remember their most recent lengths

</li><li> Delete the contents of the file

</li><li> For each URL, check its new length and write it into the file

</li><li> If the most recent and the new length differ, tell the user
</li></ol>

<p>It may seem a bit peculiar to read the URLs from a file together
with their two most recent lengths, but this approach has several
advantages. You can call the program again and again with the same
file. After running the program, you can regenerate the changed URLs
by extracting those lines that differ in their second and third columns:
</p>
<div class="example smallexample">
<pre class="example-preformatted">BEGIN {
  if (ARGC != 2) {
    print "URLCHK - check if URLs have changed"
    print "IN:\n    the file with URLs as a command-line parameter"
    print "    file contains URL, old length, new length"
    print "PARAMS:\n    -v Proxy=MyProxy -v ProxyPort=8080"
    print "OUT:\n    same as file with URLs"
    print "JK 02.03.1998"
    exit
  }
  URLfile = ARGV[1]; ARGV[1] = ""
  if (Proxy     != "") Proxy     = " -v Proxy="     Proxy
  if (ProxyPort != "") ProxyPort = " -v ProxyPort=" ProxyPort
  while ((getline &lt; URLfile) &gt; 0)
     Length[$1] = $3 + 0
  close(URLfile)      # now, URLfile is read in and can be updated
  GetHeader = "gawk " Proxy ProxyPort " -v Method=\"HEAD\" -f geturl.awk "
  for (i in Length) {
    GetThisHeader = GetHeader i " 2&gt;&amp;1"
    while ((GetThisHeader | getline) &gt; 0)
      if (toupper($0) ~ /CONTENT-LENGTH/) NewLength = $2 + 0
    close(GetThisHeader)
    print i, Length[i], NewLength &gt; URLfile
    if (Length[i] != NewLength)  # report only changed URLs
      print i, Length[i], NewLength
  }
  close(URLfile)
}
</pre></div>

<p>Another thing that may look strange is the way GETURL is called.
Before calling GETURL, we have to check if the proxy variables need
to be passed on. If so, we prepare strings that will become part
of the command line later. In <code class="code">GetHeader</code>, we store these strings
together with the longest part of the command line. Later, in the loop
over the URLs, <code class="code">GetHeader</code> is appended with the URL and a redirection
operator to form the command that reads the URL’s header over the Internet.
GETURL always sends the headers to <samp class="file">/dev/stderr</samp>. That is
the reason why we need the redirection operator to have the header
piped in.
</p>
<p>This program is not perfect because it assumes that changing URLs
results in changed lengths, which is not necessarily true. A more
advanced approach is to look at some other header line that
holds time information. But, as always when things get a bit more
complicated, this is left as an exercise to the reader.
</p>
<hr>
</div>
<div class="section-level-extent" id="WEBGRAB">
<div class="nav-panel">
<p>
Next: <a href="#STATIST" accesskey="n" rel="next">STATIST: Graphing a Statistical Distribution</a>, Previous: <a href="#URLCHK" accesskey="p" rel="prev">URLCHK: Look for Changed Web Pages</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="WEBGRAB_003a-Extract-Links-from-a-Page">3.5 WEBGRAB: Extract Links from a Page</h3>
<a class="index-entry-id" id="index-WEBGRAB-program"></a>
<a class="index-entry-id" id="index-robot-1"></a>
<p>Sometimes it is necessary to extract links from web pages.
Browsers do it, web robots do it, and sometimes even humans do it.
Since we have a tool like GETURL at hand, we can solve this problem with
some help from the Bourne shell:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN { RS = "https?://[#%&amp;\\+\\-\\./0-9\\:;\\?A-Z_a-z\\~]*" }
RT != "" {
   command = ("gawk -v Proxy=MyProxy -f geturl.awk " RT \
               " &gt; doc" NR ".html")
   print command
}
</pre></div>

<p>Notice that the regular expression for URLs is rather crude. A precise
regular expression is much more complex. But this one works
rather well. One problem is that it is unable to find internal links of
an HTML document.  Another problem is that
‘<samp class="samp">ftp</samp>’, ‘<samp class="samp">telnet</samp>’, ‘<samp class="samp">news</samp>’, ‘<samp class="samp">mailto</samp>’, and other kinds
of links are missing in the regular expression.
However, it is straightforward to add them, if doing so is necessary for other tasks.
</p>
<p>This program reads an HTML file and prints all the HTTP links that it finds.
It relies on <code class="command">gawk</code>’s ability to use regular expressions as the record
separator. With <code class="code">RS</code> set to a regular expression that matches links,
the second action is executed each time a non-empty link is found.
We can find the matching link itself in <code class="code">RT</code>.
</p>
<p>The action could use the <code class="code">system()</code> function to let another GETURL
retrieve the page, but here we use a different approach.
This simple program prints shell commands that can be piped into <code class="command">sh</code>
for execution.  This way it is possible to first extract
the links, wrap shell commands around them, and pipe all the shell commands
into a file. After editing the file, execution of the file retrieves
only those files that we really need. In case we do not want to edit,
we can retrieve all the pages like this:
</p>
<div class="example smallexample">
<pre class="example-preformatted">gawk -f geturl.awk http://www.suse.de | gawk -f webgrab.awk | sh
</pre></div>

<a class="index-entry-id" id="index-Microsoft-Windows-2"></a>
<p>After this, you will find the contents of all referenced documents in
files named <samp class="file">doc*.html</samp> even if they do not contain HTML code.
The most annoying thing is that we always have to pass the proxy to
GETURL. If you do not like to see the headers of the web pages
appear on the screen, you can redirect them to <samp class="file">/dev/null</samp>.
Watching the headers appear can be quite interesting, because
it reveals
interesting details such as which web server the companies use.
Now, it is clear how the clever marketing people
use web robots to determine the
market shares
of Microsoft and Netscape in the web server market.
</p>
<p>Port 80 of any web server is like a small hole in a repellent firewall.
After attaching a browser to port 80, we usually catch a glimpse
of the bright side of the server (its home page). With a tool like GETURL
at hand, we are able to discover some of the more concealed
or even “indecent” services (i.e., lacking conformity to standards of quality).
It can be exciting to see the fancy CGI scripts that lie
there, revealing the inner workings of the server, ready to be called:
</p>
<ul class="itemize mark-bullet">
<li>With a command such as:

<div class="example">
<pre class="example-preformatted">gawk -f geturl.awk http://any.host.on.the.net/cgi-bin/
</pre></div>

<p>some servers give you a directory listing of the CGI files.
Knowing the names, you can try to call some of them and watch
for useful results. Sometimes there are executables in such directories
(such as Perl interpreters) that you may call remotely. If there are
subdirectories with configuration data of the web server, this can also
be quite interesting to read.
</p>
</li><li><a class="index-entry-id" id="index-apache"></a>
The well-known Apache web server usually has its CGI files in the
directory <samp class="file">/cgi-bin</samp>. There you can often find the scripts
<samp class="file">test-cgi</samp> and <samp class="file">printenv</samp>. Both tell you some things
about the current connection and the installation of the web server.
Just call:

<div class="example smallexample">
<pre class="example-preformatted">gawk -f geturl.awk http://any.host.on.the.net/cgi-bin/test-cgi
gawk -f geturl.awk http://any.host.on.the.net/cgi-bin/printenv
</pre></div>

</li><li>Sometimes it is even possible to retrieve system files like the web
server’s log file—possibly containing customer data—or even the file
<samp class="file">/etc/passwd</samp>.
(We don’t recommend this!)
</li></ul>

<p><strong class="strong">Caution:</strong>
Although this may sound funny or simply irrelevant, we are talking about
severe security holes. Try to explore your own system this way and make
sure that none of the above reveals too much information about your system.
</p>
<hr>
</div>
<div class="section-level-extent" id="STATIST">
<div class="nav-panel">
<p>
Next: <a href="#MAZE" accesskey="n" rel="next">MAZE: Walking Through a Maze In Virtual Reality</a>, Previous: <a href="#WEBGRAB" accesskey="p" rel="prev">WEBGRAB: Extract Links from a Page</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="STATIST_003a-Graphing-a-Statistical-Distribution">3.6 STATIST: Graphing a Statistical Distribution</h3>
<a class="index-entry-id" id="index-STATIST-program"></a>

<a class="index-entry-id" id="index-GNUPlot-utility-1"></a>
<a class="index-entry-id" id="index-image-format"></a>
<a class="index-entry-id" id="index-GIF-image-format-1"></a>
<a class="index-entry-id" id="index-PNG-image-format-1"></a>
<a class="index-entry-id" id="index-PS-image-format"></a>
<a class="index-entry-id" id="index-Boutell_002c-Thomas"></a>
<img class="image" src="README_files/gawk_statist.jpg" alt="gawk_statist">

<p>In the HTTP server examples we’ve shown thus far, we never present an image
to the browser and its user. Presenting images is one task. Generating
images that reflect some user input and presenting these dynamically
generated images is another. In this section, we use GNUPlot
for generating <samp class="file">.png</samp>, <samp class="file">.ps</samp>, or <samp class="file">.gif</samp>
files.<a class="footnote" id="DOCF13" href="#FOOT13"><sup>13</sup></a>
</p>
<a class="index-entry-id" id="index-Numerical-Recipes"></a>
<p>The program we develop takes the statistical parameters of two samples
and computes the t-test statistics. As a result, we get the probabilities
that the means and the variances of both samples are the same. In order to
let the user check plausibility, the program presents an image of the
distributions. The statistical computation follows
<cite class="cite">Numerical Recipes in C: The Art of Scientific Computing</cite>
by William H. Press, Saul A. Teukolsky, William T. Vetterling, and Brian P. Flannery.
Since <code class="command">gawk</code> does not have a built-in function
for the computation of the beta function, we use the <code class="code">ibeta()</code> function
of GNUPlot. As a side effect, we learn how to use GNUPlot as a
sophisticated calculator. The comparison of means is done as in <code class="code">tutest</code>,
paragraph 14.2, page 613, and the comparison of variances is done as in <code class="code">ftest</code>,
page 611 in <cite class="cite">Numerical Recipes</cite>.
</p>
<p>As usual, we take the site-independent code for servers and append
our own functions <code class="code">SetUpServer()</code> and <code class="code">HandleGET()</code>:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function SetUpServer() {
  TopHeader = "&lt;HTML&gt;&lt;title&gt;Statistics with GAWK&lt;/title&gt;"
  TopDoc = "&lt;BODY&gt;\
   &lt;h2&gt;Please choose one of the following actions:&lt;/h2&gt;\
   &lt;UL&gt;\
    &lt;LI&gt;&lt;A HREF=" MyPrefix "/AboutServer&gt;About this server&lt;/A&gt;&lt;/LI&gt;\
    &lt;LI&gt;&lt;A HREF=" MyPrefix "/EnterParameters&gt;Enter Parameters&lt;/A&gt;&lt;/LI&gt;\
   &lt;/UL&gt;"
  TopFooter  = "&lt;/BODY&gt;&lt;/HTML&gt;"
  GnuPlot    = "gnuplot 2&gt;&amp;1"
  m1=m2=0;    v1=v2=1;    n1=n2=10
}
</pre></div>

<p>Here, you see the menu structure that the user sees. Later, we
will see how the program structure of the <code class="code">HandleGET()</code> function
reflects the menu structure. What is missing here is the link for the
image we generate. In an event-driven environment, request,
generation, and delivery of images are separated.
</p>
<p>Notice the way we initialize the <code class="code">GnuPlot</code> command string for
the pipe. By default,
GNUPlot outputs the generated image via standard output, as well as
the results of <code class="code">print</code>(ed) calculations via standard error.
The redirection causes standard error to be mixed into standard
output, enabling us to read results of calculations with <code class="code">getline</code>.
By initializing the statistical parameters with some meaningful
defaults, we make sure the user gets an image the first time
he uses the program.
</p>
<a class="index-entry-id" id="index-JavaScript"></a>
<p>Following is the rather long function <code class="code">HandleGET()</code>, which
implements the contents of this service by reacting to the different
kinds of requests from the browser. Before you start playing with
this script, make sure that your browser supports JavaScript and that it also
has this option switched on. The script uses a short snippet of
JavaScript code for delayed opening of a window with an image.
A more detailed explanation follows:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function HandleGET() {
  if (MENU[2] == "AboutServer") {
    Document  = "This is a GUI for a statistical computation.\
      It compares means and variances of two distributions.\
      It is implemented as one GAWK script and uses GNUPLOT."
  } else if (MENU[2] == "EnterParameters") {
    Document = ""
    if ("m1" in GETARG) {     # are there parameters to compare?
      Document = Document "&lt;SCRIPT LANGUAGE=\"JavaScript\"&gt;\
        setTimeout(\"window.open(\\\"" MyPrefix "/Image" systime()\
         "\\\",\\\"dist\\\", \\\"status=no\\\");\", 1000); &lt;/SCRIPT&gt;"
      m1 = GETARG["m1"]; v1 = GETARG["v1"]; n1 = GETARG["n1"]
      m2 = GETARG["m2"]; v2 = GETARG["v2"]; n2 = GETARG["n2"]
      t = (m1-m2)/sqrt(v1/n1+v2/n2)
      df = (v1/n1+v2/n2)*(v1/n1+v2/n2)/((v1/n1)*(v1/n1)/(n1-1) \
           + (v2/n2)*(v2/n2) /(n2-1))
      if (v1&gt;v2) {
          f = v1/v2
          df1 = n1 - 1
          df2 = n2 - 1
      } else {
          f = v2/v1
          df1 = n2 - 1
          df2 = n1 - 1
      }
      print "pt=ibeta(" df/2 ",0.5," df/(df+t*t) ")"  |&amp; GnuPlot
      print "pF=2.0*ibeta(" df2/2 "," df1/2 "," \
            df2/(df2+df1*f) ")"                    |&amp; GnuPlot
      print "print pt, pF"                         |&amp; GnuPlot
      RS="\n"; GnuPlot |&amp; getline; RS="\r\n"    # $1 is pt, $2 is pF
      print "invsqrt2pi=1.0/sqrt(2.0*pi)"          |&amp; GnuPlot
      print "nd(x)=invsqrt2pi/sd*exp(-0.5*((x-mu)/sd)**2)" |&amp; GnuPlot
      print "set term png small color"             |&amp; GnuPlot
      #print "set term postscript color"           |&amp; GnuPlot
      #print "set term gif medium size 320,240"    |&amp; GnuPlot
      print "set yrange[-0.3:]"                    |&amp; GnuPlot
      print "set label 'p(m1=m2) =" $1 "' at 0,-0.1 left"  |&amp; GnuPlot
      print "set label 'p(v1=v2) =" $2 "' at 0,-0.2 left"  |&amp; GnuPlot
      print "plot mu=" m1 ",sd=" sqrt(v1) ", nd(x) title 'sample 1',\
        mu=" m2 ",sd=" sqrt(v2) ", nd(x) title 'sample 2'" |&amp; GnuPlot
      print "quit"                                         |&amp; GnuPlot
      GnuPlot |&amp; getline Image
      while ((GnuPlot |&amp; getline) &gt; 0)
          Image = Image RS $0
      close(GnuPlot)
    }
    Document = Document "\
    &lt;h3&gt;Do these samples have the same Gaussian distribution?&lt;/h3&gt;\
    &lt;FORM METHOD=GET&gt; &lt;TABLE BORDER CELLPADDING=5&gt;\
    &lt;TR&gt;\
    &lt;TD&gt;1. Mean    &lt;/TD&gt;
    &lt;TD&gt;&lt;input type=text name=m1 value=" m1 " size=8&gt;&lt;/TD&gt;\
    &lt;TD&gt;1. Variance&lt;/TD&gt;
    &lt;TD&gt;&lt;input type=text name=v1 value=" v1 " size=8&gt;&lt;/TD&gt;\
    &lt;TD&gt;1. Count   &lt;/TD&gt;
    &lt;TD&gt;&lt;input type=text name=n1 value=" n1 " size=8&gt;&lt;/TD&gt;\
    &lt;/TR&gt;&lt;TR&gt;\
    &lt;TD&gt;2. Mean    &lt;/TD&gt;
    &lt;TD&gt;&lt;input type=text name=m2 value=" m2 " size=8&gt;&lt;/TD&gt;\
    &lt;TD&gt;2. Variance&lt;/TD&gt;
    &lt;TD&gt;&lt;input type=text name=v2 value=" v2 " size=8&gt;&lt;/TD&gt;\
    &lt;TD&gt;2. Count   &lt;/TD&gt;
    &lt;TD&gt;&lt;input type=text name=n2 value=" n2 " size=8&gt;&lt;/TD&gt;\
    &lt;/TR&gt;                   &lt;input type=submit value=\"Compute\"&gt;\
    &lt;/TABLE&gt;&lt;/FORM&gt;&lt;BR&gt;"
  } else if (MENU[2] ~ "Image") {
    Reason = "OK" ORS "Content-type: image/png"
    #Reason = "OK" ORS "Content-type: application/x-postscript"
    #Reason = "OK" ORS "Content-type: image/gif"
    Header = Footer = ""
    Document = Image
  }
}
</pre></div>

<a class="index-entry-id" id="index-PostScript"></a>
<p>As usual, we give a short description of the service in the first
menu choice. The third menu choice shows us that generation and
presentation of an image are two separate actions. While the latter
takes place quite instantly in the third menu choice, the former
takes place in the much longer second choice. Image data passes from the
generating action to the presenting action via the variable <code class="code">Image</code>
that contains a complete <samp class="file">.png</samp> image, which is otherwise stored
in a file. If you prefer <samp class="file">.ps</samp> or <samp class="file">.gif</samp> images over the
default <samp class="file">.png</samp> images, you may select these options by uncommenting
the appropriate lines. But remember to do so in two places: when
telling GNUPlot which kind of images to generate, and when transmitting the
image at the end of the program.
</p>
<p>Looking at the end of the program,
the way we pass the ‘<samp class="samp">Content-type</samp>’ to the browser is a bit unusual.
It is appended to the ‘<samp class="samp">OK</samp>’ of the first header line
to make sure the type information becomes part of the header.
The other variables that get transmitted across the network are
made empty, because in this case we do not have an HTML document to
transmit, but rather raw image data to contain in the body.
</p>
<p>Most of the work is done in the second menu choice. It starts with a
strange JavaScript code snippet. When first implementing this server,
we used a short ‘<samp class="samp">"&lt;IMG&nbsp;SRC="<!-- /@w --> MyPrefix "/Image&gt;"</samp>’ here. But then
browsers got smarter and tried to improve on speed by requesting the
image and the HTML code at the same time. When doing this, the browser
tries to build up a connection for the image request while the request for
the HTML text is not yet completed. The browser tries to connect
to the <code class="command">gawk</code> server on port 8080 while port 8080 is still in use for
transmission of the HTML text. The connection for the image cannot be
built up, so the image appears as “broken” in the browser window.
We solved this problem by telling the browser to open a separate window
for the image, but only after a delay of 1000 milliseconds.
By this time, the server should be ready for serving the next request.
</p>
<p>But there is one more subtlety in the JavaScript code.
Each time the JavaScript code opens a window for the image, the
name of the image is appended with a timestamp (<code class="code">systime()</code>).
Why this constant change of name for the image? Initially, we always named
the image <code class="code">Image</code>, but then the Netscape browser noticed the name
had <em class="emph">not</em> changed since the previous request and displayed the
previous image (caching behavior). The server core
is implemented so that browsers are told <em class="emph">not</em> to cache anything.
Obviously HTTP requests do not always work as expected. One way to
circumvent the cache of such overly smart browsers is to change the
name of the image with each request. These three lines of JavaScript
caused us a lot of trouble.
</p>
<p>The rest can be broken
down into two phases. At first, we check if there are statistical
parameters. When the program is first started, there usually are no
parameters because it enters the page coming from the top menu.
Then, we only have to present the user a form that he can use to change
statistical parameters and submit them. Subsequently, the submission of
the form causes the execution of the first phase because <em class="emph">now</em>
there <em class="emph">are</em> parameters to handle.
</p>
<p>Now that we have parameters, we know there will be an image available.
Therefore we insert the JavaScript code here to initiate the opening
of the image in a separate window. Then,
we prepare some variables that will be passed to GNUPlot for calculation
of the probabilities. Prior to reading the results, we must temporarily
change <code class="code">RS</code> because GNUPlot separates lines with newlines.
After instructing GNUPlot to generate a <samp class="file">.png</samp> (or <samp class="file">.ps</samp> or
<samp class="file">.gif</samp>) image, we initiate the insertion of some text,
explaining the resulting probabilities. The final ‘<samp class="samp">plot</samp>’ command
actually generates the image data. This raw binary has to be read in carefully
without adding, changing, or deleting a single byte. Hence the unusual
initialization of <code class="code">Image</code> and completion with a <code class="code">while</code> loop.
</p>
<p>When using this server, it soon becomes clear that it is far from being
perfect. It mixes source code of six scripting languages or protocols:
</p>
<ul class="itemize mark-bullet">
<li>GNU <code class="command">awk</code> implements a server for the protocol:
</li><li>HTTP which transmits:
</li><li>HTML text which contains a short piece of:
</li><li>JavaScript code opening a separate window.
</li><li>A Bourne shell script is used for piping commands into:
</li><li>GNUPlot to generate the image to be opened.
</li></ul>

<p>After all this work, the GNUPlot image opens in the JavaScript window
where it can be viewed by the user.
</p>
<p>It is probably better not to mix up so many different languages.
The result is not very readable.  Furthermore, the
statistical part of the server does not take care of invalid input.
Among others, using negative variances causes invalid results.
</p>
<hr>
</div>
<div class="section-level-extent" id="MAZE">
<div class="nav-panel">
<p>
Next: <a href="#MOBAGWHO" accesskey="n" rel="next">MOBAGWHO: a Simple Mobile Agent</a>, Previous: <a href="#STATIST" accesskey="p" rel="prev">STATIST: Graphing a Statistical Distribution</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="MAZE_003a-Walking-Through-a-Maze-In-Virtual-Reality">3.7 MAZE: Walking Through a Maze In Virtual Reality</h3>
<a class="index-entry-id" id="index-MAZE"></a>
<a class="index-entry-id" id="index-VRML"></a>
<blockquote class="quotation">
<a class="index-entry-id" id="index-Perlis_002c-Alan"></a>
<p><i class="i">In the long run, every program becomes rococo, and then rubble.</i><br>
</p></blockquote>
<div class="center">— <em class="emph">Alan Perlis</em>
</div>
<p>By now, we know how to present arbitrary ‘<samp class="samp">Content-type</samp>’s to a browser.
In this section, our server presents a 3D world to our browser.
The 3D world is described in a scene description language (VRML,
Virtual Reality Modeling Language) that allows us to travel through a
perspective view of a 2D maze with our browser. Browsers with a
VRML plugin enable exploration of this technology. We could do
one of those boring ‘<samp class="samp">Hello world</samp>’ examples here, that are usually
presented when introducing novices to
VRML. If you have never written
any VRML code, have a look at
the VRML FAQ.
Presenting a static VRML scene is a bit trivial; in order to expose
<code class="command">gawk</code>’s capabilities, we will present a dynamically generated
VRML scene. The function <code class="code">SetUpServer()</code> is very simple because it
only sets the default HTML page and initializes the random number
generator. As usual, the surrounding server lets you browse the maze.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function SetUpServer() {
  TopHeader = "&lt;HTML&gt;&lt;title&gt;Walk through a maze&lt;/title&gt;"
  TopDoc = "\
    &lt;h2&gt;Please choose one of the following actions:&lt;/h2&gt;\
    &lt;UL&gt;\
      &lt;LI&gt;&lt;A HREF=" MyPrefix "/AboutServer&gt;About this server&lt;/A&gt;\
      &lt;LI&gt;&lt;A HREF=" MyPrefix "/VRMLtest&gt;Watch a simple VRML scene&lt;/A&gt;\
    &lt;/UL&gt;"
  TopFooter  = "&lt;/HTML&gt;"
  srand()
}
</pre></div>

<p>The function <code class="code">HandleGET()</code> is a bit longer because it first computes
the maze and afterwards generates the VRML code that is sent across
the network. As shown in the STATIST example
(see <a class="pxref" href="#STATIST">STATIST: Graphing a Statistical Distribution</a>),
we set the type of the
content to VRML and then store the VRML representation of the maze as the
page content. We assume that the maze is stored in a 2D array. Initially,
the maze consists of walls only. Then, we add an entry and an exit to the
maze and let the rest of the work be done by the function <code class="code">MakeMaze()</code>.
Now, only the wall fields are left in the maze. By iterating over the these
fields, we generate one line of VRML code for each wall field.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function HandleGET() {
  if (MENU[2] == "AboutServer") {
    Document  = "If your browser has a VRML 2 plugin,\
      this server shows you a simple VRML scene."
  } else if (MENU[2] == "VRMLtest") {
    XSIZE = YSIZE = 11              # initially, everything is wall
    for (y = 0; y &lt; YSIZE; y++)
       for (x = 0; x &lt; XSIZE; x++)
          Maze[x, y] = "#"
    delete Maze[0, 1]              # entry is not wall
    delete Maze[XSIZE-1, YSIZE-2]  # exit  is not wall
    MakeMaze(1, 1)
    Document = "\
#VRML V2.0 utf8\n\
Group {\n\
  children [\n\
    PointLight {\n\
      ambientIntensity 0.2\n\
      color 0.7 0.7 0.7\n\
      location 0.0 8.0 10.0\n\
    }\n\
    DEF B1 Background {\n\
      skyColor [0 0 0, 1.0 1.0 1.0 ]\n\
      skyAngle 1.6\n\
      groundColor [1 1 1, 0.8 0.8 0.8, 0.2 0.2 0.2 ]\n\
      groundAngle [ 1.2 1.57 ]\n\
    }\n\
    DEF Wall Shape {\n\
      geometry Box {size 1 1 1}\n\
      appearance Appearance { material Material { diffuseColor 0 0 1 } }\n\
    }\n\
    DEF Entry Viewpoint {\n\
      position 0.5 1.0 5.0\n\
      orientation 0.0 0.0 -1.0 0.52\n\
    }\n"
    for (i in Maze) {
      split(i, t, SUBSEP)
      Document = Document "    Transform { translation "
      Document = Document t[1] " 0 -" t[2] " children USE Wall }\n"
    }
    Document = Document "  ] # end of group for world\n}"
    Reason = "OK" ORS "Content-type: model/vrml"
    Header = Footer = ""
  }
}
</pre></div>

<p>Finally, we have a look at <code class="code">MakeMaze()</code>, the function that generates
the <code class="code">Maze</code> array. When entered, this function assumes that the array
has been initialized so that each element represents a wall element and
the maze is initially full of wall elements. Only the entrance and the exit
of the maze should have been left free. The parameters of the function tell
us which element must be marked as not being a wall. After this, we take
a look at the four neighboring elements and remember which we have already
treated. Of all the neighboring elements, we take one at random and
walk in that direction. Therefore, the wall element in that direction has
to be removed and then, we call the function recursively for that element.
The maze is only completed if we iterate the above procedure for
<em class="emph">all</em> neighboring elements (in random order) and for our present
element by recursively calling the function for the present element. This
last iteration could have been done in a loop,
but it is done much simpler recursively.
</p>
<p>Notice that elements with coordinates that are both odd are assumed to be
on our way through the maze and the generating process cannot terminate
as long as there is such an element not being <code class="code">delete</code>d. All other
elements are potentially part of the wall.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function MakeMaze(x, y) {
  delete Maze[x, y]     # here we are, we have no wall here
  p = 0                 # count unvisited fields in all directions
  if (x-2 SUBSEP y   in Maze) d[p++] = "-x"
  if (x   SUBSEP y-2 in Maze) d[p++] = "-y"
  if (x+2 SUBSEP y   in Maze) d[p++] = "+x"
  if (x   SUBSEP y+2 in Maze) d[p++] = "+y"
  if (p&gt;0) {            # if there are unvisited fields, go there
    p = int(p*rand())   # choose one unvisited field at random
    if        (d[p] == "-x") { delete Maze[x - 1, y]; MakeMaze(x - 2, y)
    } else if (d[p] == "-y") { delete Maze[x, y - 1]; MakeMaze(x, y - 2)
    } else if (d[p] == "+x") { delete Maze[x + 1, y]; MakeMaze(x + 2, y)
    } else if (d[p] == "+y") { delete Maze[x, y + 1]; MakeMaze(x, y + 2)
    }                   # we are back from recursion
    MakeMaze(x, y);     # try again while there are unvisited fields
  }
}
</pre></div>

<hr>
</div>
<div class="section-level-extent" id="MOBAGWHO">
<div class="nav-panel">
<p>
Next: <a href="#STOXPRED" accesskey="n" rel="next">STOXPRED: Stock Market Prediction As A Service</a>, Previous: <a href="#MAZE" accesskey="p" rel="prev">MAZE: Walking Through a Maze In Virtual Reality</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="MOBAGWHO_003a-a-Simple-Mobile-Agent">3.8 MOBAGWHO: a Simple Mobile Agent</h3>
<a class="index-entry-id" id="index-MOBAGWHO-program"></a>
<a class="index-entry-id" id="index-agent-1"></a>
<blockquote class="quotation">
<a class="index-entry-id" id="index-Hoare_002c-C_002eA_002eR_002e"></a>
<p><i class="i">There are two ways of constructing a software design: One way is to
make it so simple that there are obviously no deficiencies, and the
other way is to make it so complicated that there are no obvious
deficiencies.</i>
</p></blockquote>
<div class="center">— <em class="emph">C.A.R. Hoare</em>
</div>
<p>A <em class="dfn">mobile agent</em> is a program that can be dispatched from a computer and
transported to a remote server for execution. This is called <em class="dfn">migration</em>,
which means that a process on another system is started that is independent
from its originator. Ideally, it wanders through
a network while working for its creator or owner. In places like
the UMBC Agent Web,
people are quite confident that (mobile) agents are a software engineering
paradigm that enables us to significantly increase the efficiency
of our work. Mobile agents could become the mediators between users and
the networking world. For an unbiased view at this technology,
see the remarkable paper <cite class="cite">Mobile Agents: Are they a good
idea?</cite>.<a class="footnote" id="DOCF14" href="#FOOT14"><sup>14</sup></a>
</p>
<p>When trying to migrate a process from one system to another,
a server process is needed on the receiving side. Depending on the kind
of server process, several ways of implementation come to mind.
How the process is implemented depends upon the kind of server process:
</p>
<ul class="itemize mark-bullet">
<li>HTTP can be used as the protocol for delivery of the migrating
process. In this case, we use a common web
server as the receiving server process. A universal CGI script
mediates between migrating process and web server.
Each server willing to accept migrating agents makes this universal
service available. HTTP supplies the <code class="code">POST</code> method to transfer
some data to a file on the web server. When a CGI script is called
remotely with the <code class="code">POST</code> method instead of the usual <code class="code">GET</code> method,
data is transmitted from the client process to the standard input
of the server’s CGI script. So, to implement a mobile agent,
we must not only write the agent program to start on the client
side, but also the CGI script to receive the agent on the server side.

</li><li><a class="index-entry-id" id="index-CGI-_0028Common-Gateway-Interface_0029-2"></a>
<a class="index-entry-id" id="index-apache-1"></a>
The <code class="code">PUT</code> method can also be used for migration. HTTP does not
require a CGI script for migration via <code class="code">PUT</code>. However, with common web
servers there is no advantage to this solution, because web servers such as
Apache
require explicit activation of a special <code class="code">PUT</code> script.

</li><li><cite class="cite">Agent Tcl</cite> pursues a different course; it relies on a dedicated server
process with a dedicated protocol specialized for receiving mobile agents.
</li></ul>

<p>Our agent example abuses a common web server as a migration tool. So, it needs a
universal CGI script on the receiving side (the web server). The receiving script is
activated with a <code class="code">POST</code> request when placed into a location like
<samp class="file">/httpd/cgi-bin/PostAgent.sh</samp>.
</p>
<div class="example">
<pre class="example-preformatted">#!/bin/sh
MobAg=/tmp/MobileAgent.$$
# direct script to mobile agent file
cat &gt; $MobAg
# execute agent concurrently
gawk -f $MobAg $MobAg &gt; /dev/null &amp;
# HTTP header, terminator and body
gawk 'BEGIN { print "\r\nAgent started" }'
rm $MobAg      # delete script file of agent
</pre></div>

<p>By making its process id (<code class="code">$$</code>) part of the unique file name, the
script avoids conflicts between concurrent instances of the script.
First, all lines
from standard input (the mobile agent’s source code) are copied into
this unique file. Then, the agent is started as a concurrent process
and a short message reporting this fact is sent to the submitting client.
Finally, the script file of the mobile agent is removed because it is
no longer needed. Although it is a short script, there are several noteworthy
points:
</p>
<dl class="table">
<dt>Security</dt>
<dd><p><em class="emph">There is none</em>. In fact, the CGI script should never
be made available on a server that is part of the Internet because everyone
would be allowed to execute arbitrary commands with it. This behavior is
acceptable only when performing rapid prototyping.
</p>
</dd>
<dt>Self-Reference</dt>
<dd><p>Each migrating instance of an agent is started
in a way that enables it to read its own source code from standard input
and use the code for subsequent
migrations. This is necessary because it needs to treat the agent’s code
as data to transmit. <code class="command">gawk</code> is not the ideal language for such
a job. Lisp and Tcl are more suitable because they do not make a distinction
between program code and data.
</p>
</dd>
<dt>Independence</dt>
<dd><p>After migration, the agent is not linked to its
former home in any way. By reporting ‘<samp class="samp">Agent started</samp>’, it waves
“Goodbye” to its origin. The originator may choose to terminate or not.
</p></dd>
</dl>

<a class="index-entry-id" id="index-Lisp"></a>
<p>The originating agent itself is started just like any other command-line
script, and reports the results on standard output.  By letting the name
of the original host migrate with the agent, the agent that migrates
to a host far away from its origin can report the result back home.
Having arrived at the end of the journey, the agent establishes
a connection and reports the results.  This is the reason for
determining the name of the host with ‘<samp class="samp">uname -n</samp>’ and storing it
in <code class="code">MyOrigin</code> for later use.  We may also set variables with the
<samp class="option">-v</samp> option from the command line. This interactivity is only
of importance in the context of starting a mobile agent; therefore this
<code class="code">BEGIN</code> pattern and its action do not take part in migration:
</p>
<div class="example smallexample">
<pre class="example-preformatted">BEGIN {
  if (ARGC != 2) {
    print "MOBAG - a simple mobile agent"
    print "CALL:\n    gawk -f mobag.awk mobag.awk"
    print "IN:\n    the name of this script as a command-line parameter"
    print "PARAM:\n    -v MyOrigin=myhost.com"
    print "OUT:\n    the result on stdout"
    print "JK 29.03.1998 01.04.1998"
    exit
  }
  if (MyOrigin == "") {
     "uname -n" | getline MyOrigin
     close("uname -n")
  }
}
</pre></div>

<p>Since <code class="command">gawk</code> cannot manipulate and transmit parts of the program
directly, the source code is read and stored in strings.
Therefore, the program scans itself for
the beginning and the ending of functions.
Each line in between is appended to the code string until the end of
the function has been reached. A special case is this part of the program
itself. It is not a function.
Placing a similar framework around it causes it to be treated
like a function. Notice that this mechanism works for all the
functions of the source code, but it cannot guarantee that the order
of the functions is preserved during migration:
</p>
<div class="example smallexample">
<pre class="example-preformatted">#ReadMySelf
/^function /                     { FUNC = $2 }
/^END/ || /^#ReadMySelf/         { FUNC = $1 }
FUNC != ""                       { MOBFUN[FUNC] = MOBFUN[FUNC] RS $0 }
(FUNC != "") &amp;&amp; (/^}/ || /^#EndOfMySelf/) \
                                 { FUNC = "" }
#EndOfMySelf
</pre></div>

<p>The web server code in
<a class="ref" href="#Interacting-Service">A Web Service with Interaction</a>,
was first developed as a site-independent core. Likewise, the
<code class="command">gawk</code>-based mobile agent
starts with an agent-independent core, to which can be appended
application-dependent functions.  What follows is the only
application-independent function needed for the mobile agent:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function migrate(Destination, MobCode, Label) {
  MOBVAR["Label"] = Label
  MOBVAR["Destination"] = Destination
  RS = ORS = "\r\n"
  HttpService = "/inet/tcp/0/" Destination
  for (i in MOBFUN)
     MobCode = (MobCode "\n" MOBFUN[i])
  MobCode = MobCode  "\n\nBEGIN {"
  for (i in MOBVAR)
     MobCode = (MobCode "\n  MOBVAR[\"" i "\"] = \"" MOBVAR[i] "\"")
  MobCode = MobCode "\n}\n"
  print "POST /cgi-bin/PostAgent.sh HTTP/1.0"  |&amp; HttpService
  print "Content-length:", length(MobCode) ORS |&amp; HttpService
  printf "%s", MobCode                         |&amp; HttpService
  while ((HttpService |&amp; getline) &gt; 0)
     print $0
  close(HttpService)
}
</pre></div>

<p>The <code class="code">migrate()</code> function prepares the
aforementioned strings containing the program code and transmits them to a
server. A consequence of this modular approach is that the <code class="code">migrate()</code>
function takes some parameters that aren’t needed in this application,
but that will be in future ones. Its mandatory parameter <code class="code">Destination</code> holds the
name (or IP address) of the server that the agent wants as a host for its
code. The optional parameter <code class="code">MobCode</code> may contain some <code class="command">gawk</code>
code that is inserted during migration in front of all other code.
The optional parameter <code class="code">Label</code> may contain
a string that tells the agent what to do in program execution after
arrival at its new home site. One of the serious obstacles in implementing
a framework for mobile agents is that it does not suffice to migrate the
code. It is also necessary to migrate the state of execution of the agent. In
contrast to <cite class="cite">Agent Tcl</cite>, this program does not try to migrate the complete set
of variables. The following conventions apply:
</p>
<ul class="itemize mark-bullet">
<li>Each variable in an agent program is local to the current host and does
<em class="emph">not</em> migrate.

</li><li>The array <code class="code">MOBFUN</code> shown above is an exception. It is handled
by the function <code class="code">migrate()</code> and does migrate with the application.

</li><li>The other exception is the array <code class="code">MOBVAR</code>. Each variable that
takes part in migration has to be an element of this array.
<code class="code">migrate()</code> also takes care of this.
</li></ul>

<p>Now it’s clear what happens to the <code class="code">Label</code> parameter of the
function <code class="code">migrate()</code>. It is copied into <code class="code">MOBVAR["Label"]</code> and
travels alongside the other data. Since traveling takes place via HTTP,
records must be separated with <code class="code">"\r\n"</code> in <code class="code">RS</code> and
<code class="code">ORS</code> as usual. The code assembly for migration takes place in
three steps:
</p>
<ul class="itemize mark-bullet">
<li>Iterate over <code class="code">MOBFUN</code> to collect all functions verbatim.

</li><li>Prepare a <code class="code">BEGIN</code> pattern and put assignments to mobile
variables into the action part.

</li><li>Transmission itself resembles GETURL: the header with the request
and the <code class="code">Content-length</code> is followed by the body. In case there is
any reply over the network, it is read completely and echoed to
standard output to avoid irritating the server.
</li></ul>

<p>The application-independent framework is now almost complete. What follows
is the <code class="code">END</code> pattern which executes when the mobile agent has
finished reading its own code. First, it checks whether it is already
running on a remote host or not. In case initialization has not yet taken
place, it starts <code class="code">MyInit()</code>. Otherwise (later, on a remote host), it
starts <code class="code">MyJob()</code>:
</p>
<div class="example smallexample">
<pre class="example-preformatted">END {
  if (ARGC != 2) exit    # stop when called with wrong parameters
  if (MyOrigin != "")    # is this the originating host?
    MyInit()             # if so, initialize the application
  else                   # we are on a host with migrated data
    MyJob()              # so we do our job
}
</pre></div>

<p>All that’s left to extend the framework into a complete application
is to write two application-specific functions: <code class="code">MyInit()</code> and
<code class="code">MyJob()</code>. Keep in mind that the former is executed once on the
originating host, while the latter is executed after each migration:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function MyInit() {
  MOBVAR["MyOrigin"] = MyOrigin
  MOBVAR["Machines"] = "localhost/80 max/80 moritz/80 castor/80"
  split(MOBVAR["Machines"], Machines)           # which host is the first?
  migrate(Machines[1], "", "")                  # go to the first host
  while (("/inet/tcp/8080/0/0" |&amp; getline) &gt; 0) # wait for result
    print $0                                    # print result
  close("/inet/tcp/8080/0/0")
}
</pre></div>

<p>As mentioned earlier, this agent takes the name of its origin
(<code class="code">MyOrigin</code>) with it. Then, it takes the name of its first
destination and goes there for further work. Notice that this name has
the port number of the web server appended to the name of the server,
because the function <code class="code">migrate()</code> needs it this way to create
the <code class="code">HttpService</code> variable. Finally, it waits for the result to arrive.
The <code class="code">MyJob()</code> function runs on the remote host:
</p>
<div class="example smallexample">
<pre class="example-preformatted">function MyJob() {
  # forget this host
  sub(MOBVAR["Destination"], "", MOBVAR["Machines"])
  MOBVAR["Result"]=MOBVAR["Result"] SUBSEP SUBSEP MOBVAR["Destination"] ":"
  while (("who" | getline) &gt; 0)               # who is logged in?
    MOBVAR["Result"] = MOBVAR["Result"] SUBSEP $0
  close("who")
  if (index(MOBVAR["Machines"], "/") &gt; 0) {   # any more machines to visit?
    split(MOBVAR["Machines"], Machines)       # which host is next?
    migrate(Machines[1], "", "")              # go there
  } else {                                    # no more machines
    gsub(SUBSEP, "\n", MOBVAR["Result"])      # send result to origin
    print MOBVAR["Result"] |&amp; "/inet/tcp/0/" MOBVAR["MyOrigin"] "/8080"
    close("/inet/tcp/0/" MOBVAR["MyOrigin"] "/8080")
  }
}
</pre></div>

<p>After migrating, the first thing to do in <code class="code">MyJob()</code> is to delete
the name of the current host from the list of hosts to visit. Now, it
is time to start the real work by appending the host’s name to the
result string, and reading line by line who is logged in on this host.
A very annoying circumstance is the fact that the elements of
<code class="code">MOBVAR</code> cannot hold the newline character (<code class="code">"\n"</code>). If they
did, migration of this string would not work because the string wouldn’t
obey the syntax rule for a string in <code class="command">gawk</code>.
<code class="code">SUBSEP</code> is used as a temporary replacement.
</p>
<p>If the list of hosts to visit holds
at least one more entry, the agent migrates to that place to go on
working there. Otherwise, we replace the <code class="code">SUBSEP</code>s
with a newline character in the resulting string, and report it to
the originating host, whose name is stored in <code class="code">MOBVAR["MyOrigin"]</code>.
</p>
<hr>
</div>
<div class="section-level-extent" id="STOXPRED">
<div class="nav-panel">
<p>
Next: <a href="#PROTBASE" accesskey="n" rel="next">PROTBASE: Searching Through A Protein Database</a>, Previous: <a href="#MOBAGWHO" accesskey="p" rel="prev">MOBAGWHO: a Simple Mobile Agent</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="STOXPRED_003a-Stock-Market-Prediction-As-A-Service">3.9 STOXPRED: Stock Market Prediction As A Service</h3>
<a class="index-entry-id" id="index-STOXPRED-program"></a>
<a class="index-entry-id" id="index-Yahoo_0021-1"></a>
<blockquote class="quotation">
<p><i class="i">Far out in the uncharted backwaters of the unfashionable end of
the Western Spiral arm of the Galaxy lies a small unregarded yellow sun.</i>
</p>
<p><i class="i">Orbiting this at a distance of roughly ninety-two million miles is an
utterly insignificant little blue-green planet whose ape-descendent life
forms are so amazingly primitive that they still think digital watches are
a pretty neat idea.</i>
</p>
<p><i class="i">This planet has — or rather had — a problem, which was this:
most of the people living on it were unhappy for pretty much of the time.
Many solutions were suggested for this problem, but most of these were
largely concerned with the movements of small green pieces of paper,
which is odd because it wasn’t the small green pieces of paper that
were unhappy.</i> <br>
</p></blockquote>
<div class="center">— <em class="emph">Douglas Adams, <cite class="cite">The Hitch Hiker’s Guide to the Galaxy</cite></em>
</div>
<a class="index-entry-id" id="index-cron-utility"></a>
<p>Valuable services on the Internet are usually <em class="emph">not</em> implemented
as mobile agents. There are much simpler ways of implementing services.
All Unix systems provide, for example, the <code class="command">cron</code> service.
Unix system users can write a list of tasks to be done each day, each
week, twice a day, or just once. The list is entered into a file named
<samp class="file">crontab</samp>.  For example, to distribute a newsletter on a daily
basis this way, use <code class="command">cron</code> for calling a script each day early
in the morning:
</p>
<div class="example">
<pre class="example-preformatted"># run at 8 am on weekdays, distribute the newsletter
0 8 * * 1-5   $HOME/bin/daily.job &gt;&gt; $HOME/log/newsletter 2&gt;&amp;1
</pre></div>

<p>The script first looks for interesting information on the Internet,
assembles it in a nice form and sends the results via email to
the customers.
</p>
<p>The following is an example of a primitive
newsletter on stock market prediction. It is a report which first
tries to predict the change of each share in the Dow Jones Industrial
Index for the particular day. Then it mentions some especially
promising shares as well as some shares which look remarkably bad
on that day. The report ends with the usual disclaimer which tells
every child <em class="emph">not</em> to try this at home and hurt anybody.
<a class="index-entry-id" id="index-Dow-Jones-Industrial-Index"></a>
</p>
<div class="example smallexample">
<pre class="example-preformatted">Good morning Uncle Scrooge,

This is your daily stock market report for Monday, October 16, 2000.
Here are the predictions for today:

        AA      neutral
        GE      up
        JNJ     down
        MSFT    neutral
        …
        UTX     up
        DD      down
        IBM     up
        MO      down
        WMT     up
        DIS     up
        INTC    up
        MRK     down
        XOM     down
        EK      down
        IP      down

The most promising shares for today are these:

        INTC            http://biz.yahoo.com/n/i/intc.html

The stock shares to avoid today are these:

        EK              http://biz.yahoo.com/n/e/ek.html
        IP              http://biz.yahoo.com/n/i/ip.html
        DD              http://biz.yahoo.com/n/d/dd.html
        …
</pre></div>

<p>The script as a whole is rather long. In order to ease the pain of
studying other people’s source code, we have broken the script
up into meaningful parts which are invoked one after the other.
The basic structure of the script is as follows:
</p>
<div class="example">
<pre class="example-preformatted">BEGIN {
  Init()
  ReadQuotes()
  CleanUp()
  Prediction()
  Report()
  SendMail()
}
</pre></div>

<p>The earlier parts store data into variables and arrays which are
subsequently used by later parts of the script. The <code class="code">Init()</code> function
first checks if the script is invoked correctly (without any parameters).
If not, it informs the user of the correct usage. What follows are preparations
for the retrieval of the historical quote data. The names of the 30 stock
shares are stored in an array <code class="code">name</code> along with the current date
in <code class="code">day</code>, <code class="code">month</code>, and <code class="code">year</code>.
</p>
<p>All users who are separated
from the Internet by a firewall and have to direct their Internet accesses
to a proxy must supply the name of the proxy to this script with the
‘<samp class="samp">-v Proxy=<var class="var">name</var></samp>’ option. For most users, the default proxy and
port number should suffice.
</p>
<div class="example">
<pre class="example-preformatted">function Init() {
  if (ARGC != 1) {
    print "STOXPRED - daily stock share prediction"
    print "IN:\n    no parameters, nothing on stdin"
    print "PARAM:\n    -v Proxy=MyProxy -v ProxyPort=80"
    print "OUT:\n    commented predictions as email"
    print "JK 09.10.2000"
    exit
  }
  # Remember ticker symbols from Dow Jones Industrial Index
  StockCount = split("AA GE JNJ MSFT AXP GM JPM PG BA HD KO \
    SBC C HON MCD T CAT HWP MMM UTX DD IBM MO WMT DIS INTC \
    MRK XOM EK IP", name);
  # Remember the current date as the end of the time series
  day   = strftime("%d")
  month = strftime("%m")
  year  = strftime("%Y")
  if (Proxy     == "")  Proxy     = "chart.yahoo.com"
  if (ProxyPort ==  0)  ProxyPort = 80
  YahooData = "/inet/tcp/0/" Proxy "/" ProxyPort
}
</pre></div>

<a class="index-entry-id" id="index-CSV-format"></a>
<p>There are two really interesting parts in the script. One is the
function which reads the historical stock quotes from an Internet
server. The other is the one that does the actual prediction. In
the following function we see how the quotes are read from the
Yahoo server. The data which comes from the server is in
CSV format (comma-separated values):
</p>
<div class="example">
<pre class="example-preformatted">Date,Open,High,Low,Close,Volume
9-Oct-00,22.75,22.75,21.375,22.375,7888500
6-Oct-00,23.8125,24.9375,21.5625,22,10701100
5-Oct-00,24.4375,24.625,23.125,23.50,5810300
</pre></div>

<p>Lines contain values of the same time instant, whereas columns are
separated by commas and contain the kind of data that is described
in the header (first) line. At first, <code class="command">gawk</code> is instructed to
separate columns by commas (‘<samp class="samp">FS = ","</samp>’). In the loop that follows,
a connection to the Yahoo server is first opened, then a download takes
place, and finally the connection is closed. All this happens once for
each ticker symbol. In the body of this loop, an Internet address is
built up as a string according to the rules of the Yahoo server. The
starting and ending date are chosen to be exactly the same, but one year
apart in the past. All the action is initiated within the <code class="code">printf</code>
command which transmits the request for data to the Yahoo server.
</p>
<p>In the inner loop, the server’s data is first read and then scanned
line by line. Only lines which have six columns and the name of a month
in the first column contain relevant data. This data is stored
in the two-dimensional array <code class="code">quote</code>; one dimension
being time, the other being the ticker symbol. During retrieval of the
first stock’s data, the calendar names of the time instances are stored
in the array <code class="code">day</code> because we need them later.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function ReadQuotes() {
  # Retrieve historical data for each ticker symbol
  FS = ","
  for (stock = 1; stock &lt;= StockCount; stock++) {
    URL = "http://chart.yahoo.com/table.csv?s=" name[stock] \
          "&amp;a=" month "&amp;b=" day   "&amp;c=" year-1 \
          "&amp;d=" month "&amp;e=" day   "&amp;f=" year \
          "g=d&amp;q=q&amp;y=0&amp;z=" name[stock] "&amp;x=.csv"
    printf("GET " URL " HTTP/1.0\r\n\r\n") |&amp; YahooData
    while ((YahooData |&amp; getline) &gt; 0) {
      if (NF == 6 &amp;&amp; $1 ~ /Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec/) {
        if (stock == 1)
          days[++daycount] = $1;
        quote[$1, stock] = $5
      }
    }
    close(YahooData)
  }
  FS = " "
}
</pre></div>

<p>Now that we <em class="emph">have</em> the data, it can be checked once again to make sure
that no individual stock is missing or invalid, and that all the stock quotes are
aligned correctly. Furthermore, we renumber the time instances. The
most recent day gets day number 1 and all other days get consecutive
numbers. All quotes are rounded toward the nearest whole number in US Dollars.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function CleanUp() {
  # clean up time series; eliminate incomplete data sets
  for (d = 1; d &lt;= daycount; d++) {
    for (stock = 1; stock &lt;= StockCount; stock++)
      if (! ((days[d], stock) in quote))
          stock = StockCount + 10
    if (stock &gt; StockCount + 1)
        continue
    datacount++
    for (stock = 1; stock &lt;= StockCount; stock++)
      data[datacount, stock] = int(0.5 + quote[days[d], stock])
  }
  delete quote
  delete days
}
</pre></div>

<p>Now we have arrived at the second really interesting part of the whole affair.
What we present here is a very primitive prediction algorithm:
<em class="emph">If a stock fell yesterday, assume it will also fall today; if
it rose yesterday, assume it will rise today</em>.  (Feel free to replace this
algorithm with a smarter one.) If a stock changed in the same direction
on two consecutive days, this is an indication which should be highlighted.
Two-day advances are stored in <code class="code">hot</code> and two-day declines in
<code class="code">avoid</code>.
</p>
<p>The rest of the function is a sanity check. It counts the number of
correct predictions in relation to the total number of predictions
one could have made in the year before.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function Prediction() {
  # Predict each ticker symbol by prolonging yesterday's trend
  for (stock = 1; stock &lt;= StockCount; stock++) {
    if         (data[1, stock] &gt; data[2, stock]) {
      predict[stock] = "up"
    } else if  (data[1, stock] &lt; data[2, stock]) {
      predict[stock] = "down"
    } else {
      predict[stock] = "neutral"
    }
    if ((data[1, stock] &gt; data[2, stock]) &amp;&amp; (data[2, stock] &gt; data[3, stock]))
      hot[stock] = 1
    if ((data[1, stock] &lt; data[2, stock]) &amp;&amp; (data[2, stock] &lt; data[3, stock]))
      avoid[stock] = 1
  }
  # Do a plausibility check: how many predictions proved correct?
  for (s = 1; s &lt;= StockCount; s++) {
    for (d = 1; d &lt;= datacount-2; d++) {
      if         (data[d+1, s] &gt; data[d+2, s]) {
        UpCount++
      } else if  (data[d+1, s] &lt; data[d+2, s]) {
        DownCount++
      } else {
        NeutralCount++
      }
      if (((data[d, s]  &gt; data[d+1, s]) &amp;&amp; (data[d+1, s]  &gt; data[d+2, s])) ||
          ((data[d, s]  &lt; data[d+1, s]) &amp;&amp; (data[d+1, s]  &lt; data[d+2, s])) ||
          ((data[d, s] == data[d+1, s]) &amp;&amp; (data[d+1, s] == data[d+2, s])))
        CorrectCount++
    }
  }
}
</pre></div>

<p>At this point the hard work has been done: the array <code class="code">predict</code>
contains the predictions for all the ticker symbols. It is up to the
function <code class="code">Report()</code> to find some nice words to present the
desired information.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function Report() {
  # Generate report
  report =        "\nThis is your daily "
  report = report "stock market report for "strftime("%A, %B %d, %Y")".\n"
  report = report "Here are the predictions for today:\n\n"
  for (stock = 1; stock &lt;= StockCount; stock++)
    report = report "\t" name[stock] "\t" predict[stock] "\n"
  for (stock in hot) {
    if (HotCount++ == 0)
      report = report "\nThe most promising shares for today are these:\n\n"
    report = report "\t" name[stock] "\t\thttp://biz.yahoo.com/n/" \
      tolower(substr(name[stock], 1, 1)) "/" tolower(name[stock]) ".html\n"
  }
  for (stock in avoid) {
    if (AvoidCount++ == 0)
      report = report "\nThe stock shares to avoid today are these:\n\n"
    report = report "\t" name[stock] "\t\thttp://biz.yahoo.com/n/" \
      tolower(substr(name[stock], 1, 1)) "/" tolower(name[stock]) ".html\n"
  }
  report = report "\nThis sums up to " HotCount+0 " winners and " AvoidCount+0
  report = report " losers. When using this kind\nof prediction scheme for"
  report = report " the 12 months which lie behind us,\nwe get " UpCount
  report = report " 'ups' and " DownCount " 'downs' and " NeutralCount
  report = report " 'neutrals'. Of all\nthese " UpCount+DownCount+NeutralCount
  report = report " predictions " CorrectCount " proved correct next day.\n"
  report = report "A success rate of "\
             int(100*CorrectCount/(UpCount+DownCount+NeutralCount)) "%.\n"
  report = report "Random choice would have produced a 33% success rate.\n"
  report = report "Disclaimer: Like every other prediction of the stock\n"
  report = report "market, this report is, of course, complete nonsense.\n"
  report = report "If you are stupid enough to believe these predictions\n"
  report = report "you should visit a doctor who can treat your ailment."
}
</pre></div>

<p>The function <code class="code">SendMail()</code> goes through the list of customers and opens
a pipe to the <code class="command">mail</code> command for each of them. Each one receives an
email message with a proper subject heading and is addressed with his full name.
</p>
<div class="example smallexample">
<pre class="example-preformatted">function SendMail() {
  # send report to customers
  customer["uncle.scrooge@ducktown.gov"] = "Uncle Scrooge"
  customer["more@utopia.org"           ] = "Sir Thomas More"
  customer["spinoza@denhaag.nl"        ] = "Baruch de Spinoza"
  customer["marx@highgate.uk"          ] = "Karl Marx"
  customer["keynes@the.long.run"       ] = "John Maynard Keynes"
  customer["bierce@devil.hell.org"     ] = "Ambrose Bierce"
  customer["laplace@paris.fr"          ] = "Pierre Simon de Laplace"
  for (c in customer) {
    MailPipe = "mail -s 'Daily Stock Prediction Newsletter'" c
    print "Good morning " customer[c] "," | MailPipe
    print report "\n.\n" | MailPipe
    close(MailPipe)
  }
}
</pre></div>

<p>Be patient when running the script by hand.
Retrieving the data for all the ticker symbols and sending the emails
may take several minutes to complete, depending upon network traffic
and the speed of the available Internet link.
The quality of the prediction algorithm is likely to be disappointing.
Try to find a better one.
Should you find one with a success rate of more than 50%, please tell
us about it! It is only for the sake of curiosity, of course. <code class="code">:-)</code>
</p>
<hr>
</div>
<div class="section-level-extent" id="PROTBASE">
<div class="nav-panel">
<p>
Previous: <a href="#STOXPRED" accesskey="p" rel="prev">STOXPRED: Stock Market Prediction As A Service</a>, Up: <a href="#Some-Applications-and-Techniques" accesskey="u" rel="up">Some Applications and Techniques</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="PROTBASE_003a-Searching-Through-A-Protein-Database">3.10 PROTBASE: Searching Through A Protein Database</h3>
<a class="index-entry-id" id="index-PROTBASE"></a>
<a class="index-entry-id" id="index-NCBI_002c-National-Center-for-Biotechnology-Information"></a>
<a class="index-entry-id" id="index-BLAST_002c-Basic-Local-Alignment-Search-Tool"></a>
<a class="index-entry-id" id="index-Hoare_002c-C_002eA_002eR_002e-1"></a>
<blockquote class="quotation">
<p><i class="i">Inside every large problem is a small
problem struggling to get out.</i><a class="footnote" id="DOCF15" href="#FOOT15"><sup>15</sup></a>
</p></blockquote>
<div class="center">— <em class="emph">With apologies to C.A.R. Hoare</em>
</div>
<p>Yahoo’s database of stock market data is just one among the many large
databases on the Internet. Another one is located at NCBI
(National Center for Biotechnology
Information). Established in 1988 as a national resource for molecular
biology information, NCBI creates public databases, conducts research
in computational biology, develops software tools for analyzing genome
data, and disseminates biomedical information. In this section, we
look at one of NCBI’s public services, which is called BLAST
(Basic Local Alignment Search Tool).
</p>
<p>You probably know that the information necessary for reproducing living
cells is encoded in the genetic material of the cells. The genetic material
is a very long chain of four base nucleotides. It is the order of
appearance (the sequence) of nucleotides which contains the information
about the substance to be produced. Scientists in biotechnology often
find a specific fragment, determine the nucleotide sequence, and need
to know where the sequence at hand comes from.
</p>
<p>This is where the large
databases enter the game. At NCBI, databases store the knowledge
about which sequences have ever been found and where they have been found.
When the scientist sends his sequence to the BLAST service, the server
looks for regions of genetic material in its database which
look the most similar to the delivered nucleotide sequence. After a
search time of some seconds or minutes the server sends an answer to
the scientist. In order to make access simple, NCBI chose to offer
their database service through popular Internet protocols. There are
four basic ways to use the so-called BLAST services:
</p>
<ul class="itemize mark-bullet">
<li>The easiest way to use BLAST is through the web. Users may simply point
their browsers at the NCBI home page
and link to the BLAST pages.
NCBI provides a stable URL that may be used to perform BLAST searches
without interactive use of a web browser. This is what we will do later
in this section.
A demonstration client
and a <samp class="file">README</samp> file demonstrate how to access this URL.

</li><li>Currently,
<code class="command">blastcl3</code> is the standard network BLAST client.
You can download <code class="command">blastcl3</code> from the
anonymous FTP location.

</li><li>BLAST 2.0 can be run locally as a full executable and can be used to run
BLAST searches against private local databases, or downloaded copies of the
NCBI databases. BLAST 2.0 executables may be found on the NCBI
anonymous FTP server.

</li><li>The NCBI BLAST Email server is the best option for people without convenient
access to the web. A similarity search can be performed by sending a properly
formatted mail message containing the nucleotide or protein query sequence to
<a class="email" href="mailto:blast@ncbi.nlm.nih.gov">blast@ncbi.nlm.nih.gov</a>. The query sequence is compared against the
specified database using the BLAST algorithm and the results are returned in
an email message. For more information on formulating email BLAST searches,
you can send a message consisting of the word “HELP” to the same address,
<a class="email" href="mailto:blast@ncbi.nlm.nih.gov">blast@ncbi.nlm.nih.gov</a>.
</li></ul>

<p>Our starting point is the demonstration client mentioned in the first option.
The <samp class="file">README</samp> file that comes along with the client explains the whole
process in a nutshell. In the rest of this section, we first show
what such requests look like. Then we show how to use <code class="command">gawk</code> to
implement a client in about 10 lines of code. Finally, we show how to
interpret the result returned from the service.
</p>
<p>Sequences are expected to be represented in the standard
IUB/IUPAC amino acid and nucleic acid codes,
with these exceptions:  lower-case letters are accepted and are mapped
into upper-case; a single hyphen or dash can be used to represent a gap
of indeterminate length; and in amino acid sequences, ‘<samp class="samp">U</samp>’ and ‘<samp class="samp">*</samp>’
are acceptable letters (see below).  Before submitting a request, any numerical
digits in the query sequence should either be removed or replaced by
appropriate letter codes (e.g., ‘<samp class="samp">N</samp>’ for unknown nucleic acid residue
or ‘<samp class="samp">X</samp>’ for unknown amino acid residue).
The nucleic acid codes supported are:
</p>
<div class="example">
<pre class="example-preformatted">A --&gt; adenosine               M --&gt; A C (amino)
C --&gt; cytidine                S --&gt; G C (strong)
G --&gt; guanine                 W --&gt; A T (weak)
T --&gt; thymidine               B --&gt; G T C
U --&gt; uridine                 D --&gt; G A T
R --&gt; G A (purine)            H --&gt; A C T
Y --&gt; T C (pyrimidine)        V --&gt; G C A
K --&gt; G T (keto)              N --&gt; A G C T (any)
                              -  gap of indeterminate length
</pre></div>

<p>Now you know the alphabet of nucleotide sequences. The last two lines
of the following example query show such a sequence, which is obviously
made up only of elements of the alphabet just described. Store this example
query into a file named <samp class="file">protbase.request</samp>. You are now ready to send
it to the server with the demonstration client.
</p>
<div class="example">
<pre class="example-preformatted">PROGRAM blastn
DATALIB month
EXPECT 0.75
BEGIN
&gt;GAWK310 the gawking gene GNU AWK
tgcttggctgaggagccataggacgagagcttcctggtgaagtgtgtttcttgaaatcat
caccaccatggacagcaaa
</pre></div>

<a class="index-entry-id" id="index-FASTA_002fPearson-format"></a>
<p>The actual search request begins with the mandatory parameter ‘<samp class="samp">PROGRAM</samp>’
in the first column followed by the value ‘<samp class="samp">blastn</samp>’ (the name of the
program) for searching nucleic acids.  The next line contains the mandatory
search parameter ‘<samp class="samp">DATALIB</samp>’ with the value ‘<samp class="samp">month</samp>’ for the newest
nucleic acid sequences.  The third line contains an optional ‘<samp class="samp">EXPECT</samp>’
parameter and the value desired for it. The fourth line contains the
mandatory ‘<samp class="samp">BEGIN</samp>’ directive, followed by the query sequence in
FASTA/Pearson format.
Each line of information must be less than 80 characters in length.
</p>
<p>The “month” database contains all new or revised sequences released in the
last 30 days and is useful for searching against new sequences.
There are five different blast programs, <code class="command">blastn</code> being the one that
compares a nucleotide  query  sequence  against a nucleotide sequence database.
</p>
<p>The last server directive that must appear in every request is the
‘<samp class="samp">BEGIN</samp>’ directive. The query sequence should immediately follow the
‘<samp class="samp">BEGIN</samp>’ directive and must appear in FASTA/Pearson format.
A sequence in
FASTA/Pearson format begins with a single-line description.
The description line, which is required, is distinguished from the lines of
sequence data that follow it by having a greater-than (‘<samp class="samp">&gt;</samp>’) symbol
in the first column.  For the purposes of the BLAST server, the text of
the description is arbitrary.
</p>
<p>If you prefer to use a client written in <code class="command">gawk</code>, just store the following
10 lines of code into a file named <samp class="file">protbase.awk</samp> and use this client
instead. Invoke it with ‘<samp class="samp">gawk -f protbase.awk protbase.request</samp>’.
Then wait a minute and watch the result coming in. In order to replicate
the demonstration client’s behavior as closely as possible, this client
does not use a proxy server. We could also have extended the client program
in <a class="ref" href="#GETURL">Retrieving Web Pages</a>, to implement the client request from
<samp class="file">protbase.awk</samp> as a special case.
</p>
<div class="example smallexample">
<pre class="example-preformatted">{ request = request "\n" $0 }

END {
  BLASTService     = "/inet/tcp/0/www.ncbi.nlm.nih.gov/80"
  printf "POST /cgi-bin/BLAST/nph-blast_report HTTP/1.0\n" |&amp; BLASTService
  printf "Content-Length: " length(request) "\n\n"         |&amp; BLASTService
  printf request                                           |&amp; BLASTService
  while ((BLASTService |&amp; getline) &gt; 0)
      print $0
  close(BLASTService)
}
</pre></div>

<p>The demonstration client from NCBI is 214 lines long (written in C) and
it is not immediately obvious what it does. Our client is so short that
it <em class="emph">is</em> obvious what it does. First it loops over all lines of the
query and stores the whole query into a variable. Then the script
establishes an Internet connection to the NCBI server and transmits the
query by framing it with a proper HTTP request. Finally it receives
and prints the complete result coming from the server.
</p>
<p>Now, let us look at the result. It begins with an HTTP header, which you
can ignore. Then there are some comments about the query having been
filtered to avoid spuriously high scores. After this, there is a reference
to the paper that describes the software being used for searching the data
base. After a repetition of the original query’s description we find the
list of significant alignments:
</p>
<div class="example smallexample">
<pre class="example-preformatted">Sequences producing significant alignments:                        (bits)  Value

gb|AC021182.14|AC021182 Homo sapiens chromosome 7 clone RP11-733...    38  0.20
gb|AC021056.12|AC021056 Homo sapiens chromosome 3 clone RP11-115...    38  0.20
emb|AL160278.10|AL160278 Homo sapiens chromosome 9 clone RP11-57...    38  0.20
emb|AL391139.11|AL391139 Homo sapiens chromosome X clone RP11-35...    38  0.20
emb|AL365192.6|AL365192 Homo sapiens chromosome 6 clone RP3-421H...    38  0.20
emb|AL138812.9|AL138812 Homo sapiens chromosome 11 clone RP1-276...    38  0.20
gb|AC073881.3|AC073881 Homo sapiens chromosome 15 clone CTD-2169...    38  0.20
</pre></div>

<p>This means that the query sequence was found in seven human chromosomes.
But the value 0.20 (20%) means that the probability of an accidental match
is rather high (20%) in all cases and should be taken into account.
You may wonder what the first column means. It is a key to the specific
database in which this occurrence was found.  The unique sequence identifiers
reported in the search results can be used as sequence retrieval keys
via the NCBI server. The syntax of sequence header lines used by the NCBI
BLAST server depends on the database from which each sequence was obtained.
The table below lists the identifiers for the databases from which the
sequences were derived.
</p>

<table class="multitable">
<tbody><tr><td>GenBank</td><td><code class="code">gb|accession|locus</code></td></tr>
<tr><td>EMBL Data Library</td><td><code class="code">emb|accession|locus</code></td></tr>
<tr><td>DDBJ, DNA Database of Japan</td><td><code class="code">dbj|accession|locus</code></td></tr>
<tr><td>NBRF PIR</td><td><code class="code">pir||entry</code></td></tr>
<tr><td>Protein Research Foundation</td><td><code class="code">prf||name</code></td></tr>
<tr><td>SWISS-PROT</td><td><code class="code">sp|accession|entry&nbsp;name<!-- /@w --></code></td></tr>
<tr><td>Brookhaven Protein Data Bank</td><td><code class="code">pdb|entry|chain</code></td></tr>
<tr><td>Kabat’s Sequences of Immuno…</td><td><code class="code">gnl|kabat|identifier</code></td></tr>
<tr><td>Patents</td><td><code class="code">pat|country|number</code></td></tr>
<tr><td>GenInfo Backbone Id</td><td><code class="code">bbs|number</code></td></tr>
</tbody>
</table>


<p>For example, an identifier might be ‘<samp class="samp">gb|AC021182.14|AC021182</samp>’, where the
‘<samp class="samp">gb</samp>’ tag indicates that the identifier refers to a GenBank sequence,
‘<samp class="samp">AC021182.14</samp>’ is its GenBank ACCESSION, and ‘<samp class="samp">AC021182</samp>’ is the GenBank LOCUS.
The identifier contains no spaces, so that a space indicates the end of the
identifier.
</p>
<p>Let us continue in the result listing. Each of the seven alignments mentioned
above is subsequently described in detail. We will have a closer look at
the first of them.
</p>
<div class="example smallexample">
<pre class="example-preformatted">&gt;gb|AC021182.14|AC021182 Homo sapiens chromosome 7 clone RP11-733N23, WORKING DRAFT SEQUENCE, 4
             unordered pieces
          Length = 176383

 Score = 38.2 bits (19), Expect = 0.20
 Identities = 19/19 (100%)
 Strand = Plus / Plus

Query: 35    tggtgaagtgtgtttcttg 53
             |||||||||||||||||||
Sbjct: 69786 tggtgaagtgtgtttcttg 69804
</pre></div>

<p>This alignment was located on the human chromosome 7. The fragment on which
part of the query was found had a total length of 176383. Only 19 of the
nucleotides matched and the matching sequence ran from character 35 to 53
in the query sequence and from 69786 to 69804 in the fragment on chromosome 7.
If you are still reading at this point, you are probably interested in finding
out more about Computational Biology and you might appreciate the following
hints.
</p>
<a class="index-entry-id" id="index-Computational-Biology"></a>
<a class="index-entry-id" id="index-Bioinformatics"></a>
<ol class="enumerate">
<li> There is a book called <cite class="cite">Introduction to Computational Biology</cite>
by Michael S. Waterman, which is worth reading if you are seriously
interested. You can find a good
book review
on the Internet.

</li><li> While Waterman’s book explains the algorithms employed internally
in the database search engines, most practitioners prefer to approach
the subject differently. The applied side of Computational Biology is
called Bioinformatics, and emphasizes the tools available for day-to-day
work as well as how to actually <em class="emph">use</em> them. One of the very few affordable
books on Bioinformatics is
<cite class="cite">Developing Bioinformatics Computer Skills</cite>.

</li><li> The sequences <em class="emph">gawk</em> and <em class="emph">gnuawk</em> are in widespread use in
the genetic material of virtually every earthly living being. Let us
take this as a clear indication that the divine creator has intended
<code class="command">gawk</code> to prevail over other scripting languages such as ‘<samp class="samp">perl</samp>’,
‘<samp class="samp">tcl</samp>’, or ‘<samp class="samp">python</samp>’ which are not even proper sequences. (:-)
</li></ol>

<hr>
</div>
</div>
<div class="chapter-level-extent" id="Links">
<div class="nav-panel">
<p>
Next: <a href="#GNU-Free-Documentation-License" accesskey="n" rel="next">GNU Free Documentation License</a>, Previous: <a href="#Some-Applications-and-Techniques" accesskey="p" rel="prev">Some Applications and Techniques</a>, Up: <a href="#Top" accesskey="u" rel="up">General Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Related-Links">4 Related Links</h2>

<p>This section lists the URLs for various items discussed in this web page.
They are presented in the order in which they appear.
</p>
<dl class="table">
<dt><cite class="cite">Internet Programming with Python</cite></dt>
<dd><p><a class="uref" href="http://cewing.github.io/training.python_web/html/index.html">http://cewing.github.io/training.python_web/html/index.html</a>
</p>
</dd>
<dt><cite class="cite">Advanced Perl Programming</cite></dt>
<dd><p><a class="uref" href="http://www.oreilly.com/catalog/advperl">http://www.oreilly.com/catalog/advperl</a>
</p>
</dd>
<dt><cite class="cite">Web Client Programming with Perl</cite></dt>
<dd><p><a class="uref" href="http://www.oreilly.com/catalog/webclient">http://www.oreilly.com/catalog/webclient</a>
</p>
</dd>
<dt>Richard Stevens’s home page and book</dt>
<dd><p><a class="uref" href="http://www.kohala.com/start">http://www.kohala.com/start</a>
</p>
</dd>
<dt>Volume III of <cite class="cite">Internetworking with TCP/IP</cite>, by Comer and Stevens</dt>
<dd><p><a class="uref" href="http://www.cs.purdue.edu/homes/dec/tcpip3s.cont.html">http://www.cs.purdue.edu/homes/dec/tcpip3s.cont.html</a>
</p>
</dd>
<dt>XBM Graphics File Format</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/X_BitMap">https://en.wikipedia.org/wiki/X_BitMap</a>
</p>
</dd>
<dt>GNUPlot</dt>
<dd><p><a class="uref" href="http://www.gnuplot.info/">http://www.gnuplot.info</a>
</p>
</dd>
<dt>Mark Humphrys’ Eliza page</dt>
<dd><p><a class="uref" href="https://computing.dcu.ie/~humphrys/eliza.html">https://computing.dcu.ie/~humphrys/eliza.html</a>
</p>
</dd>
<dt>Eliza on Wikipedia</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/ELIZA">https://en.wikipedia.org/wiki/ELIZA</a>
</p>
</dd>
<dt>Java versions of Eliza with source code</dt>
<dd><p><a class="uref" href="https://github.com/codeanticode/eliza">https://github.com/codeanticode/eliza</a>
</p>
</dd>
<dt>Loebner Contest</dt>
<dd><p><a class="uref" href="https://www.ocf.berkeley.edu/~arihuang/academic/research/loebner.html">https://www.ocf.berkeley.edu/~arihuang/academic/research/loebner.html</a>
</p>
</dd>
<dt>Tck/Tk Information</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/Tcl">https://en.wikipedia.org/wiki/Tcl</a>
</p>
</dd>
<dt>Intel 80x86 Processors</dt>
<dt>Embedded PCs</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/Embedded_system">https://en.wikipedia.org/wiki/Embedded_system</a>
</p>
</dd>
<dt>AMD Elan Processors</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/Am5x86">https://en.wikipedia.org/wiki/Am5x86</a>
</p>
</dd>
<dt>XINU</dt>
<dd><p><a class="uref" href="https://xinu.cs.purdue.edu/">https://xinu.cs.purdue.edu</a>
</p>
</dd>
<dt>GNU/Linux</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/GNU/Linux_naming_controversy">https://en.wikipedia.org/wiki/GNU/Linux_naming_controversy</a>
</p>
</dd>
<dt>MiniSQL</dt>
<dd><p><a class="uref" href="https://hughestech.com.au/products/msql">https://hughestech.com.au/products/msql</a>
</p>
</dd>
<dt>Market Share Surveys</dt>
<dd><p><a class="uref" href="http://www.netcraft.com/survey">http://www.netcraft.com/survey</a>
</p>
</dd>
<dt><cite class="cite">Numerical Recipes in C: The Art of Scientific Computing</cite></dt>
<dd><p><a class="uref" href="http://numerical.recipes/">http://numerical.recipes/</a>
</p>
</dd>
<dt>VRML</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/VRML">https://en.wikipedia.org/wiki/VRML</a>
</p>
</dd>
<dt>The UMBC Agent Web</dt>
<dd><p><a class="uref" href="https://agents.umbc.edu/">https://agents.umbc.edu</a>
</p>
</dd>
<dt>Apache Web Server</dt>
<dd><p><a class="uref" href="http://www.apache.org/">http://www.apache.org</a>
</p>
</dd>
<dt>National Center for Biotechnology Information (NCBI)</dt>
<dd><p><a class="uref" href="http://www.ncbi.nlm.nih.gov/">http://www.ncbi.nlm.nih.gov</a>
</p>
</dd>
<dt>Basic Local Alignment Search Tool (BLAST)</dt>
<dd><p><a class="uref" href="https://www.nature.com/scitable/topicpage/basic-local-alignment-search-tool-blast-29096">https://www.nature.com/scitable/topicpage/basic-local-alignment-search-tool-blast-29096</a>
</p>
</dd>
<dt>BLAST Pages</dt>
<dd><p><a class="uref" href="http://www.ncbi.nlm.nih.gov/BLAST">http://www.ncbi.nlm.nih.gov/BLAST</a>
</p>
</dd>
<dt>BLAST Demonstration Client</dt>
<dd><p><a class="uref" href="http://www.genebee.msu.su/blast/blast_overview.html#Network">http://www.genebee.msu.su/blast/blast_overview.html#Network</a>
</p>
</dd>
<dt>BLAST anonymous FTP location</dt>
<dd><p><a class="uref" href="https://www.ncbi.nlm.nih.gov/books/NBK62345/">https://www.ncbi.nlm.nih.gov/books/NBK62345/</a>
</p>
</dd>
<dt>BLAST 2.0 Executables</dt>
<dd><p><a class="uref" href="ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST">ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST</a>
</p>
</dd>
<dt>IUB/IUPAC Amino Acid and Nucleic Acid Codes</dt>
<dd><p><a class="uref" href="https://en.wikipedia.org/wiki/Nucleic_acid_notation">https://en.wikipedia.org/wiki/Nucleic_acid_notation</a>
</p>
</dd>
<dt>FASTA/Pearson Format</dt>
<dd><p><a class="uref" href="https://de.wikipedia.org/wiki/FASTA-Format">https://de.wikipedia.org/wiki/FASTA-Format</a>
</p>
</dd>
<dt>Fasta/Pearson Sequence in Java</dt>
<dd><p><a class="uref" href="http://www.kazusa.or.jp/java/codon_table_java/">http://www.kazusa.or.jp/java/codon_table_java/</a>
</p>
</dd>
<dt>Book Review of <cite class="cite">Introduction to Computational Biology</cite></dt>
<dd><p><a class="uref" href="https://dl.acm.org/doi/abs/10.1145/332925.332927">https://dl.acm.org/doi/abs/10.1145/332925.332927</a>
</p>
</dd>
<dt><cite class="cite">Developing Bioinformatics Computer Skills</cite></dt>
<dd><p><a class="uref" href="http://www.oreilly.com/catalog/bioskills/">http://www.oreilly.com/catalog/bioskills/</a>
</p>
</dd>
</dl>

<hr>
</div>
<div class="unnumbered-level-extent" id="GNU-Free-Documentation-License">
<div class="nav-panel">
<p>
Next: <a href="#Index" accesskey="n" rel="next">Index</a>, Previous: <a href="#Links" accesskey="p" rel="prev">Related Links</a>, Up: <a href="#Top" accesskey="u" rel="up">General Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="unnumbered" id="GNU-Free-Documentation-License-1">GNU Free Documentation License</h2>
<a class="index-entry-id" id="index-FDL-_0028Free-Documentation-License_0029"></a>
<a class="index-entry-id" id="index-Free-Documentation-License-_0028FDL_0029"></a>
<a class="index-entry-id" id="index-GNU-Free-Documentation-License"></a>
<div class="center">Version 1.3, 3 November 2008
</div>

<div class="display">
<pre class="display-preformatted">Copyright © 2000, 2001, 2002, 2007, 2008 Free Software Foundation, Inc.
<a class="uref" href="http://fsf.org/">http://fsf.org/</a>

Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.
</pre></div>

<ol class="enumerate" start="0">
<li> PREAMBLE

<p>The purpose of this License is to make a manual, textbook, or other
functional and useful document <em class="dfn">free</em> in the sense of freedom: to
assure everyone the effective freedom to copy and redistribute it,
with or without modifying it, either commercially or noncommercially.
Secondarily, this License preserves for the author and publisher a way
to get credit for their work, while not being considered responsible
for modifications made by others.
</p>
<p>This License is a kind of “copyleft”, which means that derivative
works of the document must themselves be free in the same sense.  It
complements the GNU General Public License, which is a copyleft
license designed for free software.
</p>
<p>We have designed this License in order to use it for manuals for free
software, because free software needs free documentation: a free
program should come with manuals providing the same freedoms that the
software does.  But this License is not limited to software manuals;
it can be used for any textual work, regardless of subject matter or
whether it is published as a printed book.  We recommend this License
principally for works whose purpose is instruction or reference.
</p>
</li><li> APPLICABILITY AND DEFINITIONS

<p>This License applies to any manual or other work, in any medium, that
contains a notice placed by the copyright holder saying it can be
distributed under the terms of this License.  Such a notice grants a
world-wide, royalty-free license, unlimited in duration, to use that
work under the conditions stated herein.  The “Document”, below,
refers to any such manual or work.  Any member of the public is a
licensee, and is addressed as “you”.  You accept the license if you
copy, modify or distribute the work in a way requiring permission
under copyright law.
</p>
<p>A “Modified Version” of the Document means any work containing the
Document or a portion of it, either copied verbatim, or with
modifications and/or translated into another language.
</p>
<p>A “Secondary Section” is a named appendix or a front-matter section
of the Document that deals exclusively with the relationship of the
publishers or authors of the Document to the Document’s overall
subject (or to related matters) and contains nothing that could fall
directly within that overall subject.  (Thus, if the Document is in
part a textbook of mathematics, a Secondary Section may not explain
any mathematics.)  The relationship could be a matter of historical
connection with the subject or with related matters, or of legal,
commercial, philosophical, ethical or political position regarding
them.
</p>
<p>The “Invariant Sections” are certain Secondary Sections whose titles
are designated, as being those of Invariant Sections, in the notice
that says that the Document is released under this License.  If a
section does not fit the above definition of Secondary then it is not
allowed to be designated as Invariant.  The Document may contain zero
Invariant Sections.  If the Document does not identify any Invariant
Sections then there are none.
</p>
<p>The “Cover Texts” are certain short passages of text that are listed,
as Front-Cover Texts or Back-Cover Texts, in the notice that says that
the Document is released under this License.  A Front-Cover Text may
be at most 5 words, and a Back-Cover Text may be at most 25 words.
</p>
<p>A “Transparent” copy of the Document means a machine-readable copy,
represented in a format whose specification is available to the
general public, that is suitable for revising the document
straightforwardly with generic text editors or (for images composed of
pixels) generic paint programs or (for drawings) some widely available
drawing editor, and that is suitable for input to text formatters or
for automatic translation to a variety of formats suitable for input
to text formatters.  A copy made in an otherwise Transparent file
format whose markup, or absence of markup, has been arranged to thwart
or discourage subsequent modification by readers is not Transparent.
An image format is not Transparent if used for any substantial amount
of text.  A copy that is not “Transparent” is called “Opaque”.
</p>
<p>Examples of suitable formats for Transparent copies include plain
<small class="sc">ASCII</small> without markup, Texinfo input format, LaTeX input
format, <abbr class="acronym">SGML</abbr> or <abbr class="acronym">XML</abbr> using a publicly available
<abbr class="acronym">DTD</abbr>, and standard-conforming simple <abbr class="acronym">HTML</abbr>,
PostScript or <abbr class="acronym">PDF</abbr> designed for human modification.  Examples
of transparent image formats include <abbr class="acronym">PNG</abbr>, <abbr class="acronym">XCF</abbr> and
<abbr class="acronym">JPG</abbr>.  Opaque formats include proprietary formats that can be
read and edited only by proprietary word processors, <abbr class="acronym">SGML</abbr> or
<abbr class="acronym">XML</abbr> for which the <abbr class="acronym">DTD</abbr> and/or processing tools are
not generally available, and the machine-generated <abbr class="acronym">HTML</abbr>,
PostScript or <abbr class="acronym">PDF</abbr> produced by some word processors for
output purposes only.
</p>
<p>The “Title Page” means, for a printed book, the title page itself,
plus such following pages as are needed to hold, legibly, the material
this License requires to appear in the title page.  For works in
formats which do not have any title page as such, “Title Page” means
the text near the most prominent appearance of the work’s title,
preceding the beginning of the body of the text.
</p>
<p>The “publisher” means any person or entity that distributes copies
of the Document to the public.
</p>
<p>A section “Entitled XYZ” means a named subunit of the Document whose
title either is precisely XYZ or contains XYZ in parentheses following
text that translates XYZ in another language.  (Here XYZ stands for a
specific section name mentioned below, such as “Acknowledgements”,
“Dedications”, “Endorsements”, or “History”.)  To “Preserve the Title”
of such a section when you modify the Document means that it remains a
section “Entitled XYZ” according to this definition.
</p>
<p>The Document may include Warranty Disclaimers next to the notice which
states that this License applies to the Document.  These Warranty
Disclaimers are considered to be included by reference in this
License, but only as regards disclaiming warranties: any other
implication that these Warranty Disclaimers may have is void and has
no effect on the meaning of this License.
</p>
</li><li> VERBATIM COPYING

<p>You may copy and distribute the Document in any medium, either
commercially or noncommercially, provided that this License, the
copyright notices, and the license notice saying this License applies
to the Document are reproduced in all copies, and that you add no other
conditions whatsoever to those of this License.  You may not use
technical measures to obstruct or control the reading or further
copying of the copies you make or distribute.  However, you may accept
compensation in exchange for copies.  If you distribute a large enough
number of copies you must also follow the conditions in section 3.
</p>
<p>You may also lend copies, under the same conditions stated above, and
you may publicly display copies.
</p>
</li><li> COPYING IN QUANTITY

<p>If you publish printed copies (or copies in media that commonly have
printed covers) of the Document, numbering more than 100, and the
Document’s license notice requires Cover Texts, you must enclose the
copies in covers that carry, clearly and legibly, all these Cover
Texts: Front-Cover Texts on the front cover, and Back-Cover Texts on
the back cover.  Both covers must also clearly and legibly identify
you as the publisher of these copies.  The front cover must present
the full title with all words of the title equally prominent and
visible.  You may add other material on the covers in addition.
Copying with changes limited to the covers, as long as they preserve
the title of the Document and satisfy these conditions, can be treated
as verbatim copying in other respects.
</p>
<p>If the required texts for either cover are too voluminous to fit
legibly, you should put the first ones listed (as many as fit
reasonably) on the actual cover, and continue the rest onto adjacent
pages.
</p>
<p>If you publish or distribute Opaque copies of the Document numbering
more than 100, you must either include a machine-readable Transparent
copy along with each Opaque copy, or state in or with each Opaque copy
a computer-network location from which the general network-using
public has access to download using public-standard network protocols
a complete Transparent copy of the Document, free of added material.
If you use the latter option, you must take reasonably prudent steps,
when you begin distribution of Opaque copies in quantity, to ensure
that this Transparent copy will remain thus accessible at the stated
location until at least one year after the last time you distribute an
Opaque copy (directly or through your agents or retailers) of that
edition to the public.
</p>
<p>It is requested, but not required, that you contact the authors of the
Document well before redistributing any large number of copies, to give
them a chance to provide you with an updated version of the Document.
</p>
</li><li> MODIFICATIONS

<p>You may copy and distribute a Modified Version of the Document under
the conditions of sections 2 and 3 above, provided that you release
the Modified Version under precisely this License, with the Modified
Version filling the role of the Document, thus licensing distribution
and modification of the Modified Version to whoever possesses a copy
of it.  In addition, you must do these things in the Modified Version:
</p>
<ol class="enumerate" type="A" start="1">
<li> Use in the Title Page (and on the covers, if any) a title distinct
from that of the Document, and from those of previous versions
(which should, if there were any, be listed in the History section
of the Document).  You may use the same title as a previous version
if the original publisher of that version gives permission.

</li><li> List on the Title Page, as authors, one or more persons or entities
responsible for authorship of the modifications in the Modified
Version, together with at least five of the principal authors of the
Document (all of its principal authors, if it has fewer than five),
unless they release you from this requirement.

</li><li> State on the Title page the name of the publisher of the
Modified Version, as the publisher.

</li><li> Preserve all the copyright notices of the Document.

</li><li> Add an appropriate copyright notice for your modifications
adjacent to the other copyright notices.

</li><li> Include, immediately after the copyright notices, a license notice
giving the public permission to use the Modified Version under the
terms of this License, in the form shown in the Addendum below.

</li><li> Preserve in that license notice the full lists of Invariant Sections
and required Cover Texts given in the Document’s license notice.

</li><li> Include an unaltered copy of this License.

</li><li> Preserve the section Entitled “History”, Preserve its Title, and add
to it an item stating at least the title, year, new authors, and
publisher of the Modified Version as given on the Title Page.  If
there is no section Entitled “History” in the Document, create one
stating the title, year, authors, and publisher of the Document as
given on its Title Page, then add an item describing the Modified
Version as stated in the previous sentence.

</li><li> Preserve the network location, if any, given in the Document for
public access to a Transparent copy of the Document, and likewise
the network locations given in the Document for previous versions
it was based on.  These may be placed in the “History” section.
You may omit a network location for a work that was published at
least four years before the Document itself, or if the original
publisher of the version it refers to gives permission.

</li><li> For any section Entitled “Acknowledgements” or “Dedications”, Preserve
the Title of the section, and preserve in the section all the
substance and tone of each of the contributor acknowledgements and/or
dedications given therein.

</li><li> Preserve all the Invariant Sections of the Document,
unaltered in their text and in their titles.  Section numbers
or the equivalent are not considered part of the section titles.

</li><li> Delete any section Entitled “Endorsements”.  Such a section
may not be included in the Modified Version.

</li><li> Do not retitle any existing section to be Entitled “Endorsements” or
to conflict in title with any Invariant Section.

</li><li> Preserve any Warranty Disclaimers.
</li></ol>

<p>If the Modified Version includes new front-matter sections or
appendices that qualify as Secondary Sections and contain no material
copied from the Document, you may at your option designate some or all
of these sections as invariant.  To do this, add their titles to the
list of Invariant Sections in the Modified Version’s license notice.
These titles must be distinct from any other section titles.
</p>
<p>You may add a section Entitled “Endorsements”, provided it contains
nothing but endorsements of your Modified Version by various
parties—for example, statements of peer review or that the text has
been approved by an organization as the authoritative definition of a
standard.
</p>
<p>You may add a passage of up to five words as a Front-Cover Text, and a
passage of up to 25 words as a Back-Cover Text, to the end of the list
of Cover Texts in the Modified Version.  Only one passage of
Front-Cover Text and one of Back-Cover Text may be added by (or
through arrangements made by) any one entity.  If the Document already
includes a cover text for the same cover, previously added by you or
by arrangement made by the same entity you are acting on behalf of,
you may not add another; but you may replace the old one, on explicit
permission from the previous publisher that added the old one.
</p>
<p>The author(s) and publisher(s) of the Document do not by this License
give permission to use their names for publicity for or to assert or
imply endorsement of any Modified Version.
</p>
</li><li> COMBINING DOCUMENTS

<p>You may combine the Document with other documents released under this
License, under the terms defined in section 4 above for modified
versions, provided that you include in the combination all of the
Invariant Sections of all of the original documents, unmodified, and
list them all as Invariant Sections of your combined work in its
license notice, and that you preserve all their Warranty Disclaimers.
</p>
<p>The combined work need only contain one copy of this License, and
multiple identical Invariant Sections may be replaced with a single
copy.  If there are multiple Invariant Sections with the same name but
different contents, make the title of each such section unique by
adding at the end of it, in parentheses, the name of the original
author or publisher of that section if known, or else a unique number.
Make the same adjustment to the section titles in the list of
Invariant Sections in the license notice of the combined work.
</p>
<p>In the combination, you must combine any sections Entitled “History”
in the various original documents, forming one section Entitled
“History”; likewise combine any sections Entitled “Acknowledgements”,
and any sections Entitled “Dedications”.  You must delete all
sections Entitled “Endorsements.”
</p>
</li><li> COLLECTIONS OF DOCUMENTS

<p>You may make a collection consisting of the Document and other documents
released under this License, and replace the individual copies of this
License in the various documents with a single copy that is included in
the collection, provided that you follow the rules of this License for
verbatim copying of each of the documents in all other respects.
</p>
<p>You may extract a single document from such a collection, and distribute
it individually under this License, provided you insert a copy of this
License into the extracted document, and follow this License in all
other respects regarding verbatim copying of that document.
</p>
</li><li> AGGREGATION WITH INDEPENDENT WORKS

<p>A compilation of the Document or its derivatives with other separate
and independent documents or works, in or on a volume of a storage or
distribution medium, is called an “aggregate” if the copyright
resulting from the compilation is not used to limit the legal rights
of the compilation’s users beyond what the individual works permit.
When the Document is included in an aggregate, this License does not
apply to the other works in the aggregate which are not themselves
derivative works of the Document.
</p>
<p>If the Cover Text requirement of section 3 is applicable to these
copies of the Document, then if the Document is less than one half of
the entire aggregate, the Document’s Cover Texts may be placed on
covers that bracket the Document within the aggregate, or the
electronic equivalent of covers if the Document is in electronic form.
Otherwise they must appear on printed covers that bracket the whole
aggregate.
</p>
</li><li> TRANSLATION

<p>Translation is considered a kind of modification, so you may
distribute translations of the Document under the terms of section 4.
Replacing Invariant Sections with translations requires special
permission from their copyright holders, but you may include
translations of some or all Invariant Sections in addition to the
original versions of these Invariant Sections.  You may include a
translation of this License, and all the license notices in the
Document, and any Warranty Disclaimers, provided that you also include
the original English version of this License and the original versions
of those notices and disclaimers.  In case of a disagreement between
the translation and the original version of this License or a notice
or disclaimer, the original version will prevail.
</p>
<p>If a section in the Document is Entitled “Acknowledgements”,
“Dedications”, or “History”, the requirement (section 4) to Preserve
its Title (section 1) will typically require changing the actual
title.
</p>
</li><li> TERMINATION

<p>You may not copy, modify, sublicense, or distribute the Document
except as expressly provided under this License.  Any attempt
otherwise to copy, modify, sublicense, or distribute it is void, and
will automatically terminate your rights under this License.
</p>
<p>However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally
terminates your license, and (b) permanently, if the copyright holder
fails to notify you of the violation by some reasonable means prior to
60 days after the cessation.
</p>
<p>Moreover, your license from a particular copyright holder is
reinstated permanently if the copyright holder notifies you of the
violation by some reasonable means, this is the first time you have
received notice of violation of this License (for any work) from that
copyright holder, and you cure the violation prior to 30 days after
your receipt of the notice.
</p>
<p>Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License.  If your rights have been terminated and not permanently
reinstated, receipt of a copy of some or all of the same material does
not give you any rights to use it.
</p>
</li><li> FUTURE REVISIONS OF THIS LICENSE

<p>The Free Software Foundation may publish new, revised versions
of the GNU Free Documentation License from time to time.  Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.  See
<a class="uref" href="http://www.gnu.org/copyleft/">http://www.gnu.org/copyleft/</a>.
</p>
<p>Each version of the License is given a distinguishing version number.
If the Document specifies that a particular numbered version of this
License “or any later version” applies to it, you have the option of
following the terms and conditions either of that specified version or
of any later version that has been published (not as a draft) by the
Free Software Foundation.  If the Document does not specify a version
number of this License, you may choose any version ever published (not
as a draft) by the Free Software Foundation.  If the Document
specifies that a proxy can decide which future versions of this
License can be used, that proxy’s public statement of acceptance of a
version permanently authorizes you to choose that version for the
Document.
</p>
</li><li> RELICENSING

<p>“Massive Multiauthor Collaboration Site” (or “MMC Site”) means any
World Wide Web server that publishes copyrightable works and also
provides prominent facilities for anybody to edit those works.  A
public wiki that anybody can edit is an example of such a server.  A
“Massive Multiauthor Collaboration” (or “MMC”) contained in the
site means any set of copyrightable works thus published on the MMC
site.
</p>
<p>“CC-BY-SA” means the Creative Commons Attribution-Share Alike 3.0
license published by Creative Commons Corporation, a not-for-profit
corporation with a principal place of business in San Francisco,
California, as well as future copyleft versions of that license
published by that same organization.
</p>
<p>“Incorporate” means to publish or republish a Document, in whole or
in part, as part of another Document.
</p>
<p>An MMC is “eligible for relicensing” if it is licensed under this
License, and if all works that were first published under this License
somewhere other than this MMC, and subsequently incorporated in whole
or in part into the MMC, (1) had no cover texts or invariant sections,
and (2) were thus incorporated prior to November 1, 2008.
</p>
<p>The operator of an MMC Site may republish an MMC contained in the site
under CC-BY-SA on the same site at any time before August 1, 2009,
provided the MMC is eligible for relicensing.
</p>
</li></ol>

<ul class="mini-toc">
<li><a href="#ADDENDUM_003a-How-to-use-this-License-for-your-documents" accesskey="1">ADDENDUM: How to use this License for your documents</a></li>
</ul>
<div class="unnumberedsec-level-extent" id="ADDENDUM_003a-How-to-use-this-License-for-your-documents">
<h3 class="unnumberedsec">ADDENDUM: How to use this License for your documents</h3>

<p>To use this License in a document you have written, include a copy of
the License in the document and put the following copyright and
license notices just after the title page:
</p>
<div class="example smallexample">
<div class="group"><pre class="example-preformatted">  Copyright (C)  <var class="var">year</var>  <var class="var">your name</var>.
  Permission is granted to copy, distribute and/or modify this document
  under the terms of the GNU Free Documentation License, Version 1.3
  or any later version published by the Free Software Foundation;
  with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
  Texts.  A copy of the license is included in the section entitled ``GNU
  Free Documentation License''.
</pre></div></div>

<p>If you have Invariant Sections, Front-Cover Texts and Back-Cover Texts,
replace the “with…Texts.” line with this:
</p>
<div class="example smallexample">
<div class="group"><pre class="example-preformatted">    with the Invariant Sections being <var class="var">list their titles</var>, with
    the Front-Cover Texts being <var class="var">list</var>, and with the Back-Cover Texts
    being <var class="var">list</var>.
</pre></div></div>

<p>If you have Invariant Sections without Cover Texts, or some other
combination of the three, merge those two alternatives to suit the
situation.
</p>
<p>If your document contains nontrivial examples of program code, we
recommend releasing these examples in parallel under your choice of
free software license, such as the GNU General Public License,
to permit their use in free software.
</p>


<hr>
</div>
</div>
<div class="unnumbered-level-extent" id="Index">
<div class="nav-panel">
<p>
Previous: <a href="#GNU-Free-Documentation-License" accesskey="p" rel="prev">GNU Free Documentation License</a>, Up: <a href="#Top" accesskey="u" rel="up">General Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>

<h2 class="unnumbered" id="Index-1">Index</h2>
<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tbody><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Index_cp_symbol-1"><b>/</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_symbol-2"><b>|</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-X"><b>X</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-Y"><b>Y</b></a>
 &nbsp; 
</td></tr></tbody></table>
<table class="cp-entries-printindex" border="0">
<tbody><tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_symbol-1">/</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-_002finet_002f-files-_0028gawk_0029"><code class="code">/inet/</code> files (<code class="command">gawk</code>)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-_002finet_002ftcp-special-files-_0028gawk_0029"><code class="code">/inet/tcp</code> special files (<code class="command">gawk</code>)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#File-_002finet_002ftcp">File /inet/tcp</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-_002finet_002fudp-special-files-_0028gawk_0029"><code class="code">/inet/udp</code> special files (<code class="command">gawk</code>)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#File-_002finet_002fudp">File /inet/udp</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_symbol-2">|</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-_007c-_0028vertical-bar_0029_002c-_007c_0026-operator-_0028I_002fO_0029"><code class="code">|</code> (vertical bar), <code class="code">|&amp;</code> operator (I/O)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#TCP-Connecting">TCP Connecting</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-advanced-features_002c-network-connections">advanced features, network connections</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Troubleshooting">Troubleshooting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-agent">agent</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-agent-1">agent</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MOBAGWHO">MOBAGWHO</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-AI">AI</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-apache">apache</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#WEBGRAB">WEBGRAB</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-apache-1">apache</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MOBAGWHO">MOBAGWHO</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Bioinformatics">Bioinformatics</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PROTBASE">PROTBASE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-BLAST_002c-Basic-Local-Alignment-Search-Tool">BLAST, Basic Local Alignment Search Tool</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PROTBASE">PROTBASE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-blocking">blocking</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Making-Connections">Making Connections</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Boutell_002c-Thomas">Boutell, Thomas</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-CGI-_0028Common-Gateway-Interface_0029">CGI (Common Gateway Interface), dynamic web pages and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-CGI-_0028Common-Gateway-Interface_0029-1">CGI (Common Gateway Interface), library</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#CGI-Lib">CGI Lib</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-CGI-_0028Common-Gateway-Interface_0029-2">CGI (Common Gateway Interface)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MOBAGWHO">MOBAGWHO</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-clients">clients</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Making-Connections">Making Connections</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Clinton_002c-Bill">Clinton, Bill</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Computational-Biology">Computational Biology</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PROTBASE">PROTBASE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-contest">contest</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-cron-utility"><code class="command">cron</code> utility</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STOXPRED">STOXPRED</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-CSV-format">CSV format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STOXPRED">STOXPRED</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Dow-Jones-Industrial-Index">Dow Jones Industrial Index</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STOXPRED">STOXPRED</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ELIZA-program">ELIZA program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Simple-Server">Simple Server</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ELIZA-program-1">ELIZA program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Simple-Server">Simple Server</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-email">email</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-FASTA_002fPearson-format">FASTA/Pearson format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PROTBASE">PROTBASE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-FDL-_0028Free-Documentation-License_0029">FDL (Free Documentation License)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-filenames_002c-for-network-access">filenames, for network access</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-files">files, <code class="code">/inet/</code> (<code class="command">gawk</code>)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-files-1">files, <code class="code">/inet/tcp</code> (<code class="command">gawk</code>)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#File-_002finet_002ftcp">File /inet/tcp</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-files-2">files, <code class="code">/inet/udp</code> (<code class="command">gawk</code>)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#File-_002finet_002fudp">File /inet/udp</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-finger-utility"><code class="command">finger</code> utility</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Setting-Up">Setting Up</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Free-Documentation-License-_0028FDL_0029">Free Documentation License (FDL)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-FTP-_0028File-Transfer-Protocol_0029">FTP (File Transfer Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Basic-Protocols">Basic Protocols</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk"><code class="command">gawk</code>, networking</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk-1"><code class="command">gawk</code>, networking, filenames</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk-2"><code class="command">gawk</code>, networking, connections</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk-3"><code class="command">gawk</code>, networking, connections</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#TCP-Connecting">TCP Connecting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk-4"><code class="command">gawk</code>, networking, service, establishing</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Setting-Up">Setting Up</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk-5"><code class="command">gawk</code>, networking, email</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk-6"><code class="command">gawk</code>, web and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-gawk-7"><code class="command">gawk</code>, networking, troubleshooting</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Caveats">Caveats</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getline-command"><code class="code">getline</code> command</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#TCP-Connecting">TCP Connecting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GETURL-program">GETURL program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#GETURL">GETURL</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GIF-image-format">GIF image format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GIF-image-format-1">GIF image format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GNU-Free-Documentation-License">GNU Free Documentation License</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GNU_002fLinux">GNU/Linux</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Troubleshooting">Troubleshooting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GNU_002fLinux-1">GNU/Linux</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting">Interacting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GNU_002fLinux-2">GNU/Linux</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#REMCONF">REMCONF</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GNUPlot-utility">GNUPlot utility</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GNUPlot-utility-1">GNUPlot utility</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-H">H</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Hoare_002c-C_002eA_002eR_002e">Hoare, C.A.R.</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MOBAGWHO">MOBAGWHO</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Hoare_002c-C_002eA_002eR_002e-1">Hoare, C.A.R.</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PROTBASE">PROTBASE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hostname-field">hostname field</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-HTML-_0028Hypertext-Markup-Language_0029">HTML (Hypertext Markup Language)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-HTTP-_0028Hypertext-Transfer-Protocol_0029">HTTP (Hypertext Transfer Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Basic-Protocols">Basic Protocols</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-HTTP-_0028Hypertext-Transfer-Protocol_0029-1">HTTP (Hypertext Transfer Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-HTTP-_0028Hypertext-Transfer-Protocol_0029-2">HTTP (Hypertext Transfer Protocol), record separators and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-HTTP-server_002c-core-logic">HTTP server, core logic</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-HTTP-server_002c-core-logic-1">HTTP server, core logic</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Humphrys_002c-Mark">Humphrys, Mark</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Simple-Server">Simple Server</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Hypertext-Markup-Language-_0028HTML_0029">Hypertext Markup Language (HTML)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-image-format">image format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-images">images, retrieving over networks</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-images-1">images, in web pages</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-J">J</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-JavaScript">JavaScript</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Linux">Linux</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Troubleshooting">Troubleshooting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Linux-1">Linux</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting">Interacting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Linux-2">Linux</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#REMCONF">REMCONF</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Lisp">Lisp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MOBAGWHO">MOBAGWHO</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-localport-field">localport field</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Loebner_002c-Hugh">Loebner, Hugh</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Loui_002c-Ronald">Loui, Ronald</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-MAZE">MAZE</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MAZE">MAZE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Microsoft-Windows">Microsoft Windows, networking</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Troubleshooting">Troubleshooting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Microsoft-Windows-1">Microsoft Windows, networking, ports</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Setting-Up">Setting Up</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Microsoft-Windows-2">Microsoft Windows</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#WEBGRAB">WEBGRAB</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-MiniSQL">MiniSQL</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#REMCONF">REMCONF</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-MOBAGWHO-program">MOBAGWHO program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MOBAGWHO">MOBAGWHO</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-N">N</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-NCBI_002c-National-Center-for-Biotechnology-Information">NCBI, National Center for Biotechnology Information</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PROTBASE">PROTBASE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-network-type-field">network type field</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks">networks, <code class="command">gawk</code> and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-1">networks, <code class="command">gawk</code> and, filenames</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-2">networks</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-3">networks, <code class="command">gawk</code> and, connections</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-4">networks, <code class="command">gawk</code> and, connections</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#TCP-Connecting">TCP Connecting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-5">networks, <code class="command">gawk</code> and, service, establishing</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Setting-Up">Setting Up</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-6">networks, ports, reserved</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Setting-Up">Setting Up</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-7">networks, <code class="command">gawk</code> and, email</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-networks-8">networks, <code class="command">gawk</code> and, troubleshooting</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Caveats">Caveats</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Numerical-Recipes">Numerical Recipes</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-O">O</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ORS-variable"><code class="code">ORS</code> variable, POP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ORS-variable-1"><code class="code">ORS</code> variable, HTTP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-PANIC-program">PANIC program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PANIC">PANIC</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Perl">Perl</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Perl-1">Perl, <code class="command">gawk</code> networking and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Perlis_002c-Alan">Perlis, Alan</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MAZE">MAZE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-pipes_002c-networking-and">pipes, networking and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#TCP-Connecting">TCP Connecting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-PNG-image-format">PNG image format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-PNG-image-format-1">PNG image format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-POP-_0028Post-Office-Protocol_0029">POP (Post Office Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-POP-_0028Post-Office-Protocol_0029-1">POP (Post Office Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Post-Office-Protocol-_0028POP_0029">Post Office Protocol (POP)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-PostScript">PostScript</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-PROLOG">PROLOG</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-PROTBASE">PROTBASE</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PROTBASE">PROTBASE</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-protocol-field">protocol field</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-PS-image-format">PS image format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Python">Python</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Python-1">Python, <code class="command">gawk</code> networking and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-record-separators">record separators, POP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-record-separators-1">record separators, HTTP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-REMCONF-program">REMCONF program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#REMCONF">REMCONF</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-remoteport-field">remoteport field</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RFC-1939">RFC 1939</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RFC-1939-1">RFC 1939</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RFC-1945">RFC 1945</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RFC-2068">RFC 2068</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RFC-2068-1">RFC 2068</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RFC-2616">RFC 2616</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RFC-821">RFC 821</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-robot">robot</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Challenges">Challenges</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-robot-1">robot</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#WEBGRAB">WEBGRAB</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RS-variable"><code class="code">RS</code> variable, POP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-RS-variable-1"><code class="code">RS</code> variable, HTTP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-servers">servers</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Making-Connections">Making Connections</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-servers-1">servers, as hosts</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-servers-2">servers</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Setting-Up">Setting Up</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-servers-3">servers, HTTP</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-servers-4">servers, web</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Simple-Server">Simple Server</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Simple-Mail-Transfer-Protocol-_0028SMTP_0029">Simple Mail Transfer Protocol (SMTP)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Basic-Protocols">Basic Protocols</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Simple-Mail-Transfer-Protocol-_0028SMTP_0029-1">Simple Mail Transfer Protocol (SMTP)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-SMTP-_0028Simple-Mail-Transfer-Protocol_0029">SMTP (Simple Mail Transfer Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Basic-Protocols">Basic Protocols</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-SMTP-_0028Simple-Mail-Transfer-Protocol_0029-1">SMTP (Simple Mail Transfer Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Email">Email</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-STATIST-program">STATIST program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STATIST">STATIST</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-STOXPRED-program">STOXPRED program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STOXPRED">STOXPRED</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-synchronous-communications">synchronous communications</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Making-Connections">Making Connections</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Tcl_002fTk">Tcl/Tk</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Tcl_002fTk-1">Tcl/Tk, <code class="command">gawk</code> and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Tcl_002fTk-2">Tcl/Tk, <code class="command">gawk</code> and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Some-Applications-and-Techniques">Some Applications and Techniques</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-TCP-_0028Transmission-Control-Protocol_0029">TCP (Transmission Control Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Using-Networking">Using Networking</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-TCP-_0028Transmission-Control-Protocol_0029-1">TCP (Transmission Control Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#File-_002finet_002ftcp">File /inet/tcp</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-TCP-_0028Transmission-Control-Protocol_0029-2">TCP (Transmission Control Protocol), connection, establishing</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#TCP-Connecting">TCP Connecting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-TCP-_0028Transmission-Control-Protocol_0029-3">TCP (Transmission Control Protocol), UDP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting">Interacting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-TCP_002fIP">TCP/IP, sockets and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Gawk-Special-Files">Gawk Special Files</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-TCP_002fIP-1">TCP/IP, network type, selecting</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-TCP_002fIP-2">TCP/IP, protocols, selecting</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Special-File-Fields">Special File Fields</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-troubleshooting">troubleshooting, networks, connections</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Troubleshooting">Troubleshooting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-troubleshooting-1">troubleshooting, <code class="command">gawk</code>, networks</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Caveats">Caveats</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-troubleshooting-2">troubleshooting, networks, timeouts</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Caveats">Caveats</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-U">U</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-UDP-_0028User-Datagram-Protocol_0029">UDP (User Datagram Protocol)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#File-_002finet_002fudp">File /inet/udp</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-UDP-_0028User-Datagram-Protocol_0029-1">UDP (User Datagram Protocol), TCP and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting">Interacting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Unix_002c-network-ports-and">Unix, network ports and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Setting-Up">Setting Up</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-URLCHK-program">URLCHK program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#URLCHK">URLCHK</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-vertical-bar-_0028_007c_0029_002c-_007c_0026-operator-_0028I_002fO_0029">vertical bar (<code class="code">|</code>), <code class="code">|&amp;</code> operator (I/O)</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#TCP-Connecting">TCP Connecting</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-VRML">VRML</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#MAZE">MAZE</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-W">W</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-web-pages">web pages</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Web-page">Web page</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-web-pages-1">web pages, images in</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-web-pages-2">web pages, retrieving</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#GETURL">GETURL</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-web-servers">web servers</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Simple-Server">Simple Server</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-web-service">web service</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Primitive-Service">Primitive Service</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-web-service-1">web service</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#PANIC">PANIC</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-WEBGRAB-program">WEBGRAB program</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#WEBGRAB">WEBGRAB</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Weizenbaum_002c-Joseph">Weizenbaum, Joseph</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Simple-Server">Simple Server</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-X">X</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-XBM-image-format">XBM image format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Interacting-Service">Interacting Service</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-Y">Y</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Yahoo_0021">Yahoo!</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#REMCONF">REMCONF</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Yahoo_0021-1">Yahoo!</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#STOXPRED">STOXPRED</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table class="cp-letters-footer-printindex"><tbody><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Index_cp_symbol-1"><b>/</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_symbol-2"><b>|</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-X"><b>X</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-Y"><b>Y</b></a>
 &nbsp; 
</td></tr></tbody></table>
</div>
</div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>It
should be noted that although the Internet seems to have conquered the
world, there are other networking protocol suites in existence and in use.</p>
<h5 class="footnote-body-heading"><a id="FOOT2" href="#DOCF2">(2)</a></h5>
<p>There isn’t an IPv5.</p>
<h5 class="footnote-body-heading"><a id="FOOT3" href="#DOCF3">(3)</a></h5>
<p>In the days before voice mail systems!</p>
<h5 class="footnote-body-heading"><a id="FOOT4" href="#DOCF4">(4)</a></h5>
<p>For the technically savvy, data reads
block—if there’s no incoming data, the program is made to wait until
there is, instead of receiving a “there’s no data” error return.</p>
<h5 class="footnote-body-heading"><a id="FOOT5" href="#DOCF5">(5)</a></h5>
<p>This subtlety
is just one of many details that are hidden in the socket
API, invisible and intractable for the <code class="command">gawk</code> user.
The developers are currently considering how to rework the
network facilities to make them easier to understand and use.</p>
<h5 class="footnote-body-heading"><a id="FOOT6" href="#DOCF6">(6)</a></h5>
<p>Microsoft preferred to ignore the TCP/IP
family of protocols until 1995. Then came the rise of the Netscape browser
as a landmark “killer application.” Microsoft added TCP/IP support and
their own browser to Microsoft Windows 95 at the last minute. They even back-ported
their TCP/IP implementation to Microsoft Windows for Workgroups 3.11, but it was
a rather rudimentary and half-hearted implementation. Nevertheless,
the equivalent of <samp class="file">/etc/services</samp> resides under
<samp class="file">C:\WINNT\system32\drivers\etc\services</samp> on Microsoft Windows 2000
and Microsoft Windows XP.
On Microsoft Windows 7, 8 and 10 there is a directory
<samp class="file">%WinDir%\System32\Drivers\Etc</samp>
that holds the
<a class="uref" href="https://support.microsoft.com/en-us/help/972034/how-to-reset-the-hosts-file-back-to-the-default"><samp class="file">hosts</samp> file</a>
and probably also a
<a class="uref" href="https://www.ibm.com/support/knowledgecenter/SSRNYG_7.2.1/com.ibm.rational.synergy.install.win.doc/topics/sg_r_igw_services_file.html"><samp class="file">services</samp> file</a>.</p>
<h5 class="footnote-body-heading"><a id="FOOT7" href="#DOCF7">(7)</a></h5>
<p>No,
things are <em class="emph">not</em> that simple any more. Things <em class="emph">were</em> that simple
when email was young in the 20th century. These days, unencrypted plaintext
authentication is usually disallowed on non-secure connections.
Since encryption of network connections is not supported in <code class="command">gawk</code>,
you should not use <code class="command">gawk</code> to write such scripts.
We left this section as it is because it demonstrates how
application level protocols work in principle (a command being issued
by the client followed by a reply coming back). Unfortunately, modern
application level protocols are much more flexible in the sequence of
actions. For example, modern POP3 servers may introduce themselves
with an unprompted initial line that arrives before the initial command.
Dealing with such variance is not worth the effort in <code class="command">gawk</code>.</p>
<h5 class="footnote-body-heading"><a id="FOOT8" href="#DOCF8">(8)</a></h5>
<p>Version 1.0 of
HTTP was defined in RFC 1945.  HTTP 1.1 was initially specified in RFC
2068. In June 1999, RFC 2068 was made obsolete by RFC 2616, an update
without any substantial changes.</p>
<h5 class="footnote-body-heading"><a id="FOOT9" href="#DOCF9">(9)</a></h5>
<p><a class="uref" href="https://en.wikipedia.org/wiki/HTTP/2">Version 2.0 of HTTP</a>
was defined in
<a class="uref" href="https://tools.ietf.org/html/rfc7540">RFC7540</a>
and was derived from Google’s
<a class="uref" href="https://en.wikipedia.org/wiki/SPDY">SPDY</a>
protocol. It is said to be widely supported. As of 2020 the most popular
web sites still identify themselves as supporting HTTP/1.1.
<a class="uref" href="https://en.wikipedia.org/wiki/HTTP/3">Version 3.0 of HTTP</a>
is still a draft and was derived from Google’s
<a class="uref" href="https://en.wikipedia.org/wiki/QUIC">QUIC</a> protocol.</p>
<h5 class="footnote-body-heading"><a id="FOOT10" href="#DOCF10">(10)</a></h5>
<p>As defined in RFC 2068.</p>
<h5 class="footnote-body-heading"><a id="FOOT11" href="#DOCF11">(11)</a></h5>
<p>The version shown
here is abbreviated.  The full version comes with the <code class="command">gawk</code>
distribution.</p>
<h5 class="footnote-body-heading"><a id="FOOT12" href="#DOCF12">(12)</a></h5>
<p>The file is no longer distributed with
<code class="command">gawk</code>, since the copyright on the file is not clear.</p>
<h5 class="footnote-body-heading"><a id="FOOT13" href="#DOCF13">(13)</a></h5>
<p>Due to licensing problems, the default
installation of GNUPlot disables the generation of <samp class="file">.gif</samp> files.
If your installed version does not accept ‘<samp class="samp">set term gif</samp>’,
just download and install the most recent version of GNUPlot and the
<a class="uref" href="https://libgd.github.io/">GD library</a>
by Thomas Boutell.
Otherwise you still have the chance to generate some
ASCII-art style images with GNUPlot by using ‘<samp class="samp">set term dumb</samp>’.
(We tried it and it worked.)</p>
<h5 class="footnote-body-heading"><a id="FOOT14" href="#DOCF14">(14)</a></h5>
<p><a class="uref" href="https://link.springer.com/chapter/10.1007/3-540-62852-5_4">https://link.springer.com/chapter/10.1007/3-540-62852-5_4</a></p>
<h5 class="footnote-body-heading"><a id="FOOT15" href="#DOCF15">(15)</a></h5>
<p>What C.A.R. Hoare
actually said was “Inside every large program is a
small program struggling to get out.”</p>
</div>





</body></html>