include <BOSL2/std.scad>


module test_turtle() {
    assert_approx(
        turtle([
            "move", 10,
            "ymove", 5,
            "xmove", 5,
            "xymove", [10,15],
            "left", 135,
            "untilx", 0,
            "turn", 90,
            "untily", 0,
            "right", 135,
            "arcsteps", 5,
            "arcright", 15, 30,
            "arcleft", 15, 30,
            "arcsteps", 0,
            "arcrightto", 15, 90,
            "arcleftto", 15, 180,
            "jump", [10,10],
            "xjump", 15,
            "yjump", 15,
            "angle", 30,
            "length", 15,
            "right",
            "move",
            "scale", 2,
            "left",
            "move",
            "addlength", 5,
            "repeat", 3, ["move"],
        ], $fn=24),
        [[0,0],[10,0],[10,5],[15,5],[25,20],[-3.5527136788e-15,45],[-45,0],[-44.8716729206,1.9578928833],[-44.4888873943,3.88228567654],[-43.8581929877,5.74025148548],[-42.9903810568,7.5],[-42.1225691259,9.25974851452],[-41.4918747192,11.1177143235],[-41.1090891929,13.0421071167],[-40.9807621135,15],[-41.0157305757,16.0236362005],[-41.120472923,17.0424997364],[-41.2945007983,18.0518401958],[-41.5370028033,19.0469515674],[-41.8468482818,20.0231941826],[-42.222592591,20.9760163477],[-42.6624838375,21.900975566],[-43.1644710453,22.7937592505],[-43.7262137184,23.6502048317],[-44.345092753,24.4663191649],[-45.0182226494,25.2382971483],[-45.7424649653,25.9625394642],[-46.5144429486,26.6356693606],[-47.3305572818,27.2545483952],[-48.187002863,27.8162910682],[-49.0797865476,28.318278276],[-50.0047457658,28.7581695226],[-50.957567931,29.1339138318],[-51.9338105462,29.4437593102],[-52.9289219177,29.6862613152],[-53.9382623771,29.8602891905],[-54.9571259131,29.9650315379],[-55.9807621135,30],[10,10],[15,10],[15,15],[2.00961894323,22.5],[-27.9903810568,22.5],[-62.9903810568,22.5],[-97.9903810568,22.5],[-132.990381057,22.5]]
    );
}
test_turtle();


