#import "@preview/cetz:0.2.2": canvas, draw
#import "@preview/suiji:0.3.0": gen-rng, uniform
#import "@preview/cetz:0.2.2"


#cetz.canvas(length: 5pt, {
  import cetz.draw: *

  let n = 2000
  let (x, y) = (0, 0)
  let (x-new, y-new) = (0, 0)
  let rng = gen-rng(42)
  let v = ()

  for i in range(n) {
    (rng, v) = uniform(rng, low: -2.0, high: 2.0, size: 2)
    (x-new, y-new) = (x - v.at(1), y - v.at(0))
    let col = color.mix((blue.transparentize(20%), 1-i/n), (green.transparentize(20%), i/n))
    line(stroke: (paint: col, cap: "round", thickness: 2pt),
      (x, y), (x-new, y-new)
    )
    (x, y) = (x-new, y-new)
  }
})


#let cover-points = (
  (16.3723200603856, 6.07006877517398, 0.979693182562524),
  (14.8348735902972, 6.70352624286313, 0.920837033525285),
  (15.9443459503929, 5.85056750951652, 0.513660117796151),
  (18.4795460226023, 5.96108272900339, 0.430315591494477),
  (20.5501761827624, 7.1227714861746, 0.113093701692133),
  (16.6647539132623, 6.02450733517201, 0.990210346755907),
  (17.2474683033424, 9.08128348998245, 0.206595522736581),
  (15.2425900889936, 6.1777578816121, 0.501843717637609),
  (14.8739429725302, 5.50100499541354, 0.700050079036327),
  (20.2676202915874, 7.28330894630322, 0.87765148465525),
  (18.9529343428413, 5.45769727661441, 0.169338966500959),
  (18.5124967217394, 6.7214053849385, 0.274517168677197),
  (14.259526803678, 9.18227634143053, 0.676369026345516),
  (18.1606758544879, 6.80188449389315, 0.878839613760174),
  (20.1945258436194, 6.465000555334, 0.165729234105952),
  (15.2327008461555, 8.06544334876867, 0.891951696064446),
  (17.2329827140654, 4.41236583748225, 0.0784237035038925),
  (18.9826381898775, 5.43232654417096, 0.416053761159688),
  (18.5692453738867, 8.34045100602275, 0.495148460559718),
  (15.5502435156335, 8.70735728905601, 0.38720412376666),
  (15.8496351701258, 5.46549865953977, 0.498771661037355),
  (17.2008472690505, 7.75833609234053, 0.63047478710939),
  (20.4266697553595, 5.76648582114067, 0.0556254906331534),
  (20.2721846698505, 9.00451759950316, 0.968424880978056),
  (15.2591851733785, 5.65407202359739, 0.830746281135502),
  (16.467262268122, 9.27659885169027, 0.631479724902459),
  (19.8471739737047, 6.00799127035162, 0.240630996872107),
  (15.7375227845279, 7.85586386429912, 0.824508361662589),
  (19.3622671213713, 8.36598981423808, 0.428374722019619),
  (18.2873736216747, 7.76183318412434, 0.568851367548572),
  (19.8963844092492, 5.01925525101876, 0.199413314380516),
  (20.6068603658136, 4.93675729550071, 0.405255730088962),
  (14.7086841543532, 8.64163921988866, 0.353815597514222),
  (16.683543119394, 9.34949384228852, 0.251346318383719),
  (18.407938706282, 5.39571782849772, 0.186285618931167),
  (16.3841745012409, 8.02037263362788, 0.102409977169413),
  (20.7732964752937, 5.99099801429542, 0.607284423857897),
  (16.3902427850882, 5.95127109274762, 0.476871604655865),
  (15.7232366548401, 6.915394344283, 0.798990602169386),
  (17.4378550636398, 5.05765981787491, 0.411231425034958),
  (16.0905227690776, 4.85716678563312, 0.951586944274749),
  (17.321972627476, 5.81556869445782, 0.174589246220256),
  (15.9363871473395, 4.70372164263336, 0.275648555956709),
  (17.7854375544118, 4.70461730351412, 0.559038149373835),
  (16.1299469298141, 8.23243014779176, 0.618535354765565),
  (16.7456522004498, 5.40463279761927, 0.0616736980738003),
  (16.901779395762, 9.047771951112, 0.760953195776694),
  (16.6227110894314, 8.31308601164128, 0.489216265679798),
  (16.6052131939601, 4.79560824665545, 0.685180263008388),
  (14.9444591806827, 4.02268281285195, 0.325555500976923),
  (15.6339678048682, 8.04142003347734, 0.678132616918648),
  (15.3009887646235, 5.09024808336299, 0.125020589981295),
  (14.1505920851309, 8.58787795020434, 0.530115213326068),
  (18.6744381850685, 8.93342642223082, 0.797596631298345),
  (16.4532202170908, 9.4943863757835, 0.183312956138322),
  (14.7677776326441, 6.12196066350149, 0.388437004539394),
  (19.3805591552648, 9.26032186972039, 0.0765857045794995),
  (14.8450361896405, 4.53347330391933, 0.993668031518369),
  (19.9307892842637, 7.15185632023973, 0.838292022063622),
  (16.1873612882768, 9.23746665674372, 0.834455758003474),
  (20.4701486107177, 8.40930581464213, 0.809686698153819),
  (16.3032334741463, 9.49578648942177, 0.297739524647659),
  (14.5358044206962, 4.05274549913059, 0.324103780523495),
  (19.3314430018155, 4.06302479387903, 0.019658907272616),
  (17.8074176886359, 5.68943581848011, 0.379538682663202),
  (20.644586525697, 4.52770219609368, 0.122208325586387),
  (17.079826407936, 4.66094100890948, 0.23608964653049),
  (14.7266398287733, 4.2713695536761, 0.0530131391105448),
  (16.3628158358932, 8.94837577567134, 0.472731715391544),
  (18.5298014790227, 6.89176573417523, 0.957755237950517),
  (16.1088740774268, 6.36906773232808, 0.23196394002416),
  (14.5175218724269, 8.77204003864504, 0.438131213129485),
  (19.8608096874358, 6.62994285467343, 0.240710061489216),
  (15.6657743694764, 6.72920526271391, 0.0211035721439959),
  (15.4856350969583, 8.5266804581081, 0.467010146569047),
  (17.0537458120015, 8.74808994075915, 0.136239080036511),
  (17.7861489851875, 5.37484563298144, 0.444504037555068),
  (14.6015864840162, 4.77037245796043, 0.642865616986866),
  (17.2412898301223, 8.61100608095441, 0.166685375295693),
  (17.7943146687979, 5.53048894515719, 0.570627688608427),
  (20.7551992050295, 9.00112135899292, 0.24011825425836),
  (20.7424955581344, 7.2393631170055, 0.153949486453373),
  (19.5210341219665, 5.62404467035075, 0.133326965935499),
  (18.0345879318154, 4.11310541374052, 0.870879201062408),
  (20.2443137064151, 6.12902071181767, 0.591688457180777),
  (17.439345834181, 7.91812107952026, 0.218733584649103),
  (16.561107891379, 5.69118918880493, 0.818780853699415),
  (17.6950091965803, 6.97735388585267, 0.710641165214654),
  (19.8297016181346, 7.32556328425026, 0.323576222897231),
  (14.525951378276, 8.12405158535182, 0.227207098322208),
  (14.10960406534, 6.40666188125332, 0.253060380542625),
  (20.2138364190746, 9.99751942714338, 0.35641027441715),
  (17.4418533436579, 9.1617271007412, 0.227200814822399),
  (15.8118522970804, 5.04693391360776, 0.401682693301288),
  (20.3522817966785, 7.65794291546219, 0.309167104674815),
  (16.0453659670823, 5.26929909874569, 0.187628991747945),
  (18.2900895663799, 5.29749205809246, 0.882575328875343),
  (16.5652845774638, 8.05274105292896, 0.609653665822905),
  (17.9810338322262, 4.89328243290976, 0.0462444871643782),
  (20.9801049392993, 7.5239426385547, 0.716927391520222),
  (20.631321780653, 8.96593685313024, 0.688464576852127),
  (17.2418263301704, 5.77311049223974, 0.357165588185292),
  (17.9654487962259, 4.82393465346215, 0.965661850389979),
  (19.3507394866092, 9.14564074561877, 0.913312638676918),
  (16.77644713035, 8.74556236495816, 0.1891811055582),
  (15.2644574724243, 7.22803089945368, 0.397318436077054),
  (19.7111568774018, 6.41358215405445, 0.152901375062558),
  (15.0421625145765, 9.06980538750865, 0.354155662878398),
  (15.4150606752012, 7.33264282386405, 0.589724061154516),
  (18.2882973747895, 4.1088050222262, 0.698847537511892),
  (14.498297737287, 4.76642017284472, 0.100114480144958),
  (18.1261828391084, 4.75825152537962, 0.32141332732947),
  (14.3818204044465, 4.74907157884297, 0.916982850703311),
  (15.0248253807689, 7.42292731228749, 0.151745856974391),
  (15.5870104931351, 6.93353512698861, 0.928903152768727),
  (20.2076179318319, 5.58688049975702, 0.830538180741619),
  (20.2731033360558, 8.40868312635533, 0.674140646041498),
  (15.8390575100549, 5.06466813715822, 0.92779796365497),
  (18.1238541776055, 8.61869877950778, 0.752085203550437),
  (16.8460281468982, 6.99467576180007, 0.118352392909995),
  (14.0362910204433, 6.36446541799773, 0.240991463512942),
  (19.817129704278, 8.83053975836247, 0.570387899346338),
  (15.5089218737464, 7.96509330036255, 0.894364965557346),
  (16.3021585237704, 9.0040302686974, 0.284940003929334),
  (14.3092284998385, 9.01742615951714, 0.375381957217448),
  (17.6480697223315, 6.66342803304277, 0.735821112010572),
  (18.2492506151941, 4.26857729682298, 0.0190586729941462),
  (15.0528889070166, 5.13112501657443, 0.0236751514265305),
  (14.5827364415285, 4.60538601623427, 0.447397271815824),
  (17.6209184430467, 8.82075996340019, 0.0948057135797121),
  (14.5876347178153, 8.65407525780599, 0.693092766936771),
  (20.1302526330761, 5.43423040266538, 0.499551325207774),
  (15.4996173417307, 6.2928139046288, 0.226520044411729),
  (18.2957265278786, 7.21940402227361, 0.591429532575073),
  (17.2124287492838, 4.54284177773198, 0.443278156833526),
  (15.2581743333123, 7.50951911348562, 0.0997387636951231),
  (15.3621717003032, 9.20098078420365, 0.0687789270447382),
  (14.7551539689624, 7.70189856604193, 0.561419338970805),
  (20.1871073708146, 7.06594223739767, 0.218974142977026),
  (18.4786007317387, 9.35817940907775, 0.706378138492962),
  (15.7078547412439, 5.05960857389912, 0.134417393172095),
  (17.0811244315002, 8.3954238712683, 0.62272778487932),
  (14.0830675279308, 7.98610042976678, 0.522611042181681),
  (16.805088512495, 8.5592063881117, 0.895874367320009),
  (16.163264385124, 5.86202013039913, 0.500308785675196),
  (18.3046284750459, 5.85145083154672, 0.294311903710961),
  (18.7028082095767, 5.73978576126293, 0.812599868836488),
  (16.5023072567074, 5.50419707341678, 0.12637083533173),
  (19.0863881039459, 4.60980492658426, 0.936792798296253),
  (20.9607346587034, 7.04987845790371, 0.935849438801013),
  (16.0934099935785, 9.36117426252115, 0.112185764496375),
  (18.3652941931658, 9.56676783932099, 0.788179986374352),
  (17.0678937057364, 5.15356134815299, 0.438734074849531),
  (16.9704668967962, 8.14616710005019, 0.794272990989324),
  (19.1942514860028, 6.56514609433468, 0.125418944178535),
  (20.2207551179805, 7.03834409747716, 0.115187560310088),
  (17.3698571526273, 9.75256038347563, 0.763821693912122),
  (16.017764857587, 7.06746793463445, 0.750288966453821),
  (17.8104043007521, 8.82157911764749, 0.461879296481043),
  (14.4941520471196, 4.30664097989834, 0.394470021862646),
  (15.2608919169717, 5.67876394417792, 0.421285152060273),
  (18.7748080286987, 5.55692490241289, 0.654490832537468),
  (17.5202554128253, 5.56732451235112, 0.849036763870399),
  (20.3587040263261, 8.45745234473909, 0.274609113240282),
  (19.3674693836698, 4.94679694992343, 0.132406027224997),
  (18.5481040922601, 7.04359097701113, 0.67884314850064),
  (17.0848468123201, 9.05340416417131, 0.531358158076337),
  (18.4595626447378, 6.07660813213549, 0.738403882088393),
  (20.0107747947026, 8.78413225165326, 0.718556337982146),
  (18.1632740181405, 6.219981302962, 0.0311936611850803),
  (14.1192743543391, 6.87239884123161, 0.165704805457227),
  (17.3271497850542, 9.25894013370499, 0.827641196155955),
  (16.5590177409817, 8.53026800860481, 0.0423397183533766),
  (19.0559979741205, 8.63649812936811, 0.888698689037383),
  (17.3043657396168, 5.71063044072662, 0.898490425592845),
  (15.5060854951615, 9.10032337256262, 0.480202172674982),
  (14.6401828346495, 5.8608878251592, 0.934682029800279),
  (18.5387348803107, 5.07833316569688, 0.633945591773834),
  (14.6104876586609, 7.81181460639177, 0.251474835266435),
  (16.6830601458145, 7.84513403674985, 0.369677785774647),
  (18.5668256628427, 8.02522632373876, 0.557503067206831),
  (20.8600310944022, 7.20377342080125, 0.804309985048998),
  (20.4031077059383, 9.74065543815467, 0.722553664719496),
  (19.7561411519126, 5.50772538102649, 0.149600408720076),
  (18.3852050236993, 7.31996163577424, 0.513910037519961),
  (15.1313129845389, 7.79573602230758, 0.722469200280321),
  (20.8822828656765, 7.57353320143002, 0.63410481210713),
  (17.5049782492021, 9.84479331600695, 0.807949212772581),
  (14.6582896227012, 7.90824591924378, 0.242167289587929),
  (17.9461363521278, 6.58374064487321, 0.512596476786809),
  (20.6958029415662, 7.94411583031565, 0.854980425311624),
  (20.8268416769343, 9.49149882571349, 0.173389098284733),
  (15.7832954261822, 5.72551486520214, 0.0425926766473209),
  (16.0536750739163, 9.59411836418765, 0.227177350530615),
  (16.3188044866964, 9.5590562952868, 0.269887375818524),
  (18.9423998681064, 6.30360288434894, 0.0279447534632059),
  (20.2394573566622, 9.10885792418356, 0.419905604670527),
  (16.7174507643465, 4.96175392010899, 0.909078766023541),
  (16.6134204920197, 6.85428073674223, 0.385077665186452),
  (16.4399120506886, 4.07569543444547, 0.0398269943588243),
  (20.7277898856154, 7.11837417172072, 0.045170907515773),
  (18.3328925014211, 6.42562768872913, 0.0628655727760853),
  (19.7834077451333, 4.84874010154445, 0.897026432737821),
  (16.6405820402794, 7.20429563678228, 0.0355008746042421),
  (17.0307870298534, 4.20752710163814, 0.483185828688947),
  (20.4277019844568, 9.50064548828426, 0.987873641636674),
  (18.3545218904247, 7.20332513403992, 0.839462504432239),
  (17.5352882241046, 9.41151273792512, 0.837299915831813),
  (19.2876301684972, 8.95079307691612, 0.249665387460154),
  (16.7854722613188, 6.04648865140389, 0.503966159394644),
  (16.7791027614333, 5.740163282786, 0.230881222241061),
  (19.3842521133687, 4.57209286713675, 0.821899720197282),
  (14.2335355134821, 8.84103305277958, 0.586217883578085),
  (14.7771505429623, 8.97292745115066, 0.973345783939925),
  (17.5688039236874, 9.91428066743544, 0.982989458317116),
  (18.1631342440174, 9.95998654793151, 0.703148043286015),
  (15.2287264022784, 7.59697524434447, 0.010027514955259),
  (18.9012601893602, 8.39123388649215, 0.115522562980719),
  (14.492430232027, 9.07246781237697, 0.168906477906117),
  (19.4425400244451, 5.79525940396511, 0.344361421990175),
  (16.1428904797979, 4.9545762455556, 0.642112653048244),
  (17.4126107925001, 9.44184331432352, 0.303384308991431),
  (16.850599081419, 8.62126396015161, 0.647112539921562),
  (16.6552013619814, 9.89446180014701, 0.214330998449769),
  (20.3170989371247, 6.48005979346494, 0.549375995380412),
  (16.5586505804776, 4.26878170736264, 0.78560788762258),
  (18.7866474751641, 4.48102183395853, 0.760394316730215),
  (19.7457007904787, 5.68916867419396, 0.159061062018409),
  (14.0628429278892, 4.81081287643499, 0.619869266584996),
  (19.1030042989311, 9.8937367444571, 0.239605890280499),
  (16.2515064793351, 9.27109728305131, 0.673652494092),
  (14.5132049552548, 9.23767560699906, 0.603865775914055),
  (19.6993317711958, 6.84011651716607, 0.801757336552046),
  (20.3363429367909, 8.6494153824439, 0.662585597813545),
  (15.6338890377391, 9.82123274389733, 0.584886545789265),
  (14.0294687131766, 8.03863492443605, 0.761336028858568),
  (20.0966663990468, 7.74201927818488, 0.366856835681479),
  (20.8568164716116, 7.77737338950946, 0.409915627629077),
  (18.0284423347085, 9.02416338962615, 0.409015246208295),
  (14.6196835648154, 7.41335684992457, 0.107095072415976),
  (15.7787101870698, 4.83114547181184, 0.676303887639591),
  (19.9753818583311, 7.26333941944423, 0.676190986342557),
  (18.7928305193707, 7.57104603978094, 0.717616754887866),
  (18.7913195547018, 4.51809033109622, 0.114117536339338),
  (14.1554886024965, 7.50607300025017, 0.447386727228027),
  (18.0779089420742, 5.09635340921555, 0.102482328143158),
  (15.1239737065013, 6.87713372382273, 0.217724298550511),
  (14.6100387132797, 4.89432239919546, 0.0396055615635472),
  (19.5461511099522, 9.20351943475218, 0.38472117221136),
  (19.9074630524185, 6.57570021903499, 0.239981270008865),
  (18.5422221444247, 4.41393111277127, 0.701621668079514),
  (14.4424042039113, 5.15786824397891, 0.452439593844786),
  (17.1031523960622, 9.68073552118357, 0.344886259643626),
  (16.7717713579607, 8.08608115359829, 0.509633898607324),
  (14.1595730729858, 7.22626969505121, 0.260443458459567),
  (18.0594381937543, 7.10899109827046, 0.294835711932412),
  (19.1685217770829, 9.87656857736293, 0.465643349893974),
  (16.4518464498276, 6.2064856681592, 0.197519247588994),
  (15.8300910871328, 8.97249997194805, 0.771976208416023),
  (14.9135813376226, 6.17824169328859, 0.451619846009771),
  (20.8039243932649, 7.82965781645469, 0.699436849532013),
  (15.4495892179529, 8.51484486220857, 0.319332670865505),
  (17.7719020811821, 9.9454842244627, 0.209424674478523),
  (15.3741570560084, 5.19789369693244, 0.00052145577629914),
  (18.424429349701, 8.00806766139929, 0.672239617358805),
  (19.0118285538188, 5.24253212409696, 0.783529427434992),
  (20.2066755815548, 6.40715673604919, 0.479681034941624),
  (18.6387219851881, 8.26580833748471, 0.0867031225844468),
  (18.787697474683, 9.91681176824387, 0.288428765104765),
  (18.9042934970107, 5.0457135354497, 0.999436849532013),
  (18.8201412909318, 5.0616490091087, 0.947968103494162),
  (18.5065198215592, 5.16189369691571, 0.719332670865506),
  (18.6065198290162, 5.12879438833783, 0.74731121690022),
  (18.4078824126734, 5.19260981683374, 0.707161853183784),
  (18.109816373469, 5.26770981678337, 0.966706494867673),
  (18.009816373461, 5.29977833732523, 0.942851900589568),
  (16.6788241267348, 4.82373252313878, 0.321723395182745),
  (19.4053833161557, 6.12863570836574, 0.61088857759278),
  (17.4203632237873, 7.05139676189968, 0.487622560338325),
  (20.0248957512294, 8.61133373896888, 0.665076567758917),
  (19.8890796141555, 9.66479065098366, 0.948533841464032),
  (17.7320565758826, 4.61040963768288, 0.64731121690022),
  (15.3154033090391, 9.83594321179182, 0.466757763312435),
  (17.7512877324238, 8.72411100894909, 0.511681413757901),
  (15.8920651982919, 4.79514540555577, 0.438577973748585),
  (15.6251511331616, 8.84162763469901, 0.551310823029412),
  (15.4159380276506, 9.35275683834228, 0.275429991805147),
  (18.6607310817554, 9.14637558475488, 0.585400550420447),
  (17.6857531407045, 4.63864124291849, 0.772536106543066),
  (16.5210120625444, 8.52617740346766, 0.334603243904965),
  (14.264981637347, 8.17105082304714, 0.536426154859166),
  (20.742485604123, 9.97491279250994, 0.46896260407905),
  (20.8264475390627, 6.57354175721661, 0.507161853183784),
  (19.7142269344989, 4.14137823205315, 0.966706494867673),
  (17.1227714767351, 9.88583777835037, 0.642851900589568),
  (15.873286447126, 9.53234797879896, 0.132462686196172),
  (18.9559036391679, 4.90607871644234, 0.348325209461866),
  (17.7367782083139, 5.38904184773364, 0.0863294336373429),
  (16.8147802780696, 9.59363198076585, 0.791245161558866),
  (16.1338566237222, 5.33372679574781, 0.851980109062184),
  (18.8276613710978, 8.25386669150998, 0.631224705148792),
  (20.7268079355087, 7.33491631088355, 0.684228274077821),
  (20.5884647322876, 9.96852293079835, 0.0852775057933815),
  (18.7092470159173, 9.84380874004535, 0.324731554468812),
  (14.5491464739225, 4.90036515162344, 0.722996370577809),
  (15.676497959298, 9.84028441743745, 0.967742164073016),
  (16.8483838866324, 4.53758448457562, 0.802980024442015),
  (19.5295808774465, 7.86559543604889, 0.257613902109499),
  (15.0837657814529, 7.75071774499326, 0.12125547435246),
  (20.2398594126608, 6.35832288521687, 0.184119836887249),
  (20.432698355166, 4.07100281771601, 0.848405368276539),
  (15.4636494826589, 7.008195470021, 0.901592729125198),
  (18.0511496452653, 9.6097539933678, 0.211988208636484),
  (17.6258529007341, 9.83566991023567, 0.201279932654726),
  (14.9940216111917, 8.80718687742555, 0.719682846160867),
  (18.6029679735522, 4.46583758825315, 0.858049667616388),
  (17.5022609466665, 9.10687688370805, 0.448189546817396),
  (17.9869797540092, 9.76040648999398, 0.797009989976817),
  (16.953052863676, 6.42132163346196, 0.661101833903077),
  (19.5212045475157, 4.66359363766038, 0.845334348816826),
  (20.22108560576, 9.76059014052998, 0.244551445004826),
  (20.3699689611468, 5.99464171810216, 0.643369231941243),
  (16.6992461680123, 8.66086502768123, 0.488075185767856),
  (20.9773829717446, 4.994787853606, 0.598559496989984),
  (17.5382327161129, 8.5017440875887, 0.804465182357859),
  (14.8022792500157, 4.81945017744189, 0.0351746528085691),
  (15.8839820586088, 8.79395323265829, 0.634911113048319),
  (16.3638199852121, 5.91195221929119, 0.185960863296543),
  (20.3102554686343, 7.58096871396481, 0.443596115170291),
  (20.3143199886366, 8.83912178689017, 0.205169721252597),
  (14.4085276314017, 4.76794286820205, 0.802368850635331),
  (16.4320647471171, 7.6256191375054, 0.282407359917214),
  (15.6401841766749, 7.72593907172, 0.506110878169321),
  (15.7606285058773, 9.48386004954103, 0.112496814616403),
  (18.306977034464, 9.20119377615715, 0.0879877730418316),
  (19.8392233383153, 7.14779057645553, 0.0516466577267024),
  (19.0400897886468, 9.94426673390045, 0.957202621251811),
  (14.9630345277469, 7.30698014445097, 0.0783823429459989),
  (17.8719807142165, 6.0135831105783, 0.542210606595412),
  (18.082065213982, 7.70706302316409, 0.23398293940748),
  (15.6384396783769, 9.36626411572652, 0.0976501586473481),
  (15.9812165358226, 5.07695008212883, 0.484802087437615),
  (19.4401861678733, 5.19887342654827, 0.872310268087383),
  (20.903857033834, 5.10513813708296, 0.331436785733478),
  (18.1010572381195, 4.34769360559746, 0.193520561859986),
  (14.0451808411544, 8.15632971845775, 0.147498339872538),
  (15.3423601908993, 5.74385772165396, 0.380268993827013),
  (18.2192365314027, 4.26659624630871, 0.803858309058704),
  (20.7658714943665, 5.44698096194169, 0.987827802524711),
  (16.5891944679177, 6.00305467923644, 0.219454297959618),
  (18.0737861169431, 4.19478482152323, 0.458699288299582),
  (17.7994647991384, 5.75864259384899, 0.332747893727349),
  (16.8898609745327, 6.33675833754162, 0.599658561960541),
  (16.6915295294031, 8.38399637449687, 0.782176513278184),
  (18.5663033700591, 5.20724574044667, 0.717318881294775),
  (16.7837843473007, 8.19394553697761, 0.320035531924108),
  (17.2677956644498, 4.59901357379384, 0.985789234870369),
  (18.5673085723147, 7.57333897497883, 0.630237476231728),
  (16.2271308017976, 5.46809656808804, 0.252030471192013),
  (20.6493805573043, 9.29079667702789, 0.930049658893345),
  (15.4051197448526, 7.2186005446034, 0.840738836289563),
  (18.025306360543, 8.91831944253284, 0.141713149081903),
  (19.3935581445573, 8.81959527480564, 0.984501310309885),
  (19.7785314417777, 7.45375977743349, 0.625071801235249),
  (17.0903917994316, 4.193585013325, 0.950926702015272),
  (14.969688480445, 7.22185420460319, 0.882105877820519),
  (17.7447286466266, 7.88780617820399, 0.340067494326275),
  (18.7937623817788, 9.99266799231286, 0.539715037060623),
  (16.9175356578661, 6.24466565434792, 0.227621933283926),
  (14.0655956908841, 8.23457425395347, 0.657432508319141),
  (15.8289943269764, 7.00798012935856, 0.473228896787696),
  (15.5470867394565, 4.8020233595333, 0.379058203155644),
  (20.2003202493182, 5.44265409529563, 0.768123651190487),
  (19.6814516933813, 4.63975773724373, 0.0178288087547238),
  (14.9036373559784, 6.67715302574492, 0.774875888322773),
  (18.8077494336189, 5.94146251587449, 0.436710056059616),
  (20.1111278241428, 5.66892915128106, 0.849516533106682),
  (18.7369551983404, 9.12152813937329, 0.986601204267153),
  (19.2669656739748, 7.3727741380086, 0.424383699005087),
  (14.9523587217891, 5.11227754980112, 0.703799966284744),
  (15.5557409782028, 5.89570246031986, 0.912665578576046),
  (15.388490893006, 9.56505843347527, 0.327411788489923),
  (14.8612015459632, 6.94357031821749, 0.618042341600984),
  (15.9095135542319, 4.9502018475591, 0.0420322532847331),
  (16.0727642051436, 7.88467914874529, 0.875599216307415),
  (20.5752661918839, 8.09430375773411, 0.880357350591246),
  (18.1231523256912, 8.04671279274558, 0.755346292133226),
  (17.7174653465154, 9.92049734208693, 0.391777498634398),
  (14.5146749763219, 5.43123144620788, 0.472618180484458),
  (15.7058377437905, 7.51430732577881, 0.396743051771478),
  (18.3647066276993, 5.4172126128109, 0.374747583388952),
  (19.2632875540006, 7.96236180283879, 0.780707289446982),
  (16.1668383666375, 5.52505082660393, 0.943162941892976),
  (20.5008734133614, 7.72331113384042, 0.162258533087917),
  (16.0309785568404, 4.31207968470905, 0.330594561734224),
  (14.2205081385173, 7.08394025534949, 0.602859372515564),
  (14.9677941462107, 6.59306606626702, 0.0872445604924984),
  (17.029282225891, 7.04956762548139, 0.643402529345905),
  (16.8840771398718, 5.30706762248303, 0.847443606453713),
  (14.8832214008299, 4.38879256168778, 0.99684724995123),
  (15.4509017918337, 5.66818205846676, 0.91033810146046),
  (14.1812522714127, 9.89111921328401, 0.0265018015257299),
  (15.9845566356038, 8.30318455772527, 0.374267661764771),
  (19.2023375162335, 5.97921044480968, 0.810477011299997),
  (19.7744943221528, 7.59910996138196, 0.43167345821673),
  (14.5900359198911, 5.63073024295539, 0.896129575377441),
  (18.7530995203426, 4.90749641439094, 0.112093500831289),
  (16.5829072254157, 4.97852290452156, 0.754277137690784),
  (14.2124571704908, 6.96112969625079, 0.658321713863943),
  (19.4244963190705, 7.30399789523953, 0.103713241571896),
  (18.7721022655518, 5.66432241376335, 0.419183430560566),
  (19.2132384344779, 9.0264919684763, 0.400094453090816),
  (19.740023915802, 9.89140209437036, 0.534268621974034),
  (17.9078293695389, 9.35972592088164, 0.774539115820307),
  (15.5614925030513, 4.42269056353666, 0.785063651977481),
  (14.0550912560734, 4.52940639981309, 0.125389432738382),
  (17.4204437276928, 4.21646355767317, 0.823931443320296),
  (20.9085386870685, 6.85298424717986, 0.252995137865804),
  (17.6888302820895, 4.90832081268337, 0.438611183573318),
  (19.9861057441174, 5.974844201002, 0.662539947017491),
  (19.0547664171833, 7.11788637310053, 0.344493723653163),
  (16.1545577139307, 7.07353221989149, 0.145276365585154),
  (20.5672921491154, 9.45960933326373, 0.164574558898071),
  (16.22441839529, 9.97334147980343, 0.439049364418046),
  (17.1076437760473, 9.1091140433816, 0.00144599666562995),
  (17.6790368767319, 9.26728799724375, 0.642331103365477),
  (18.0651141004142, 6.21668958413385, 0.323756475858088),
  (16.1284835684372, 4.98871106038849, 0.115121319004498),
  (14.1106979641303, 5.91056281221479, 0.520728649009163),
  (16.1126433626564, 5.55724246777817, 0.694418133877124),
  (18.6195144369961, 5.27832173932962, 0.424982804317419),
  (20.2212748243358, 5.66954435559301, 0.384298181736593),
  (15.1513836478351, 9.44327873381879, 0.460436474636706),
  (16.5708713346874, 6.71490261730552, 0.630688905638353),
  (15.7819203289768, 7.00213567730256, 0.428333784654202),
  (15.6335973390006, 4.66216690816287, 0.660625238025199),
  (17.7357436197891, 9.82847496581993, 0.0552464630525538),
  (15.7016424374012, 4.17768857276566, 0.246408963738679),
  (19.8047484554267, 8.33503554115101, 0.143559012724475),
  (14.8496139955129, 7.20371648855543, 0.0445504856684165),
  (14.0157805068086, 8.35336241762629, 0.752088448745111),
  (17.5450402704176, 8.24655031060775, 0.497178543924846),
  (16.4953165266402, 7.17351391753714, 0.860499693104398),
  (20.703165978913, 8.34932492168779, 0.383412792874712),
  (16.224889283421, 8.45201651793398, 0.246610617909403),
  (17.4418573290981, 6.98911222254801, 0.578320521273833),
  (14.9630019207924, 6.36555285409344, 0.799691049853342),
  (16.9792777904007, 4.30217515612064, 0.359017034811556),
  (20.1849774575123, 9.55681772238435, 0.972686341925448),
  (15.2668475924402, 7.45342037073418, 0.457461169627765),
  (17.3055106811129, 9.62833494755854, 0.237694180164435),
  (14.1571510714595, 4.36230727465851, 0.242723423118198),
  (20.8037959801776, 9.6891102331836, 0.453956671187427),
  (14.7350142898994, 5.64086365169507, 0.984043720290444),
  (17.0539066523645, 5.46195241326776, 0.745058324165415),
  (20.224276207347, 7.4480565633585, 0.446833006544693),
  (20.194230130201, 7.65720657028235, 0.877567358588805)
)


