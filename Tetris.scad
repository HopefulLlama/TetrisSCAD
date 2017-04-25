length = 20;
cut = 2;
offset = [0, 0, 0];

module Block(l, c, o) {
    s = l - c;
    t = c / 2;
    union() {
        translate([t + o[0], t + o[1], o[2]]) {
            cube([s, s, l], false);
        }
        
        translate([0 + o[0], t + o[1], t + o[2]]) {
            cube([l, s, s], false);
        }
        
        translate([t + o[0], 0 + o[1], t + o[2]]) {
            cube([s, l, s], false);
        }
    }
}

module MultiBlock(l, c, os) {
    for (o = os) {
        Block(l, c, o);
    }
}

module TetrisO(l, c, o) {
    o1 = [o[0] + l, o[1], o[2]];
    o2 = [o[0] + l, o[1] + l , o[2]];
    o3 = [o[0], o[1] + l, o[2]];
    MultiBlock(l, c, [o, o1, o2, o3]);
}

module TetrisI(l, c, o) {
    o1 = [o[0] + l, o[1], o[2]];
    o2 = [o[0] + (l * 2), o[1], o[2]];
    o3 = [o[0] + (l * 3), o[1], o[2]];
    MultiBlock(l, c, [o, o1, o2, o3]);
}

module TetrisS(l, c, o) {
    o1 = [o[0] + l, o[1], o[2]];
    o2 = [o[0] + l, o[1] + l, o[2]];
    o3 = [o[0] + (l * 2), o[1] + l, o[2]];
    MultiBlock(l, c, [o, o1, o2, o3]);
}

module TetrisZ(l, c, o) {
    o1 = [o[0] - l, o[1], o[2]];
    o2 = [o[0] - l, o[1] + l, o[2]];
    o3 = [o[0] - (l * 2), o[1] + l, o[2]];
    MultiBlock(l, c, [o, o1, o2, o3]);
}

module TetrisL(l, c, o) {
    o1 = [o[0] + l, o[1], o[2]];
    o2 = [o[0], o[1] + l, o[2]];
    o3 = [o[0], o[1] + (l * 2), o[2]];
    MultiBlock(l, c, [o, o1, o2, o3]);
}

module TetrisJ(l, c, o) {
    o1 = [o[0] - l, o[1], o[2]];
    o2 = [o[0], o[1] + l, o[2]];
    o3 = [o[0], o[1] + (l * 2), o[2]];
    MultiBlock(l, c, [o, o1, o2, o3]);
}

module TetrisT(l, c, o) {
    o1 = [o[0] - l, o[1] + l, o[2]];
    o2 = [o[0], o[1] + l, o[2]];
    o3 = [o[0] + l, o[1] + l, o[2]];
    MultiBlock(l, c, [o, o1, o2, o3]);
}

//TetrisT(length, cut, offset);