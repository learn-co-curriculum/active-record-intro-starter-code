Startup.find_or_create_by(name:"name1",founder:"founder1",domain:"domain1")
Startup.find_or_create_by(name:"startup",founder:"person",domain:"kjfjf.com")
Startup.find_or_create_by(name:"name3",founder:"founder3",domain:"domain3")

VentureCapitalist.find_or_create_by(name:"vvcname1", total_worth: 5)
VentureCapitalist.find_or_create_by(name:"vvcname2", total_worth: 9)
VentureCapitalist.find_or_create_by(name:"vvcname3", total_worth: 7)

FundingRound.find_or_create_by(startup: Startup.all[1], venture_capitalist: VentureCapitalist.all[1], funding_type: "num2", investment:839)
FundingRound.find_or_create_by(startup: Startup.all.last, venture_capitalist: VentureCapitalist.all.last, funding_type: "num3", investment: 8000)