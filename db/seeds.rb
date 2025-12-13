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
User.destroy_all

69.times do |i|
    dotcom = ["nexus", "guard", "virtue", "sig", "panth"]
    user = User.new(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        email: Faker::Internet.email.gsub("example", dotcom.sample).gsub("test", dotcom.sample),
        admin: false,
        verified: false,
        password: "password",
    )
    user.save(validate: false)
end

User.create(first_name: "JUMP", last_name: "News", email: "dovern42@gmail.com", admin: true, verified: true, password: "Cheese")

User.create(first_name: "Game", last_name: "Master", email: "quantum.feline@gmail.com", admin: false, verified: true, password: "password")

User.create(first_name: "Rose", last_name: "Greenwood", email: "andyacantor@gmail.com", admin: false, verified: true, password: "password")

User.create(first_name: "Kitty", last_name: "Crash", email: "thatgracejohnson@gmail.com", admin: false, verified: true, password: "password")

User.create(first_name: "Ben", last_name: "Redwing", email: "Carolin.dithrich@gmail.com", admin: false, verified: true, password: "password")

User.create(first_name: "Cecile", last_name: "Wren", email: "julia.ea.doolittle@gmail.com", admin: false, verified: true, password: "password")

User.create(first_name: "Alexander", last_name: "Spencer-Pateras", email: "salleylr@gmail.com", admin: false, verified: true, password: "password")

content = <<-TEXT

<img src="/assets/tomei.jpg" alt="Marisa Tomei in My Cousin Vinny" />

<p>You know our motto: WE NEED A GOOD LAWYER, FAST.</p>

<p>Are you a lawyer? Can you convincingly play one on TV? Are you someone's cousin Vinny?</p>

<p>If you're an underage supe, the brass upstairs makes you sign a contract if you want to do some crimefighting. They spun us a yarn about how we would be protected from liabilities, we'd have some cash thrown our way for each villain we throw their way, etc. etc.</p>

<p>Our perspective on lawyers is to remove yourself from them as quickly as possible, and it seemed like the best way was to sign the contract. But now we're wondering: Are we doing anything illegal by sharing this zine?</p>

<p>We offer a lot of good services for free here at JUMP news, so if you're a lawyer, would you reach out to us and help us review our contract pro bono? Contact us at </p>

<p>Let us know who we sold our soul to.</p>

<p>-Y.T.<br>
GOSSIP GIRL XOXO</p>

TEXT

Article.find_or_create_by(title: "Request: Are we Breaching our Pantheon Contract?", byline: "Yours Truly, We the People", stub: "legal-request", thumbnail: "/assets/tomei.jpg", blurb: "Are you a lawyer? Let us know if we're breaking the law!", content: content, published: true, fake_created_at: "Two days ago")

content = <<-TEXT

<img src="/assets/records.png" alt="Records" style="max-height:220px;" />
<div class="ed-note">
<p>Ed Note: It Is An Axiom Universally Acknowledged That A Punk Blog Cannot Exist Without A Section For Reviewing Trendy New Pop Albums.</p>

<p>This Despite Music Being Among Art Forms Notable As A Domain Of Individual Preference, And Sampling A Song In The Streaming Age Takes Roughly 10 Seconds.</p>

<p>The Continued Popularity Of The Album Review Format Long After The Death Of The Physical Album And The Rise Of A Streaming Era That Has Removed Financial Barriers To Listening To Albums Indicates That The Goal Of An Album Review Should Not Be To Inform The Reader Whether To Listen To The Album.</p>

<p>Likely, Instead, Readers Are Seeking Spicy, Clickable Takes On Albums They've Already Listened To With Quotable Insights Allowing Them To Sound Intelligent While Attempting To Objectively Discuss Topics Of Personal Preference.</p>