#let cover-bg(school-color) = canvas({
  let page-w = 21
  let page-h = 29.7
  // TikZ very thick = 0.42mm

  // right lines
  for i in range(1, 35) {
    draw.line(
      (14.015, 6.4+i*4.128/35-0.025), (page-w, 4.429+i*4.128/35-0.025),
      stroke: school-color + 0.42mm
    )
  }

  // middle lines
  for i in range(1, 17) {
    draw.line(
      (7.02, 10.528+i*4.128/35-0.025), (14, 8.556+i*4.128/35-0.025),
      stroke: school-color + 0.42mm
    )
  }

  // middle lines edge mask
  draw.rect(
    (13.995, 8.56), (14.1, 10.5),
    fill: white, stroke: 0pt
  )

  // right white mask
  draw.line(
    (14, 6.4), (14, 10.8), (page-w, 10.8), (page-w, 8.556),
    close: true, fill: white, stroke: 0pt
  )

  // middle fading mask
  draw.rect(
    (7, 9.5), (14.005, 12.5), stroke: 0pt, fill: gradient.linear(dir: ttb,
      white, white, white, white.transparentize(100%)
    )
  )

  // polygon
  draw.line(
    (-1, 0), (-1, 12.7817142857), (14, 8.556), (14, 6.4), (page-w, 4.4281), (page-w, 0),
    close: true, fill: school-color, stroke: 0pt
  )

  // points
  let fade-factor = .9
  for (x, y, opacity) in cover-points {
    let norm-y = (y - 4)/6 // min y = 4, max y = 10
    draw.circle(
      (x, y), radius: .5pt, stroke: 0pt,
      fill: school-color.transparentize(
        100% - opacity*100%
      )
    )
  }

  // points fading mask
  draw.rect(
    (14, 8.556), (page-w, 10.05), stroke: 0pt, fill: gradient.linear(dir: ttb,
      white, white.transparentize(100%)
    )
  )
})

