.class public Lcom/mi/device/Veux;
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

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v1, "REDMI"

    const-string v2, "NOTE 11E PRO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOTE 11 PRO 5G"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "POCO"

    const-string v4, "X4 PRO 5G"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooOo0O()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true:4184x3138:1080x1440"

    return-object p0
.end method

.method public OooOoO0()J
    .locals 2

    const-wide/32 v0, 0x21999a

    return-wide v0
.end method

.method public OooOoo()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public OooOooO()I
    .locals 0

    const/16 p0, 0x14a

    return p0
.end method

.method public Oooo0o()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public OoooO0O()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v2"

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

.method public o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000000O()F
    .locals 0

    const/high16 p0, 0x41200000    # 10.0f

    return p0
.end method

.method public o00000o0()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public o00000oo()I
    .locals 0

    const p0, 0x81b320

    return p0
.end method

.method public o0000O00()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0000OO0()Ljava/lang/String;
    .locals 0

    const-string p0, "3:12000x9000"

    return-object p0
.end method

.method public o0000OoO()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o0000Ooo()I
    .locals 0

    const/16 p0, 0x143

    return p0
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

.method public o000O000()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public o000O00O()Ljava/lang/String;
    .locals 0

    const-string p0, "MACRO:WIDE:ULTRA_WIDE"

    return-object p0
.end method

.method public o000O0O0()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o000OO()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->o0000o:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o000OO0O()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:2.0;supernight:1.0:2.0"

    return-object p0
.end method

.method public o000Ooo0()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o000o0o()Z
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

.method public o000oo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000ooOO()Z
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

.method public o00O0OoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o0O()Z
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

.method public o00OOOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO0o()Z
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

.method public o00oOoO0()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00ooO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooOO0()Z
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

.method public o00ooo0()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0O00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00o0o()I
    .locals 0

    const/16 p0, 0xc

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

    const-string/jumbo p0, "ultra_wide:macro:pro:capture_intent"

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

.method public o0O0OoOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oOo()Z
    .locals 0

    const/4 p0, 0x1

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

.method public o0O0oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO00oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0OoO()Z
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

.method public o0OO0oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OO0oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OOoooO()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true"

    return-object p0
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

.method public o0ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oooOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
