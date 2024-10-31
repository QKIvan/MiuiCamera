.class public Lcom/mi/device/Earth;
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

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v0, "REDMI"

    const-string v1, "12C"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "POCO"

    const-string v4, "C55"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method public OooOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOoo()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public OooOooO()I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public Oooo0OO()Ljava/lang/String;
    .locals 0

    const-string p0, "2.0"

    return-object p0
.end method

.method public Oooo0o()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public Oooo0o0()[I
    .locals 0

    const/16 p0, 0x8

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x400000
        0x1b7740
        0x400100
        0x1e8480
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data
.end method

.method public o0000OO0()Ljava/lang/String;
    .locals 0

    const-string p0, "4:8160x6144"

    return-object p0
.end method

.method public o0000oOO()I
    .locals 0

    const/16 p0, 0x320

    return p0
.end method

.method public o000O0()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public o000O00()Lcom/mi/device/Common$BokehAdjustType;
    .locals 0

    sget-object p0, Lcom/mi/device/Common$BokehAdjustType;->o0000oO0:Lcom/mi/device/Common$BokehAdjustType;

    return-object p0
.end method

.method public o000O0Oo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xa3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xab

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public o000o00()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000o000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000o0OO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000o0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo()Z
    .locals 0

    const/4 p0, 0x1

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

.method public o00O0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0OOO()Z
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

.method public o00OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO0oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOO0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOOOo()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00Oo0oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00Oo0oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOo()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Ooo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO0o()Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public o00oOOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOOo0()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOoO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOoO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo00()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00ooooO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O00()I
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

    const/16 p0, 0x46

    return p0
.end method

.method public o0O0OOO()I
    .locals 0

    const/16 p0, 0xb

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

.method public o0O0oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oooo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OO00OO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OO00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0Ooo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0o0Oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0oOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