<p>With That In Mind, We Here At JUMP News Have Collected A Panel Of Our Writers To Collate Their Opinions And Provide A “score”, Snarkily Pointed In “Half-Nods”, Including A Decimal Value To Make It Feel More Scientific, Alongside Reviews Of Albums Whose Tracks Are Already Inescapable At Retail Establishments.</p>

<p>We Wash Our Hands Of This.</p>
<p>Sincerely,<br/>
Sheena, Editor-in-Chief, JUMP News</p>

</div>

<div class="article__title">Wren’s “Caged: Unlocced (Acoustic)”</div>

<div class="album-score">
    <div class="album-score-inner">
        <span class="album-score__value">7.1</span>
        <span class="album-score__out-of">/10</span>
    </div>
    <span class="album-score__descriptor">Half-Nods</span>
</div>


<p>Despite being a mere teenager, it sometimes feels like Wren has loomed in the public zeitgeist since the advent of sound recording. Her frequent rebrands – which started with her character Luna’s seamless pivot from the Regina George of Sea of Tranquility High School in season one of “Gravity, Please”, into the troubled but misunderstood best friend, deuteragonist, and second lead singer of the eponymous high school band – have become as much a feature of her public identity as the personalities she adopts and discards.</p>

<img src="/assets/protozoa.png" alt="Gravity, Please: This guy was supposed to be in ninth grade"/>

<p>For her part, she seems to lean into her seemingly eternal role in the public spotlight with her newly released acoustic review of her corpus, "Caged: Unlocced (Acoustic)".  In an intimate recording between herself, a Martin OM-28 six string, and a microphone, Wren dissects hits throughout her career, stripped naked of both the heavy overdrive that defined her early, faux-punk works and her later, production radio-pop sheen.</p>

<p>A confession: We here at JUMP News were prepared to hate the album from the moment we saw its cover: a chiaroscuro photo of Wren’s face in profile, her signature eyeliner perfectly smudged, intentionally invoking Johnny Cash’s final masterpiece album, Hurt.</p>

<p>Indeed, there’s a lot to dislike about this album, and the incongruity of form is on display with her sometimes needling cover of “Prettier When I Lie,” which was already uncomfortable when sung by a thirteen year old Wren over two driving wall-of-noise guitars, and which struggles to translate its multi-part chorus into an acoustic personal melodrama.</p>

<p>But when, at the third chorus, she lets her voice waver over “you’re looking at me, seeing what you want to see”, with a brief hint of self-consciousness, a humorous nod to the futility of the artistic endeavor she’s attempting, you are almost teleported to the quiet after-hours coffee shop she wants you to imagine her in, watching a powerful but unsure performer put her heart into her poetry to a half-interested audience.</p>

<p>The fact that Wren has never performed to an audience of fewer than thousands is beside the point.</p>

<img src="/assets/open_mic.png" alt="open mics do not know Wren"/>

<p>“Black Lipstick Means Never Having to Say You’re Sorry” will have you banging your head in spite of yourself, as her staccato chorus fits its new acoustic clothing well, and as Wren exhibits a surprising ability to put force into each strum of her guitar. While we won’t swap the original out on our playlists, we anticipate that fans will include both versions on theirs.</p>

<p>Of the acoustic songs on her album’s A-Side, it's the opinion of this publication that only “Swan Song (For Someone Else)” clearly exceeds its original in its acoustic cover. </p>

<p>We would be relieved to see the first, Swedish-produced version relegated to the dust-bin of history after four years of hearing it incessantly in every grocery store, pharmacy, and dentist’s office. But Wren, with her acoustic cover here, transforms “Swan Song” into a naive but nonetheless heartfelt singer-songwriter’s projection of teenage angst and an all-to-relatable scramble for dignity after a loss. It makes us ask why the original version, with its retro millennial whoop that wraps painfully around the brain stem like the ear bug in Wrath of Khan, was ever produced at all.</p>

<img src="/assets/max_martin.png" alt="A Swede accepting his award for best production for 'Nevermore'"/>

