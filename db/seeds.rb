# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.destroy_all


content = <<-TEXT
<p>We at JUMP news believe strongly in living well on a budget. See our past articles Eating Cheap in Nexus Slope, Which Hotel Pools are Easiest to Sneak Into, and of course, our interactive map on Where To Pee Good Without Paying.</p>
<p>Here's a bargain for all you deal hunters: Free Superpowers.</p>
<p>Or at least, that's the headline we're going with: you gotta get clicks. But would you believe us if we told you you've already paid for your superpowers?</p>
<p>SigTech takes billions of dollars in government contracts, and per exclusive information scooped here by Yours Truly We The People, is using that money and some clever biology to give some participants superpowers (Ed. Note - MOVE THIS TO TOP, YOU'RE BURYING THE LEDE UNDER YOUR BULLSHIT) [Y.T. Note - Oh, Ed. What would we do without you?]</p>
<p>In fact, you or someone you know may have been saved by taxpayer-funded superpowers, with an anonymous superpowered source sharing directly with this publication that GREEN TIGER’S NEW PROTEGES WERE SUPAFIED IN SIGTECH LABS.</p>
<p>Don't believe us? See if they throw a lawsuit at us!</p>
<p>Speaking of lawyers, we aren't lawyers but our understanding of the law is as follows:</p>
<ol>
<li>You pay the government</li>
<li>The government pays SigTech</li>
<li>Therefore you are SigTech’s boss!!!</li>
</ol>
<p>That's right, since you're paying SigTech, you're entitled to a superpower. If you're the kind of perception-head we think you are, you'd JUMP to sign up today! </p>
<p>Simply write to:</p>

<p>Richard Moorehead, Chief Executive Officer<br>
Signature Technology Headquarters<br>
1600 Virtue Avenue<br>
Nexus City, United States of America</p>

<p>And demand your free superpower today!</p>

<img src="/assets/free_superpower.png" alt="Where'd you get that cute free superpower?!" />

<p>P.S. You know who loves paying money to be superpowered? Late-entering Mayoral candidate, washed up actor, and former "crime-fighter" Colin Redwing. DEMAND YOUR FREE GADGETS at any press conference, rally, or ribbon-cutting ceremony he's at! DON'T GIVE YOUR VOTE AWAY FOR FREE.</p

<p>Till next time,<br>
YOURS TRULY<br>
Gossip Girl XOXO</p>
TEXT

blurb = <<-TEXT
NEW SCOOP: SigTech is creating superheroes in a lab! Learn how Green Tiger's team was labgrown, and how you can demand your own!
TEXT

Article.find_or_create_by!(title: "Get Your Free Superpower Today!", byline: "Yours Truly, We the People", stub: "free-sigtech-superpowers", blurb: blurb, content: content, fake_created_at: "One Day Ago")