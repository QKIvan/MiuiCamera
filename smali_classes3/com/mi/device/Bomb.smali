.class public final Lcom/mi/device/Bomb;
.super Lcom/mi/device/Atom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Atom;-><init>()V

    return-void
.end method


# virtual methods
.method public Oooo0o0()[I
    .locals 0

    const/16 p0, 0x8

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x27ac40
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data
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

    const-string p0, "macro:wide:ultra_wide:tele:sat"

    return-object p0
.end method

.method public o000O0O0()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o000O0o0()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.6:1:3:5:10;capture_ruler:4:10:10:5"

    return-object p0
.end method

.method public o000OO0O()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:3.0;"

    return-object p0
.end method

.method public o000Oo00()Ljava/lang/String;
    .locals 0

    const-string p0, "3"

    return-object p0
.end method

.method public o00o00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOO0()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:ultra_wide:pro:capture_intent"

    return-object p0
.end method

.method public o0O0oO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oOo0()Z
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

.method public o0OoOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oO0O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
