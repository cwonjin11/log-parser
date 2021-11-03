# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all

puts "seeding...
.
.
.
.
."
# # file_content = File.read('sample_data.txt');
Event.create!(data: "<37>CEF:0|TippingPoint|UnityOne|1.0.0.17|7610|Adlumin RepDV Manual Block|1|app=IP cnt=3 dst=52.10.98.6 dpt=443 act=Block cn1=0 cn1Label=VLAN ID cn2=33554431 cn2Label=Taxonomy cn3=0 cn3Label=Packet Trace cs1=WCU-External-Outbound cs1Label=Profile Name cs2=6e664408-b90a-48e2-9a2d-c01cb9258381 cs2Label=Policy UUID cs3=00000001-0001-0001-0001-000000007610 cs3Label=Signature UUID cs4=1-1B 1-1A cs4Label=ZoneNames cs5=TipSMS cs5Label=SMS Name dvchost=PAS-TIP2600NX-01 cs6=50.227.44.198 cs6Label=Filter Message Parms src=50.227.44.198 spt=10162 externalId=19278229 rt=1539348361056 cat=Reputation proto=IP deviceInboundInterface=3 c6a2= c6a2Label=Source IPv6 c6a3= c6a3Label=Destination IPv6 request= requestMethod= dhost= sourceTranslatedAddress=50.227.44.198 c6a1= c6a1Label=Client IPv6 suser= sntdom= duser= dntdom=", 
            comment: "test comment");
Event.create!(data: "<35>CEF:0|TippingPoint|UnityOne|1.0.0.17|13012|13012: SIP: SipVicious Brute Force SIP Tool|7|app=TCP cnt=1 dst=72.44.211.10 dpt=5060 act=Block cn1=0 cn1Label=VLAN ID cn2=16929789 cn2Label=Taxonomy cn3=0 cn3Label=Packet Trace cs1=WCU-External-Inbound cs1Label=Profile Name cs2=00000002-0002-0002-0002-000000013012 cs2Label=Policy UUID cs3=00000001-0001-0001-0001-000000013012 cs3Label=Signature UUID cs4=6A 6B cs4Label=ZoneNames cs5=TipSMS cs5Label=SMS Name dvchost=Phoenix-1400N-1 cs6= cs6Label=Filter Message Parms src=37.49.231.177 spt=5067 externalId=19277953 rt=1539343940073 cat=Exploits proto=TCP deviceInboundInterface=11 c6a2= c6a2Label=Source IPv6 c6a3= c6a3Label=Destination IPv6 request= requestMethod= dhost= sourceTranslatedAddress=37.49.231.177 c6a1= c6a1Label=Client IPv6 suser= sntdom= duser= dntdom=", 
            comment: "test comment test comment");
Event.create!(data: "<34>CEF:0|TippingPoint|UnityOne|1.0.0.17|32391|32391: TCP: Netcore/Netis Router Backdoor Communication Attempt|10|app=TCP cnt=1 dst=1.202.126.172 dpt=443413 act=Block cn1=0 cn1Label=VLAN ID cn2=17182102 cn2Label=Taxonomy cn3=0 cn3Label=Packet Trace cs1=WCU-External-Inbound cs1Label=Profile Name cs2=00000002-0002-0002-0002-000000032391 cs2Label=Policy UUID cs3=00000001-0001-0001-0001-000000032391 cs3Label=Signature UUID cs4=6A 6B cs4Label=ZoneNames cs5=TipSMS cs5Label=SMS Name dvchost=Phoenix-1400N-1 cs6= cs6Label=Filter Message Parms src=52.10.98.6 spt=50003 externalId=19277778 rt=1539339853003 cat=Vulnerabilities proto=TCP deviceInboundInterface=11 c6a2= c6a2Label=Source IPv6 c6a3= c6a3Label=Destination IPv6 request= requestMethod= dhost= sourceTranslatedAddress=52.10.98.6 c6a1= c6a1Label=Client IPv6 suser= sntdom= duser= dntdom=", 
            comment: "test comment test comment");



puts "seeding done ✅!!"