module test_arc() {
    assert_approx(arc(N=8, d=100, angle=135, cp=[10,10]), [[60,10],[57.1941665154,26.5139530978],[49.0915741234,41.1744900929],[36.6016038258,52.3362099614],[21.1260466978,58.7463956091],[4.40177619483,59.6856104947],[-11.6941869559,55.0484433951],[-25.3553390593,45.3553390593]]);
    assert_approx(arc(N=8, d=100, angle=[45,225], cp=[10,10]), [[45.3553390593,45.3553390593],[26.5139530978,57.1941665154],[4.40177619483,59.6856104947],[-16.6016038258,52.3362099614],[-32.3362099614,36.6016038258],[-39.6856104947,15.5982238052],[-37.1941665154,-6.51395309776],[-25.3553390593,-25.3553390593]]);
    assert_approx(arc(N=8, d=100, start=45, angle=135, cp=[10,10]), [[45.3553390593,45.3553390593],[31.6941869559,55.0484433951],[15.5982238052,59.6856104947],[-1.12604669782,58.7463956091],[-16.6016038258,52.3362099614],[-29.0915741234,41.1744900929],[-37.1941665154,26.5139530978],[-40,10]]);
    assert_approx(arc(N=8, d=100, start=45, angle=-90, cp=[10,10]), [[45.3553390593,45.3553390593],[52.3362099614,36.6016038258],[57.1941665154,26.5139530978],[59.6856104947,15.5982238052],[59.6856104947,4.40177619483],[57.1941665154,-6.51395309776],[52.3362099614,-16.6016038258],[45.3553390593,-25.3553390593]]);
    assert_approx(arc(N=8, width=100, thickness=30), [[50,-3.5527136788e-15],[39.5300788555,13.9348601124],[25.3202618476,24.0284558904],[8.71492362453,29.3258437015],[-8.71492362453,29.3258437015],[-25.3202618476,24.0284558904],[-39.5300788555,13.9348601124],[-50,-1.42108547152e-14]]);
    assert_approx(arc(N=8, cp=[10,10], points=[[45,45],[-25,45]]), [[45,45],[36.3342442379,51.9107096148],[26.3479795075,56.7198412457],[15.5419588213,59.1862449514],[4.45804117867,59.1862449514],[-6.34797950747,56.7198412457],[-16.3342442379,51.9107096148],[-25,45]]);
    assert_approx(arc(N=24, cp=[10,10], points=[[45,45],[-25,45]], long=true), [[45,45],[51.3889035257,37.146982612],[56.0464336973,28.1583574081],[58.7777575294,18.4101349813],[59.4686187624,8.31010126292],[58.0901174104,-1.71924090789],[54.6999187001,-11.2583458482],[49.4398408296,-19.9081753929],[42.5299224539,-27.3068913894],[34.2592180667,-33.1449920477],[24.9737063235,-37.1782589647],[15.0618171232,-39.2379732261],[4.93818287676,-39.2379732261],[-4.97370632349,-37.1782589647],[-14.2592180667,-33.1449920477],[-22.5299224539,-27.3068913894],[-29.4398408296,-19.9081753929],[-34.6999187001,-11.2583458482],[-38.0901174104,-1.71924090789],[-39.4686187624,8.31010126292],[-38.7777575294,18.4101349813],[-36.0464336973,28.1583574081],[-31.3889035257,37.146982612],[-25,45]]);
    assert_approx(arc($fn=24, cp=[10,10], points=[[45,45],[-25,45]], long=true), [[45,45],[53.2421021636,34.0856928585],[58.1827254512,21.3324740498],[59.4446596304,7.71403542491],[56.9315576496,-5.72987274525],[50.8352916125,-17.9728253654],[41.6213035891,-28.0800887515],[29.9930697126,-35.2799863457],[16.8383906815,-39.0228152281],[3.16160931847,-39.0228152281],[-9.9930697126,-35.2799863457],[-21.6213035891,-28.0800887515],[-30.8352916125,-17.9728253654],[-36.9315576496,-5.72987274525],[-39.4446596304,7.71403542491],[-38.1827254512,21.3324740498],[-33.2421021636,34.0856928585],[-25,45]]);
}
test_arc();


module test_rect() {
    assert_equal(rect(100,anchor=CENTER), [[50,-50],[-50,-50],[-50,50],[50,50]]);
    assert_equal(rect(100), [[100,0],[0,0],[0,100],[100,100]]);
    assert_equal(rect([100,80]), [[100,0],[0,0],[0,80],[100,80]]);
    assert_equal(rect([100,80],anchor=CENTER), [[50,-40],[-50,-40],[-50,40],[50,40]]);
    assert_equal(rect([100,80],anchor=FRONT+LEFT), [[100,0],[0,0],[0,80],[100,80]]);
    assert_equal(rect([100,80],anchor=BACK+RIGHT), [[0,-80],[-100,-80],[-100,0],[0,0]]);
    assert_approx(rect([100,80],rounding=10,anchor=CENTER,$fn=12), [[50,-30],[48.6602540378,-35],[45,-38.6602540378],[40,-40],[-40,-40],[-45,-38.6602540378],[-48.6602540378,-35],[-50,-30],[-50,30],[-48.6602540378,35],[-45,38.6602540378],[-40,40],[40,40],[45,38.6602540378],[48.6602540378,35],[50,30]]);
}
test_rect();


module test_trapezoid() {
    assert_equal(trapezoid(w1=100,w2=80,h=60,anchor=CENTER), [[50,-30],[-50,-30],[-40,30],[40,30]]);
}
test_trapezoid();


