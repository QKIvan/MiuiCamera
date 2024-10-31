.class public Lcom/mi/device/Frost;
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

    const-string v1, "POCO"

    const-string v2, "C40"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "C40+"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

.method public OooOoO0()J
    .locals 2

    const-wide/32 v0, 0x21999a

    return-wide v0
.end method

.method public OooOoo()I
    .locals 0

    const/16 p0, 0x186

    return p0
.end method

.method public OooOooO()I
    .locals 0

    const/16 p0, 0x1a4

    return p0
.end method

.method public Oooo0o()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public Oooo0oO()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public Oooo0oo()I
    .locals 0

    const/16 p0, 0x64

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

.method public Oooooo()I
    .locals 0

    const/16 p0, 0x12c

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

.method public o0000OoO()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o000O0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000O00O()Ljava/lang/String;
    .locals 0

    const-string p0, "MACRO:WIDE:ULTRA_WIDE"

    return-object p0
.end method

.method public o000O0O()[[I
    .locals 3

    const/4 p0, 0x3

    new-array p0, p0, [[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    aput-object v1, p0, v0

    return-object p0

    :array_0
    .array-data 4
        0xcc0
        0x990
    .end array-data

    :array_1
    .array-data 4
        0xcc0
        0x730
    .end array-data

    :array_2
    .array-data 4
        0xcc0
        0x592
    .end array-data
.end method

.method public o000Ooo0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0OO()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o000oOoo()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0O0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0Oo0()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00OO0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOO0O()Z
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

.method public o00o000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o00O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o00Oo()Z
    .locals 0

    const/4 p0, 0x1

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

.method public o00o0o0o()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00oO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo00()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooO0O()Z
    .locals 0

    const/4 p0, 0x1

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

.method public o00ooooO()Z
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

.method public o0O0OOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0oo()Z
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

.method public o0O0oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OO000o()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0OO00O()I
    .locals 0

    const/4 p0, 0x3

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

.method public o0OO00oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OOoooO()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true"

    return-object p0
.end method

.method public o0o0Oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0oO0O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public oo0o0Oo()I
    .locals 0

    const/16 p0, 0x15e

    return p0
.end method

.method public oo0oOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
