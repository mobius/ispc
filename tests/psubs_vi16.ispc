
export uniform int width() { return programCount; }

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    varying int16 a_max = 32767, a_min = -32768; // max and min signed int16
    if (programIndex % 3 == 0) {
        RET[programIndex] = saturating_sub(a_min, b);
    }
    else if (programIndex % 3 == 1) {
        RET[programIndex] = saturating_sub(a_max, -b);
    }
    else {
        RET[programIndex] = saturating_sub(a_max, b);
    } 
}

export void result(uniform float RET[]) {
    if (programIndex % 3 == 0) {
        RET[programIndex] = (varying int16) -32768;
    }
    else if (programIndex % 3 == 1) {
        RET[programIndex] = (varying int16) 32767;
    }
    else {
        RET[programIndex] = (varying int16) 32762;
    } 
}
