.class public Lcom/mi/device/Haydn;
.super Lcom/mi/device/Common;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0OO()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v1, "REDMI"

    const-string v2, "K40 PRO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "11I"

    const-string v3, "XIAOMI"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOo()Ljava/lang/String;
    .locals 0

    const-string p0, "notelemfnr:1;telesr:1"

    return-object p0
.end method

.method public OooOOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOo0O()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true:4000x3000"

    return-object p0
.end method

.method public OooOoo()I
    .locals 0

    const/16 p0, 0x168

    return p0
.end method

.method public OooOooO()I
    .locals 0

    const/16 p0, 0x190

    return p0
.end method

.method public Oooo()I
    .locals 0

    const p0, 0xc96a80

    return p0
.end method

.method public Oooo00o()I
    .locals 0

    const/16 p0, 0xfa0

    return p0
.end method

.method public Oooo0OO()Ljava/lang/String;
    .locals 0

    const-string p0, "3.2"

    return-object p0
.end method

.method public OoooO00()Ljava/lang/String;
    .locals 0

    const-string p0, "1.44.3"

    return-object p0
.end method

.method public OoooO0O()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v4"

    return-object p0
.end method

.method public OoooOoo()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public Ooooo0o()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public Oooooo()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00000()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public o000000()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method public o000000O()F
    .locals 0

    const/high16 p0, 0x40c00000    # 6.0f

    return p0
.end method

.method public o00000oo()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public o0000OO0()Ljava/lang/String;
    .locals 0

    const-string p0, "2:9248x6944"

    return-object p0
.end method

.method public o0000Oo()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0000Oo0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0000OoO()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o0000o()[F
    .locals 0

    const/4 p0, 0x5

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public o0000o0()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public o0000oO0()[F
    .locals 0

    const/4 p0, 0x5

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x43030000    # 131.0f
        0x439a0000    # 308.0f
        0x44078000    # 542.0f
        0x4433c000    # 719.0f
    .end array-data
.end method

.method public o000O0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000O00()Lcom/mi/device/Common$BokehAdjustType;
    .locals 0

    sget-object p0, Lcom/mi/device/Common$BokehAdjustType;->o0000oO0:Lcom/mi/device/Common$BokehAdjustType;

    return-object p0
.end method

.method public o000O00O()Ljava/lang/String;
    .locals 0

    const-string p0, "sat"

    return-object p0
.end method

.method public o000O0O0()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o000O0o0()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.6:1:2:5:10;capture_ruler:4:10:10:5"

    return-object p0
.end method

.method public o000OO()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->o0000oOo:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o000OO0O()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:2.0;"

    return-object p0
.end method

.method public o000OOo0()[F
    .locals 0

    const/4 p0, 0x5

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method public o000OOoO()[F
    .locals 0

    const/4 p0, 0x5

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x435e0000    # 222.0f
        0x4402c000    # 523.0f
        0x44664000    # 921.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public o000Oo0O()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oo0o()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OoOO()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public o000Ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0OoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->o0000o:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o00o0OOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Ooo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO0o()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public o00oOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oo0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o00ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0O00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00OoO()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0O00o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00o0o()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public o0O00oO0()I
    .locals 0

    const/16 p0, 0x50

    return p0
.end method

.method public o0O0O0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0O0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOO()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public o0O0OOO0()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:capture_intent:ultra_wide:pro"

    return-object p0
.end method

.method public o0O0OOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ultra_wide:wide:front"

    return-object p0
.end method

.method public o0O0oOO()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0O0oOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO00O()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0OO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO00oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0O0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OOO0o()Ljava/lang/String;
    .locals 0

    const-string p0, "90,60"

    return-object p0
.end method

.method public o0OOooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoOoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oO0O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oOo0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oOooo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo000o()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public oo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0o0O0()Ljava/lang/String;
    .locals 0

    const-string p0, "24FPS"

    return-object p0
.end method

.method public oooOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