<p>
The album does fall apart on its b-side, which drops the acoustic act in favor of a collection of remixes aiming to squeeze some more blood from the rock of her earlier successes, and since it seems Wren didn’t put much effort into these tracks, we won’t put effort into reviewing them.</p>

<p>That is, with one exception: “Prettier When I Lie (DJ BUTTER FACE REMIX)”. Unless you live under one of the aforementioned rocks, you’ve heard it already, and you can’t get it out of your head. DJ BUTTER FACE, a high schooler from Northwood District whose previous discography exists entirely on SoundTime and TikTok, clearly saw zir shot at stardom with the track’s defining sample and took it.</p>

<p>“Prettier When I Lie (DJ BUTTER FACE REMIX)” is a track destined to be played to death at clubs this summer, and then have its corpse fucked on late shows and at Las Culturistas’ next Culture Awards. Enjoy it before you can’t stand it anymore.</p>

<p>This album isn’t likely to attract many new listeners under the age of 45, but fans will appreciate the personal, intimate nature of the album, and parents driving their kids to school will appreciate for once a Wren album where cloying, infectious hooks are replaced with trained singer-songwriter artistry – at least through the first half.</p>

<p>In spite of ourselves and the album’s B-Side, Wren has earned an admirable 7.1 half-nods out of 10, and by virtue of being the first album we reviewed, holds our title of top-reviewed album. We hope in spite of all prior evidence that this dubious honor will stave off some death threats from her tween fans.</p>

TEXT

blurb = "The Vinyl Cuckchair’s staff reviews Wren’s acoustic attempt at a tortured poet rebrand in our inaugural album review."

Article.find_or_create_by!(title: "The Vinyl Cuckchair: Wren’s “Caged: Unlocced (Acoustic)”", byline: "The Vinyl Cuckchair Staff – JUMP News", stub: "vc-caged", thumbnail: "/assets/records.png", blurb: blurb, content: content, published: true, fake_created_at: "Two Days Ago")


content = <<-TEXT

<p>WELCOME TO BIRDWATCH, the first chapter of our continuing series on Nexus City’s latest Mayoral Candidate, Colin Redwing!</p>

<img src="/assets/falcon_running.png" alt="He's running" />

