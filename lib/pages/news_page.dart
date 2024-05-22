import 'package:cached_network_image/cached_network_image.dart';
import 'package:finance_app4/bottom_bar.dart';
import 'package:finance_app4/model/news_item.dart';
import 'package:finance_app4/pages/current_news_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      title:
          'Fed officials seem like they have ‘no idea’ what is going on with U.S. inflation, strategist says',
      text:
          'Federal Reserve officials appear to have “no idea” what is happening when it comes to the inflation picture in the U.S., according to Julian Howard, lead investment director of multi-asset solutions at GAM. His comments come as policymakers have in recent weeks been urging patience over interest rate cuts, arguing that inflation has fallen by less than previously expected and is still too sticky for the Fed to press ahead with easing monetary policy. “I think the message that’s coming through is that they have no idea what’s going on,” Howard said on CNBC’s “Squawk Box Europe” on Wednesday. The Fed declined to comment. Fed Governor Christopher Waller on Tuesday said that he needed to see further data evidence that inflation was softening before supporting rate cuts. “In the absence of a significant weakening in the labor market, I need to see several more months of good inflation data before I would be comfortable supporting an easing in the stance of monetary policy,” he said at an event at the Peterson Institute for International Economics in Washington. Waller’s comments were echoed by other Fed officials on Tuesday, including Boston Fed President Susan Collins. “I think the data has been very mixed ... and it’s going to take longer than I had previously thought,” she said at a conference hosted by the Atlanta Federal Reserve. “We’re in a period when patience really matters.” But Fed officials have not come out with a clear message about their expectations or to address why inflation remains elevated, GAM’s Howard said. “Inflation is notoriously difficult to predict and I don’t think they have any real idea what’s happening,” he noted. “To be honest, there’s a credibility problem,” Howard said. Policymakers initially suggested inflation would be subdued when it first started rising, Howard said, explaining that the rate then spiked. “And now [policymakers] think inflation is coming down but its not coming down fast enough,” he said. Data released earlier this month showed that the U.S. consumer price index came in at 3.4% for April on an annual basis. This was a slight dip from March’s 3.5% figure, and far below the 9.1% reading recorded in June 2022 when the inflation cycle peaked — but also remained above the Fed’s 2% target.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107334694-1700113136070-gettyimages-1744774442-FED_RESERVE_RATES.jpeg?v=1716365743&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'UK inflation comes in hotter than expected, slashing June rate cut bets',
      text:
          'LONDON — U.K. inflation came in hotter than expected with a drop to 2.3% in April, the Office for National Statistics said Wednesday, prompting traders to pull back from bets on a June interest rate cut from the British central bank. The headline reading declined from 3.2% in March. The April print marked the first time inflation has been below 3% since July 2021 and brings it within touching distance of the Bank of England’s 2% target. Economists polled by Reuters had nevertheless expected a steeper drop to 2.1%. Services inflation — a key measure being watched by the BOE because of the dominance of the sector in the U.K. economy and its reflection of domestically-generated price rises — eased only slightly to 5.9% from 6%. That missed a forecast of 5.5% from both a Reuters poll and the BOE. Core inflation, excluding energy, food, alcohol and tobacco, dipped to 3.9% in April from 4.2% in March. A dramatic drop in the headline rate was widely expected because of the year-on-year decline in energy prices. Investors were instead set to focus on core and services inflation, after BOE policymakers indicated they would be willing to cut interest rates some time in the summer, but stressed that the timing would depend on fresh data. Following the print, money markets slashed the probability of a June rate cut to just 15%, down from 50% earlier in the day. The likelihood of an August cut was seen at 40%, down from 70%. Both core and services were “disappointing,” said Suren Thiru, economics director of the Institute of Chartered Accountants in England and Wales. “Lingering concerns over underlying inflationary pressures mean a June rate cut is unlikely. However, these figures may convince more rate setters to vote to ease policy, providing a signal that a summer rate cut is still possible,” Thiru said in a note. That positions the European Central Bank as the next major central bank likely to start bringing down rates, as its policymakers continue to suggest it would take a major shock to prevent a June cut. Members of the U.S. Federal Reserve have meanwhile struck a significantly more hawkish tone in recent weeks, pushing back market expectations for a cut stateside until after September at the earliest.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107068685-gettyimages-1371981344-_sol2164e.jpeg?v=1716357017&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Britain’s inflation rate could be about to drop below the Bank of England’s 2% target',
      text:
          'LONDON — U.K. inflation could be about to hit a major milestone, with some forecasting that a sharp fall in the April print will take the headline rate below the Bank of England’s 2% target. That would represent a plunge from the current level of 3.2% and could “make or break” a June interest rate cut, economists say. The decline will largely be driven by the energy market, after the regulator-set cap on household electricity and gas bills came down by 12% at the start of April. A reading below 2% on Wednesday would be the lowest headline inflation rate since April 2021, and a cooling from the peak of 11.1% hit in October 2022 — when U.K. price rises were among the most severe of all developed economies. The country has been hit by a range of inflationary pressures, including a persistently tight labor market, weakness in the currency increasing the cost of imports, and steeper rises in gas bills than were seen elsewhere. Ashley Webb, U.K. economist at Capital Economics, said that if the headline rate does fall below 2% in April, as he expects, it would be “momentous.” “This will be crucial in determining whether the first interest rate cut from 5.25% will happen in June (as we expect) or in August. What’s more important is what happens next. We think inflation will fall further, perhaps even to 1.0% later this year,” Webb said in a Friday note. A Reuters poll of economists puts the headline estimate slightly higher, at 2.1%. The Bank of England held interest rates steady at its May meeting, as policymakers sent out signals they were preparing for a rate cut in the summer but declined to zero in on June — as those at the European Central Bank have done. BOE Governor Andrew Bailey said the latest figures were “encouraging,” but that releases ahead of its June 20 meeting, including two consumer price index prints and two sets of wage growth data, would be crucial. BOE Deputy Governor Ben Broadbent said in a Monday speech that if inflation continues to move in line with forecasts, it is “possible Bank Rate could be cut some time over the summer.” As of Tuesday, money market pricing continued to indicate only around a 50% probability of a June cut, rising to 73% in August.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107417611-1716273861620-gettyimages-2153319440-UK_INFLATION.jpeg?v=1716285612&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'Strong UK Inflation Diminishes Sunak’s Hopes for June Rate Cut',
      text:
          'Stronger-than-expected British inflation prompted traders to sharply pare back bets on interest rate cuts and denied Prime Minister Rishi Sunak a totemic economic victory. The Consumer Prices Index rose 2.3% from a year ago in April, the Office for National Statistics said on Wednesday, compared with 2.1% forecast by economists. While the data put the Bank of England’s 2% inflation target within reach and was the lowest level since a cost-of-living crisis began to take hold almost three years ago, it was at the upper end of what economists had been anticipating. Investors unwound bets on easing by the BOE, almost eliminating the chance of a June rate cut, which had been in play as recently as Tuesday. Traders now aren’t fully pricing in the first move by the central bank until November. The pound rose its strongest level against the euro in more than two months as traders increasingly see a greater chance of the BOE taking longer to start easing than the European Central Bank. ECB President Christine Lagarde told Ireland’s RTE on Tuesday that a June cut was probable. Economists in the UK zeroed-in on services inflation, which was little changed at 5.9% as price growth remained strong in the hospitality sector. The central bank, which is watching the number closely for signs of domestic inflationary pressures, had expected a reading of 5.5%. A core gauge of prices that excludes volatile food and energy costs fell to 3.9% from 4.2%. “The higher-than-expected readings for both headline and services inflation in April are enough to scupper the chances of a June rate cut from the Bank of England,” Bloomberg economists Dan Hanson and Ana Andrade wrote in a note. “It now looks likely the easing cycle will begin in August.”',
      image:
          'https://lectera.com/info/storage/img/20220610/36690d0889a690fcddbe.jpg',
    ),
    NewsItem(
      title: 'Japan Trade Deficit Shows Weak Yen Is Weighing on Economy',
      text:
          'Japan’s imports rebounded in April as the weak yen boosted their value, pushing the nation’s trade balance into deficit and highlighting the increasing economic burden stemming from the currency’s plunge. Imports gained 8.3% from a year ago, the Finance Ministry reported Wednesday, compared with the consensus estimate of an 8.9% increase. The trade balance registered a ¥462.5 billion (\$3 billion) deficit, flipping from a ¥387 billion surplus. Exports advanced 8.3%, compared with the consensus of an 11% increase. Exports were boosted by shipments of cars, as the sector recovered from a certification scandal that disrupted factory operations at Daihatsu Motor Co., a Toyota subsidiary, for most of the first quarter. Exports of semiconductor manufacturing equipment and electronic components including chips also advanced. Imports got a boost from crude and aircraft. The trade deficit, a negative factor for gross domestic product, reflects the growing economic pain associated with Japan’s beleagured currency. While the weak yen has helped boost earnings for exporters such as Toyota Motor Corp., it has also driven up costs of imports of everything from fuel and food to raw materials needed for manufacturing. “My main scenario is that things will go in the right direction as cost-push inflation cools and consumption recovers with the impact of wage hikes,” said Taro Saito, an economist at NLI Research Institute. “But my risk scenario is that a weaker yen will worsen ongoing cost-push inflation and damage consumption.” With Japan’s currency trading around a 34-year low versus the dollar, a majority of Japanese firms in a survey reported it’s becoming more of a problem as it pressures them to pass on rising costs of raw materials to customers via price hikes. Some have looked for the Bank of Japan to respond, as the wide interest gap versus the US is a key factor driving the trend. Governor Kazuo Ueda warned against excessive yen weakness earlier in May. Strong demand in overseas markets, especially in the US, carries mixed ramifications for Japan. It may help the economy return to growth in the current quarter thanks to robust exports. It also underscores the strength of the US economy. By region, exports to the US and China rose 8.8% and 9.6%, respectively, while those to Europe fell 2%.',
      image:
          'https://arts-sciences.buffalo.edu/content/arts-sciences/economics/about/what-is-economics/_jcr_content/par/image.img.680.auto.jpg/1515613194181.jpg',
    ),
    NewsItem(
      title: 'China Hints at 25% Car Tariff as Deadline for EU Probe Looms',
      text:
          'China signaled it’s ready to unleash tariffs as high as 25% on imported cars with large engines, as trade tensions escalate with the US and European Union. The China Chamber of Commerce to the EU said it was informed about the potential move by “insiders,” according to a statement posted on X. The levies would affect European and US carmakers and have a “significant” impact on relations with the EU, it added. Shares of European carmakers that stand to be most affected by a potential tariff fell on Wednesday, with Mercedes-Benz Group AG and BMW AG both dropping more than 2% in early trading. Beijing is ramping up threats of retaliation as a deadline looms for the EU to announce results of its probe into China’s electric-vehicle subsidies. The bloc must inform Chinese exporters whether it intends to impose tariffs by early June, and they could go into effect a month later, according to Eurasia Group. Trade tensions between the EU and China have soared since the EV probe was announced, with President Xi Jinping’s visit to Europe this month seemingly doing little to relieve the strain. Xi was seeking to dissuade the bloc from going down the same path as the US, which has unveiled a sweeping set of charges on imports from China — raising concerns in Beijing that American allies may follow suit. “China’s retaliatory trade investigations and warnings are not deterring the EU,” Eurasia Group analysts wrote in a note on Tuesday. “Brussels is eager to send a strong signal to Beijing with its EV probe that the EU will counteract Chinese subsidies and overcapacity.” The Chinese chamber referred to an interview published by the ruling Communist Party’s Global Times newspaper on Tuesday in which Liu Bin, the chief expert at the China Automotive Technology & Research Center, called for temporarily increasing the tariff rate on cars with engines larger than 2.5 liters. China imported 250,000 cars in that bracket last year and World Trade Organization rules would permit a tariff of up to 25%, the report cited Liu as saying. The current charge on passenger car imports from Europe is 15%, according to the Ministry of Commerce’s tariff search page. The ministry didn’t respond to a request for comment.',
      image:
          'https://blogassets.leverageedu.com/blog/wp-content/uploads/2020/06/08204434/Scope-of-Business-Economics.jpg',
    ),
    NewsItem(
      title: 'New Zealand Now Sees Cash Rate Cuts Starting Later in 2025',
      text:
          'New Zealand’s central bank kept interest rates unchanged for a seventh straight meeting and signaled policy will need to stay tight for longer to stamp out stubborn inflation. The Reserve Bank’s Monetary Policy Committee held the Official Cash Rate at 5.5% on Wednesday in Wellington, as anticipated. The bank’s new forecasts show reductions starting in the third quarter of 2025 instead of the second. “The Committee discussed the possibility of increasing the OCR at this meeting,” the RBNZ said. While it is confident inflation will decline over the medium term, “the Committee also agreed that interest rates may have to remain at a restrictive level for longer than anticipated” in February, it said. The RBNZ is finding it harder than expected to get inflation back to the target, even though New Zealand’s economy has been in recession and the labor market is slackening. While investors are still betting the RBNZ will start cutting rates later this year, several leading economists don’t see it pivoting to easing until the first or second quarter of next year. “The statement was hawkish compared to expectations,” said Nick Tuffley, chief economist at ASB Bank in Auckland. “We have retained our view that the RBNZ will start cutting the OCR from February 2025, but the risk is later.” The New Zealand dollar surged almost 1% after the decision before paring its gain to trade 0.4% higher on the day at 61.19 US cents. Policy sensitive two-year government yields climbed seven basis points to 4.77%, paring an earlier rise of as much as nine basis points. Money markets trimmed expectations of rate cuts this year to price 34 basis points of easing by year-end, according to swaps data compiled by Bloomberg. Prior to the meeting, traders had priced 45 basis points of rate cuts. The RBNZ’s updated forecasts show the average OCR peaking at 5.65% this year compared to 5.60% in its previous projections in February. That implies a 60% risk of a hike. The projections show the average OCR falling to 5.4% in the third quarter next year.',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS84muRJjVM2Ksy024xOKCQyHlWU2l-kjo-IMnvztzDLmkwXW0yOv27lk7LCK4Op-aThJg&usqp=CAU',
    ),
    NewsItem(
      title: 'Bank of Korea Expected to Hold Rates as Economy Surprises',
      text:
          'The Bank of Korea is set to keep its benchmark interest rate steady Thursday as it recalibrates its outlook for an economy that’s damped policy pivot speculation by growing faster than expected this year. All 21 economists polled by Bloomberg forecast the South Korean central bank will keep its policy rate at 3.5% for an 11th time. The bank last hiked in January 2023 and has since kept the rate at a level it calls restrictive as it continues to fight inflation. Investors will focus on expected upgrades to the bank’s growth forecast. Governor Rhee Chang-yong said earlier this month that the central bank would reconsider the timing of potential interest-rate cuts, signaling a delay after South Korea’s gross domestic product grew 1.3% in the first quarter, soundly beating a 0.6% forecast. The weak won adds to the case for standing pat. The currency has slumped against the dollar as anticipation of near-term rate cuts by the Federal Reserve fades thanks to strong US economic data. “The magnitude of the BOK’s GDP upgrade will matter for inflation implications,” Jin Choi, an HSBC Global Research economist, said. “It could shake up the board’s overall monetary policy view.” Rhee said last month that the scheduled re-assessment of the economy and inflation this month would be crucial to the trajectory of policy. Analysts surveyed by Bloomberg expect the South Korean economy to expand 2.5% this year, with the inflation rate seen reaching 2.6%. The exchange rate in particular adds to reasons for the BOK to maintain caution about signaling a policy pivot. The won has been one of Asia’s worst-performing this year along with Japan’s yen and Thailand’s baht, and South Korea relies heavily on imports for food and energy. The deterioration of the local currency is likely to feed into consumer prices in coming months, economists say, renewing concerns about inflation after price-growth moderated to 2.9% last month from 3.1% in March. Household debt is another concern for policymakers. The growth in mortgage loans, a key component of household debt, picked up by 5.8% from a year earlier in the first quarter, pushing up home prices in some urban neighborhoods and indicating consumers are coping with elevated borrowing costs.',
      image:
          'https://blog.alliance.edu.in/wp-content/uploads/2023/03/a-career-in-economics-02-03-2023-1.jpg',
    ),
    NewsItem(
      title:
          'Rent Is Harder to Handle and Inflation Is a Burden, a Fed Financial Survey Finds',
      text:
          'American households struggled to cover some day-to-day expenses in 2023, including rent, and many remained glum about inflation even as price increases slowed. That’s one of several takeaways from a new Federal Reserve report on the financial well-being of American households. The report suggested that American households remained in similar financial shape to 2022 — but its details also provided a split screen view of the U.S. economy. On the one hand, households feel good about their job and wage growth prospects and are saving for retirement, evidence that the benefits of very low unemployment and rapid hiring are tangible. And about 72 percent of adults reported either doing OK or living comfortably financially, in line with 73 percent the year before. But that optimistic share is down from 78 percent in 2021, when households had just benefited from repeated pandemic stimulus checks. And signs of financial stress tied to higher prices lingered, and in some cases intensified, just under the report\'s surface. Inflation cooled notably over the course of 2023, falling to 3.4 percent at the end of the year from 6.5 percent going into the year. Yet 65 percent of adults said that price changes had made their financial situation worse. People with lower income were much more likely to report that strain: Ninety-six percent of people making less than \$25,000 said that their situations had been made worse. Renters also reported increasing challenges in keeping up with their bills. The report showed that 19 percent of renters reported being behind on their rent at some point in the year, up two percentage points from 2022. Interestingly, slightly fewer households were taking action — like switching to cheaper products or delaying big purchases — to defray their higher costs compared with 2022. Still, about 79 percent of households indicated that they had done something to offset climbing costs, suggesting that Americans have not yet broadly accepted high prices as an unavoidable reality of life. The Fed’s annual checkup on household finances is particularly relevant this year. Consumer confidence has been depressed even though the job market is booming and inflation is cooling notably, a mystery that has befuddled analysts and bedeviled the White House.',
      image:
          'https://static01.nyt.com/images/2024/05/21/multimedia/21dc-econ-bjtz/21dc-econ-bjtz-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'Europe Wants to Build a Stronger Defense Industry, but Can’t Decide How',
      text:
          'France and Germany’s recent agreement to develop a new multibillion-dollar battlefield tank together was immediately hailed by the German defense minister, Boris Pistorius, as a “breakthrough” achievement. “It is a historic moment,” he said. His gushing was understandable. For seven years, political infighting, industrial rivalry and neglect had pooled like molasses around the project to build a next-generation tank, known as the Main Combat Ground System. Russia’s invasion of Ukraine more than two years ago jolted Europe out of complacency about military spending. After defense budgets were cut in the decades that followed the Soviet Union’s collapse, the war has reignited Europe’s efforts to build up its own military production capacity and near-empty arsenals. But the challenges that face Europe are about more than just money. Daunting political and logistical hurdles stand in the way of a more coordinated and efficient military machine. And they threaten to seriously hobble any rapid strengthening of Europe’s defense capabilities — even as tensions between Russia and its neighbors ratchet up. “Europe has 27 military industrial complexes, not just one,” said Max Bergmann, a program director at the Center for Strategic and International Studies in Washington. The North Atlantic Treaty Organization, which will celebrate its 75th anniversary in Washington this summer, still sets the overall defense strategy and spending goals for Europe, but it doesn’t control the equipment procurement process. Each NATO member has its own defense establishment, culture, priorities and favored companies, and each government retains final say on what to buy.',
      image:
          'https://static01.nyt.com/images/2024/05/15/multimedia/00europe-defense-01-kwlj/00europe-defense-01-kwlj-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'A Loss at Mercedes-Benz Slows U.A.W.’s Southern Campaign',
      text:
          'After suffering a setback at two Mercedes-Benz plants in Alabama on Friday, the United Automobile Workers union’s efforts to organize other auto factories in the South are likely to slow and could struggle to make headway. About 56 percent of the Mercedes workers who voted rejected the U.A.W. in an election after the union chalked up two major wins this year. In April, workers at a Volkswagen plant in Tennessee voted to join the union, the first large nonunion auto plant in the South to do so. Weeks later, the union negotiated a new contract bringing significant pay and benefit improvements for its members at several North Carolina factories owned by Daimler Truck. “Losing at Mercedes is not death for the union,” said Arthur Wheaton, director of labor studies at Cornell University School of Industrial and Labor Relations. “It just means they’ll have less confidence going to the next plant. The U.A.W. is in it for the long run. I don’t think they’re going to stop just because they lost here.” Since its founding in 1935, the U.A.W. has almost exclusively represented workers employed by the three Michigan-based automakers: General Motors, Ford Motor, and Chrysler, now part of Stellantis. And it has long struggled to make headway at plants owned by foreign manufacturers, especially in Southern states where anti-union sentiment runs deep. Workers at the Volkswagen plant had voted against being represented by the U.A.W. twice by narrow margins before the recent union win there. An effort a decade ago to organize one of the Mercedes plants failed to build enough support for an election. Harley Shaiken, a professor emeritus at the University of California, Berkeley, noted that broad union organizing efforts seldom proceeded smoothly. In the 1930s, the U.A.W. won recognition at G.M. and Chrysler but struggled at Ford, which continued employing nonunion workers for a few years. “I have no doubt they will continue organizing and eventually try for another vote,” he said. In its past efforts in the South, the union was hampered by a negative image, which may have also played a part in the U.A.W.’s loss at Mercedes. For years, the three Michigan automakers were cutting jobs and closing plants, in part because of rigid and costly labor contracts. The union was also hurt by corruption cases that put several former senior officials, including two former U.A.W. presidents, behind bars.',
      image:
          'https://static01.nyt.com/images/2024/05/20/multimedia/18JPuaw-next2-print-zltp/18uaw-next-02-zltp-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'Walmart Opens Year With Strong Sales, Aided by ‘Upper-Income’ Shoppers',
      text:
          'Walmart said its comparable-store sales in the United States rose 3.8 percent from the quarter a year earlier. Its U.S. e-commerce business jumped 22 percent. Walmart has performed better than retailers dependent on apparel sales, in part because it also sells essential goods like groceries. Consumers, especially those with lower incomes, are looking for places to save after a stretch of high inflation. Transactions were up 3.8 percent, while the average ticket price showed that with each visit people were spending about the same as they did this time last year. Walmart’s quarterly profit, of \$5.1 billion, was triple the result a year earlier. Walmart’s stock rose 7 percent, closing at a record \$64, as investors reacted to the results and the company’s upgraded forecast for growth this year. The retailer said consumers from “upper-income households” helped it gain market share, reiterating a trend it has noted since Americans started navigating high inflation a couple of years ago. In an interview, John David Rainey, Walmart’s chief financial officer, pointed to the company’s focus on making shopping more convenient through features like curbside pickup and deliveries, as well as diversifying its product offerings, particularly online. “You think about things like AirPods, MacBook Air — these are items that certainly appeal to a high-income demographic,” Mr. Rainey said. “The more that we move into that space and offer a broad assortment like that, I think the more we’re going to retain this cohort.” Over the past three years, households earning over \$100,000 have provided the biggest gains in Walmart’s market share, according to Neil Saunders of GlobalData, an analytics and consulting firm. “In a sea of challenged and volatile and confusing consumer spending,” said David Silverman, a retail analyst at Fitch Ratings, “what’s interesting is how strong and consistent this quarter and many of Walmart’s last few quarters have been.”',
      image:
          'https://static01.nyt.com/images/2024/05/16/multimedia/16walmart-mkzc/16walmart-mkzc-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'Inside the Rent Inflation Measure That Economics Nerds Love to Hate',
      text:
          'There’s a three-letter abbreviation that economists have started pronouncing with the energy of a four-letter word: “O.E.R.” It stands for owner’s equivalent rent, and it has been used to measure American housing inflation since the 1980s. As its name suggests, it uses a combination of surveys and market data to estimate how much it would cost homeowners to rent the house they live in. But three years into America’s price pop, it has become almost cliché for economists to hate on the housing measure. Detractors blast if for being so slow-moving that it does not reflect up-to-date conditions in the economy. Critics argue that it uses convoluted statistical methods that make little sense. The most intense haters insist that it is giving a false impression about where inflation stands. “It’s just not adding anything to our understanding of inflation,” said Mark Zandi, chief economist of Moody’s Analytics and a frequent adviser to the Biden administration. Full disclosure: The New York Times called Mr. Zandi for this article because he has been one of the many economists grousing about O.E.R. on social media. He said he was “not a fan.” What has this one nerdy inflation component done to earn so much vitriol? It is preventing an economic happy ending, more or less. Housing inflation measures have been surprisingly sticky over the past year, and they are now a major barrier keeping price increases overall from returning to normal. That has knock-on effects: Because of inflation’s staying power, the Federal Reserve is keeping interest rates at a more than two-decade high to try to wrestle prices under control by slowing the economy. But while there’s no denying that O.E.R. has become a main character in America’s inflationary tale, not everyone thinks it is the bad guy. Some economists think it is a valid and reasonable way to measure an important part of the consumer experience. Ahead of a fresh Consumer Price Index report set for release on Wednesday morning, there are a few key facts to understand about how housing inflation is calculated, what it means and what it might do next. Let’s start with the basics. There are two main measures of inflation in America, the Consumer Price Index and the Personal Consumption Expenditures index. Both matter: C.P.I. is released earlier each month, providing the first snapshot of what prices have done over the past month. P.C.E. comes later, but it is the index that the Fed officials aim for with their 2 percent inflation goal.',
      image:
          'https://static01.nyt.com/images/2024/05/15/business/15dc-OERexplainr/15dc-OERexplainr-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'What Forecasters Say About Interest Rates (and Why They Disagree)',
      text:
          'How soon is soon? Or exactly how much later is later? As the year started, there was a widespread view among economists and on Wall Street that the Federal Reserve would lower interest rates in the first half of the year. Maybe in March, maybe in May, but sooner rather than later. That long-awaited moment, two years after the Fed began ratcheting up rates to their highest level in decades, held the prospect of brightening consumer sentiment, increasing company valuations and improving corporate financing opportunities. It was called “the pivot party,” and everyone was invited. But three months of hotter-than-expected inflation data followed. Financial markets then projected that the Fed would lower rates once, near the end of the year, or not at all — based on a view that the central bank will see little merit in such a move as long as inflation remains a bit elevated and employment is growing. Interest rates for home and car loans tilted up again. And it seems the pivot party has been canceled. But some experts argue that it has only been postponed, leaving forecasters divided about what the rest of the year will bring. Some market analysts and bank economists are making the case that rate cuts are still on the table. The April jobs report, which implied a cooling labor market and softer wage growth, gave them some fodder. These analysts generally contend that current measures of inflation are overstated because of lagging indicators, reflecting cost pressures from over a year ago, that will ebb in summer. And they believe that while the diffuse process of stabilizing prices, formally called disinflation, may face setbacks (especially any oil shock), it is on track. The Fed’s preferred inflation measure, the Personal Consumption Expenditures index, increased 2.7 percent on an annual basis in March, far below its 7.1 percent peak in June 2022. Yet slower progress this year in that measure and the higher-profile Consumer Price Index has been notable, frustrating efforts to reach the Fed’s official target of 2 percent. Skanda Amarnath, the executive director of Employ America, a labor-focused group that tracks inflation data and Fed policy, was originally among those expecting a spring rate cut. In a recent newsletter, he said the first quarter “was filled with a series of upside inflation surprises” — from well-known potential trouble spots like auto insurance and obscure ones like financial adviser management fees — but “it does not mean that the disinflationary process has come to an end.”',
      image:
          'https://static01.nyt.com/images/2024/05/13/business/13econ-explain/13econ-explain-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'U.S. Awards \$120 Million to Chipmaker to Expand Facility in Minnesota',
      text:
          'Federal officials will provide up to \$120 million in grants to Polar Semiconductor to help the company expand its chip manufacturing facility in Minnesota, the Biden administration announced on Monday, the latest in a string of awards meant to strengthen the U.S. supply of semiconductors. Commerce Department officials said the grant would help Polar upgrade technology and double production capacity at its facility in Bloomington, Minn., within two years. The company produces chips that are critical for cars, defense systems and electrical grids, federal officials said. “We are making taxpayer dollars go as far as possible while crowding in private and state investment to create jobs, secure our supply chains and bolster manufacturing in Minnesota,” said Laurie Locascio, the under secretary of commerce for standards and technology. The funding stems from the bipartisan CHIPS and Science Act, which lawmakers passed in 2022 to ramp up the domestic production of commercial semiconductors, the tiny chips crucial for most electronics, including smartphones, computers, cars and weapons systems. The law gave the Commerce Department \$39 billion to distribute to companies to incentivize the construction and expansion of new plants in the United States. Scaling up domestic chip production is a major component of President Biden’s economic policy agenda, which largely focuses on bolstering American manufacturing and bringing back jobs that have shifted overseas. Only about 10 percent of the world’s semiconductors are produced in the United States, down from about 37 percent in 1990. Biden administration officials have so far announced awards of more than \$29 billion. Last month, the Commerce Department announced up to \$6.1 billion in grants to Micron to help the chipmaker build plants in New York and Idaho. Other chipmakers — including Samsung, Taiwan Semiconductor Manufacturing Company and Intel — have received multibillion-dollar awards. GlobalFoundries, Microchip Technology and BAE Systems received the first three federal awards. The United States is trying to ramp up domestic production of semiconductors in part to prevent the kinds of expensive and economically damaging chip shortages that cropped up during the pandemic. Federal officials said Polar’s award would help head off those types of disruptions.',
      image:
          'https://static01.nyt.com/images/2024/05/13/us/politics/13dc-chips1/13dc-chips1-superJumbo.jpg?quality=75&auto=webp',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
          const BottomBar(),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => CurrentNewsPage(
                        news: news,
                      )),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF9F6FF),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  height: 146,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            news.image!,
                          ))),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  news.title!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  news.text!,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