module test_oval() {
    assert_approx(oval(d=100,$fn=24), [[50,0],[48.2962913145,-12.9409522551],[43.3012701892,-25],[35.3553390593,-35.3553390593],[25,-43.3012701892],[12.9409522551,-48.2962913145],[0,-50],[-12.9409522551,-48.2962913145],[-25,-43.3012701892],[-35.3553390593,-35.3553390593],[-43.3012701892,-25],[-48.2962913145,-12.9409522551],[-50,0],[-48.2962913145,12.9409522551],[-43.3012701892,25],[-35.3553390593,35.3553390593],[-25,43.3012701892],[-12.9409522551,48.2962913145],[0,50],[12.9409522551,48.2962913145],[25,43.3012701892],[35.3553390593,35.3553390593],[43.3012701892,25],[48.2962913145,12.9409522551]]);
    assert_approx(oval(d=[100,80],$fn=24), [[50,0],[48.2962913145,-10.3527618041],[43.3012701892,-20],[35.3553390593,-28.2842712475],[25,-34.6410161514],[12.9409522551,-38.6370330516],[0,-40],[-12.9409522551,-38.6370330516],[-25,-34.6410161514],[-35.3553390593,-28.2842712475],[-43.3012701892,-20],[-48.2962913145,-10.3527618041],[-50,0],[-48.2962913145,10.3527618041],[-43.3012701892,20],[-35.3553390593,28.2842712475],[-25,34.6410161514],[-12.9409522551,38.6370330516],[0,40],[12.9409522551,38.6370330516],[25,34.6410161514],[35.3553390593,28.2842712475],[43.3012701892,20],[48.2962913145,10.3527618041]]);
}
test_oval();


module test_star() {
    assert_approx(star(n=5,d=100,step=2), [[50,0],[15.4508497187,-11.2256994145],[15.4508497187,-47.5528258148],[-5.90169943749,-18.1635632001],[-40.4508497187,-29.3892626146],[-19.0983005625,0],[-40.4508497187,29.3892626146],[-5.90169943749,18.1635632001],[15.4508497187,47.5528258148],[15.4508497187,11.2256994145]]);
    assert_approx(star(n=6,d=100,step=2), [[50,0],[25,-14.4337567297],[25,-43.3012701892],[0,-28.8675134595],[-25,-43.3012701892],[-25,-14.4337567297],[-50,0],[-25,14.4337567297],[-25,43.3012701892],[0,28.8675134595],[25,43.3012701892],[25,14.4337567297]]);
    assert_approx(star(n=7,d=100,step=3), [[50,0],[16.0776033027,-7.74256568183],[31.1744900929,-39.0915741234],[3.97084009243,-17.3973871675],[-11.1260466978,-48.7463956091],[-11.1260466978,-13.951621274],[-45.0484433951,-21.6941869559],[-17.8447933946,0],[-45.0484433951,21.6941869559],[-11.1260466978,13.951621274],[-11.1260466978,48.7463956091],[3.97084009243,17.3973871675],[31.1744900929,39.0915741234],[16.0776033027,7.74256568183]]);
}
test_star();


module test_regular_ngon() {
    assert_approx(regular_ngon(n=7,d=100), [[50,0],[31.1744900929,-39.0915741234],[-11.1260466978,-48.7463956091],[-45.0484433951,-21.6941869559],[-45.0484433951,21.6941869559],[-11.1260466978,48.7463956091],[31.1744900929,39.0915741234]]);
    assert_approx(regular_ngon(n=9,d=100), [[50,0],[38.3022221559,-32.1393804843],[8.68240888335,-49.2403876506],[-25,-43.3012701892],[-46.9846310393,-17.1010071663],[-46.9846310393,17.1010071663],[-25,43.3012701892],[8.68240888335,49.2403876506],[38.3022221559,32.1393804843]]);
    assert_approx(regular_ngon(n=5,d=100,rounding=10,$fn=24), [[47.4207962323,2.07911690818],[47.4207962323,-2.07911690818],[45.7294901688,-5.87785252292],[19.72135955,-41.6749732918],[16.6311896062,-44.4573748068],[12.6764742389,-45.7423397226],[8.5410196625,-45.3076859319],[-33.5410196625,-31.6344024975],[-37.1421557823,-29.5552855893],[-39.5863042952,-26.1912037653],[-40.4508497187,-22.1238373346],[-40.4508497187,22.1238373346],[-39.5863042952,26.1912037653],[-37.1421557823,29.5552855893],[-33.5410196625,31.6344024975],[8.5410196625,45.3076859319],[12.6764742389,45.7423397226],[16.6311896062,44.4573748068],[19.72135955,41.6749732918],[45.7294901688,5.87785252292]]);
}
test_regular_ngon();