<p>Many have called Colin Redwing the Joe Jackson of acting, and the Joe Jackson of music (though that's contested), and many in the CAPES BIZ call the Falcon the Joe Jackson of crimefighting, to which this publication agrees to call him a true Renaissance Man of being a Joe Jackson —</p>

<p>But we’ll save the story of how his terrible parenting keeps pushing teens to self-destruction in a later article, when his lawyers have figured out our address.</p>

<p>Today we’re here to tell you the story about how Yours Truly blew up the Falconwing and saved the world.</p>

<p>You can’t make this shit up folks, and that’s why you come to JUMP News: Perceptive Minds Blown Dirt Cheap.</p>

<p>So here’s the deal, we’ve been kinda coy about the fact that we saved the world, mostly because we think there’s a book deal in there somewhere and we’re not too proud for that. Also, because we protect our sources here. Also, because you’re getting a sly deal with these free stories anyhow, chump??</p>

<p>But one or more members of Juveniles Unionizing for More Perception were involved in stopping the Wintry Midnight or the Snowpocalypse or whatever the news is calling it right now.</p>

<p>Here’s a couple of facts for you in quick succession:</p>
<ol>
<li>When the need to save the world comes knocking, you often gotta move fast.</li>
<li>Sometimes, the fastest way to get to the site of the potential apocalypse is stealing Colin Redwing’s sports car (KIDS: This is a crime! It’s called Joyriding! It’s as fun as it sounds!)</li>
<li>Colin Redwing does not like his sports car being stolen.</li>
</ol>

<p>You can see where this is going.</p>

<img src="/assets/joyriding.png" alt="But Officer, how could 'Joyriding' be bad?" />

<p>Imagine you’re on your way to probable certain death (Y.T. note: Shut up, Ed.!) [Ed. You’re Fired], driving a sick ass sports car at the apocalypse, when who should show up but a washed up actor in his wildly expensive jet? And imagine he announces himself by ripping off the hood of <s>your</s> his vehicle with his plane’s literal talons??</p>

<p>Now I know you don’t come here for juicy gossip, so we’ll TL;DR and say the Falconwing had a weak spot (supervillains eat your heart out), and our buddy who trained with him knew it, so we shot this bad boy down, but that’s where it got MESSY for us.</p>

<p>Turns out, the Falcon’s rep is earned: He had been studying us and had bird themed gadgets to fuck up everything that Yours Truly had going on. Y’all have speculated that some sort of foliage themed hero was involved in the world-saving. Well did you know that this hero was blasted by a bird-themed anti-fecund chemical spray right before they saved the world?</p>

<p>Anyways, he fought us to a standstill, and say what you will about our avian-themed actor turned cape turned mayoral candidate, but not even the end of the world will stand between him and lecturing teens on their responsibilities, so make like the Falcon and BE PREPARED next time you question him on his tax plan!</p>

<p>You know what we say here at JUMP news about the best way to end a lecture:</p>
 
<img src="/assets/molotov.png" alt="Any time I had a problem and I threw a Molotov cocktail... Boom, right away I had a different problem."/>

<p>So we snuck behind him and hit the self-destruct button on his downed jet. Here’s a tip for Falcon: If you’re gonna add a self-destruct button to your plane in the first act, it’s gonna be pressed in the third.</p>

<img src="/assets/turkey.png" alt="Oh the Humanity" />

The rest of what went down is still a secret to the non-initiated, but let it be known that the biggest threat to Yours Truly We The People and our team while trying to save the world was, for a while, our new Mayoral hopeful.

More to come on the Falcon, but for now, just wanted to brag about blowing up his jet. 

As always, remember our motto: WE NEED A GOOD LAWYER, FAST.

-Y.T. Gossip Girl XOXO

TEXT

blurb = "For real, we did. The first part of our coverage of Colin Redwing's mayoral campaign! Subscribe!"

Article.find_or_create_by!(title: "Birdwatch Part 1: We Blew Up The Falconwing, LOL", byline: "Yours Truly, We the People", stub: "birdwatch-1", thumbnail: "/assets/turkey.png", blurb: blurb, content: content, published: true, fake_created_at: "One Day Ago")


content = <<-TEXT
<p>We at JUMP news believe strongly in living well on a budget. See our past articles Eating Cheap in Nexus Slope, Which Hotel Pools are Easiest to Sneak Into, and of course, our interactive map on Where To Pee Good Without Paying.</p>
<p>Here's a bargain for all you deal hunters: <b>Free Superpowers.</b></p>
<p>Or at least, that's the headline we're going with: you gotta get clicks. But would you believe us if we told you you've already paid for your superpowers?</p>
<p>SigTech takes billions of dollars in government contracts and tax breaks. What do they do with that? Per our anonymous superpowered source:</p> 
<p><b>SigTech is using that money to give people superpowers!!!</b> (Ed. Note - Move This To The Top, You Are Burying The Lede Underneath Juvenile Bullshit) [Y.T. Note - Oh, Ed. What would we do without you?]</p>
<img src="/assets/interocitor.png" alt="We have the technology!" />
<p>In fact, you or someone you know may have been saved by taxpayer-funded superpowers, with an anonymous superpowered source sharing directly with this publication that <b>Green Tiger’s new proteges were all supafied in SigTech Labs!</b></p>
<p>Don't believe us? See if they throw a lawsuit at us!</p>
<p>Speaking of lawyers, we aren't lawyers but our understanding of the law is as follows:</p>
<ol>
<li>You pay the government</li>
<li>The government pays SigTech</li>
<li>Therefore you are SigTech’s boss!</li>
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

Article.find_or_create_by!(title: "Get Your Free Superpower Today!", byline: "Yours Truly, We the People", stub: "free-sigtech-superpowers", thumbnail: "/assets/interocitor.png", blurb: blurb, content: content, published: true, fake_created_at: "One Day Ago")


content = <<-TEXT

<img src="/assets/jumbotron.png" alt="Venus caught with Himbo! Killjoy heartbroken!" />
<p>Do you like seeing grainy photos of Venus Fly Trap macking up against a Himbo and we're not just calling him that? Four-hundred thousand upspandexes on CapeWatch seem to think you're not alone.</p>

<p>But one person is alone tonight, and that's Killjoy. The dead former Starling resurrected into a brainwashed killing machine and now self-proclaimed leader of the group that so recently saved the world from the Cold Night is hot off the heels of a relationship with Venus Fly Trap that lasted the lifespan of a fly.</p>

<p>With that in mind, let's eulogize their three day long relationship.</p>

<p>We must begin at the beginning: A snowy night (yep, that one) on the hood of the Falcon’s stolen sports car, which is pretty loaded for Killjoy, but if you think he's the one bringing the most daddy issues into this relationship, buckle your seatbelts.</p>

<p>So</p> 
<ol>
<li>Make out on daddy’s car</li>
<li>Save the world</li>
<li>Define the relationship</li>
</ol>

<p>Seems like a recipe for success, right?</p>

<img src="/assets/speed.png" alt="From Speed: Reeves: I'v heard relationships based on intense circumstances never work. Bullock: Okay, we'll have to base it on sex then." />

<p>Here's some gossip: They never consummated the affair. Should have listened to the Wildcat, lovebirds!</p>

<p>After saving the world, the Pantheon gave Killjoy’s team, now known as T-Squad, a mandatory vacation to the Astoundosphere, where Venus somehow managed to find a way to relive her father’s death in a VR Arcade, to which we say: not-so-Brightmind??</p>

Venus lost control of her powers, forcing a standoff between the T-Squad (where “T” clearly stands for Trauma), Astoundosphere security, and Green Tiger’s new cubs.

<p>This confrontation ended when Kitty Crash ripped a new asshole in the Astoundosphere’s ceiling, baffling everyone and showing that despite Kitty’s rejecting of her role as ender of the world (oops, did we say that??), she can still find herself a hole wherever she wants.</p>

<p>A member of the Trauma Squad tried to calm Venus down by, get this, producing her still living supposedly-dead dad. Readers: This did not work.</p>

<p>Have some sympathy for Venus here: saving the world is stressful. So is your mom finding out you're a superhero from watching the news. So is realizing that your grade on an English essay will never be important again.</p>

<p>Whatever caused Venus to snap, Killjoy, who is just finding out about human emotions for the first time, was not equipped to deal with it. His suggestions for his new girlfriend as her life was ripped out from under her like a rug? “Babe, it helps to run it out.”</p>

<p>She dumped him on the spot, and that's where we had left off for the last week, before last night, when she was spotted on CapeWatch going fully PDA on Himbo, to which we say: GIRL, GET IT. RUN FROM THOSE EMOTIONS!</p>

<img src="/assets/running.png" alt="We hear running helps." />

<p>Fortunately to our rubbernecking fans, two carjackers were there on the scene as involuntary witnesses when Killjoy saw the images of Venus’s rebound on social media, and both corroborated that our favorite fledgling turned fledgling poet said “You can't put a steak on a wound through the heart.”</p>

TEXT

blurb = "The inside scoop on the photos that took over CapeWatch last night, documenting Killjoy and Venus Fly Trap's blink-and-you'll-miss-it love story."

Article.find_or_create_by!(title: "Killjoy Joyless After Venus Traps Himbo", byline: "Yours Truly, We the People", stub: "killjoy-venus-breakup", thumbnail: "/assets/jumbotron.png", blurb: blurb, content: content, published: false, fake_created_at: "Just Now")