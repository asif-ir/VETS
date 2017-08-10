/**
 * Created by vijayn on 8/9/2017.
 */
// SuperPie
// Pie Charts made easy
// www.GraphsCharts.com
function createPieCharts(used_vehicle,new_vehicle) {
    /* var labels = new Array('Otters', 'Badgers', 'Stoats', 'Bears');
     var values = new Array(7.3, 4.2, 4.1, 3.6);
     var colors = new Array('#EAA83A', '#FEC56B', '#51C5D4', '#89DAEF');*/
    console.log("in CreatePieCharts");
    var labels = new Array('New','Used');
    var values = new Array(new_vehicle, used_vehicle);
    var colors = new Array('#EAA83A', '#51C5D4');
    drawPie(labels, values, colors, 'cPie1');
}
function drawPie(e, t, n, r, i) {
    var s = 12;
    var o = 8;
    var u = 12;
    var a = 1;
    var f = 2;
    var l = 0;
    console.log(i);
    console.log(e);
    console.log(t);
    console.log(n);
    console.log(r);
    if (i != undefined) {
        if (i.pad != undefined) {
            s = i.pad
        }
        if (i.padLegend != undefined) {
            o = i.padLegend
        }
        if (i.textSize != undefined) {
            u = i.textSize
        }
        if (i.legendBorder != undefined) {
            a = i.legendBorder
        }
        if (i.pieBorder != undefined) {
            f = i.pieBorder
        }
        if (i.donut != undefined) {
            l = i.donut
        }
    }
    var c = document.getElementById(r);
    var h = c.getContext("2d");
    h.lineWidth = f;
    h.font = u + "px sans-serif";
    h.textBaseline = "bottom";
    var p = getTotal(t);
    var d = getLegendWidth(e, h);
    var v = c.width;
    var m = c.height;
    var g = v - (d + s * 3 + u + o * 3);
    var y = m - s * 2;
    var b = Math.min(g, y) / 2;
    var w = s + b;
    var E = s + b;
    drawWedges(h, p, t, n, b, w, E);
    drawLabels(h, e, n, s, b, u, o, a, d);
    drawDonut(h, l, w, E, f)
}
function drawDonut(e, t, n, r, i) {
    if (t > 0) {
        e.beginPath();
        e.arc(n, r, t, 0, 2 * Math.PI, false);
        e.fillStyle = "#ffffff";
        e.fill();
        e.lineWidth = i;
        e.strokeStyle = "#000000";
        e.stroke()
    }
}
function drawLabels(e, t, n, r, s, o, u, a, f) {
    var l = o * .75;
    var c = (r + s + u) * 2 + l;
    var h = c - (l + u);
    e.lineWidth = 1;
    for (i = 0; i < t.length; i++) {
        var p = r + u + o * (i + 1) + o * i * .2;
        var d = p - o;
        e.fillStyle = "#fff";
        e.fillText(t[i], c, p);
        e.fillStyle = n[i];
        e.fillRect(h, d, l, l)
    }
    if (a == 1) {
        var v = Math.round((r + s) * 2) - .5;
        var m = r - .5;
        var g = Math.round(t.length * o + (t.length - 1) * o * .2 + u * 2);
        e.strokeRect(v, m, Math.round(f + l + u * 3), g)
    }
}
function drawWedges(e, t, n, r, s, o, u) {
    var a = 1.5;
    var f = 0;
    for (i = 0; i <= n.length; i++) {
        e.beginPath();
        f = getAngle(n[i], t, a);
        e.arc(o, u, s, a * Math.PI, f * Math.PI);
        e.lineTo(o, u);
        e.fillStyle = r[i];
        e.fill();
        e.closePath();
        e.stroke();
        a = f
    }
}
function getLegendWidth(e, t) {
    var n = 0;
    for (i = 0; i < e.length; i++) {
        n = Math.max(n, t.measureText(e[i]).width)
    }
    return n
}
function getAngle(e, t, n) {
    var r = n + e / t * 2;
    if (r > 2) {
        r -= 2
    }
    return r
}
function getTotal(e) {
    var t = 0;
    for (i = 0; i < e.length; i++) {
        t += e[i]
    }
    return t
}