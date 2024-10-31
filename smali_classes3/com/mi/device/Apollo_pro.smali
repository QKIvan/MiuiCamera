.class public final Lcom/mi/device/Apollo_pro;
.super Lcom/mi/device/Apollo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Apollo;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO()Landroid/util/SparseArray;
    .locals 2
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

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v0, "XIAOMI"

    const-string v1, "10T PRO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooOOo()Ljava/lang/String;
    .locals 0

    const-string p0, "notelemfnr:1;telesr:1"

    return-object p0
.end method

.method public o00000o0()F
    .locals 0

    const p0, 0x3f6f6e7f

    return p0
.end method

.method public o0000OO0()Ljava/lang/String;
    .locals 0

    const-string p0, "3:12032x9024"

    return-object p0
.end method

.method public o0000Ooo()I
    .locals 0

    const/16 p0, 0x13b

    return p0
.end method

.method public o000O0o0()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.6:1:2:5:10:30;capture_ruler:4:10:10:5:10"

    return-object p0
.end method

.method public o000OO()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->o0000oOo:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o000Oo0o()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O00()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