module test_pentagon() {
    assert_approx(pentagon(d=100), [[50,0],[15.4508497187,-47.5528258148],[-40.4508497187,-29.3892626146],[-40.4508497187,29.3892626146],[15.4508497187,47.5528258148]]);
    assert_approx(pentagon(d=100,rounding=10,$fn=24), [[47.4207962323,2.07911690818],[47.4207962323,-2.07911690818],[45.7294901688,-5.87785252292],[19.72135955,-41.6749732918],[16.6311896062,-44.4573748068],[12.6764742389,-45.7423397226],[8.5410196625,-45.3076859319],[-33.5410196625,-31.6344024975],[-37.1421557823,-29.5552855893],[-39.5863042952,-26.1912037653],[-40.4508497187,-22.1238373346],[-40.4508497187,22.1238373346],[-39.5863042952,26.1912037653],[-37.1421557823,29.5552855893],[-33.5410196625,31.6344024975],[8.5410196625,45.3076859319],[12.6764742389,45.7423397226],[16.6311896062,44.4573748068],[19.72135955,41.6749732918],[45.7294901688,5.87785252292]]);
}
test_pentagon();


module test_hexagon() {
    assert_approx(hexagon(d=100), [[50,0],[25,-43.3012701892],[-25,-43.3012701892],[-50,0],[-25,43.3012701892],[25,43.3012701892]]);
    assert_approx(hexagon(d=100,rounding=10,$fn=24), [[48.3010721463,1.73648177667],[48.3010721463,-1.73648177667],[47.1132486541,-5],[27.8867513459,-38.3012701892],[25.654373405,-40.9617146204],[22.6466987414,-42.6981963971],[19.2264973081,-43.3012701892],[-19.2264973081,-43.3012701892],[-22.6466987414,-42.6981963971],[-25.654373405,-40.9617146204],[-27.8867513459,-38.3012701892],[-47.1132486541,-5],[-48.3010721463,-1.73648177667],[-48.3010721463,1.73648177667],[-47.1132486541,5],[-27.8867513459,38.3012701892],[-25.654373405,40.9617146204],[-22.6466987414,42.6981963971],[-19.2264973081,43.3012701892],[19.2264973081,43.3012701892],[22.6466987414,42.6981963971],[25.654373405,40.9617146204],[27.8867513459,38.3012701892],[47.1132486541,5]]);
}
test_hexagon();


module test_octagon() {
    assert_approx(octagon(d=100), [[50,0],[35.3553390593,-35.3553390593],[0,-50],[-35.3553390593,-35.3553390593],[-50,0],[-35.3553390593,35.3553390593],[0,50],[35.3553390593,35.3553390593]]);
    assert_approx(octagon(d=100,rounding=10,$fn=24), [[49.1760779971,0],[48.4148733222,-3.82683432365],[36.9404657371,-31.5285047357],[34.7727382239,-34.7727382239],[31.5285047357,-36.9404657371],[3.82683432365,-48.4148733222],[0,-49.1760779971],[-3.82683432365,-48.4148733222],[-31.5285047357,-36.9404657371],[-34.7727382239,-34.7727382239],[-36.9404657371,-31.5285047357],[-48.4148733222,-3.82683432365],[-49.1760779971,0],[-48.4148733222,3.82683432365],[-36.9404657371,31.5285047357],[-34.7727382239,34.7727382239],[-31.5285047357,36.9404657371],[-3.82683432365,48.4148733222],[0,49.1760779971],[3.82683432365,48.4148733222],[31.5285047357,36.9404657371],[34.7727382239,34.7727382239],[36.9404657371,31.5285047357],[48.4148733222,3.82683432365]]);
}
test_octagon();


/*
module test_teardrop2d() {
}
test_teardrop2d();


module test_glued_circles() {
}
test_glued_circles();


module test_supershape() {
}
test_supershape();


module test_mask2d_chamfer() {
}
test_mask2d_chamfer();


module test_mask2d_cove() {
}
test_mask2d_cove();


module test_mask2d_dovetail() {
}
test_mask2d_dovetail();


module test_mask2d_ogee() {
}
test_mask2d_ogee();


module test_mask2d_rabbet() {
}
test_mask2d_rabbet();


module test_mask2d_roundover() {
}
test_mask2d_roundover();


module test_mask2d_teardrop() {
}
test_mask2d_teardrop();
*/



// vim: expandtab tabstop=4 shiftwidth=4 softtabstop=4 nowrap
