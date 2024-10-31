.class public final Lcom/mi/device/Cannong;
.super Lcom/mi/device/Cannon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Cannon;-><init>()V

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

    const-string v0, "REDMI"

    const-string v1, "NOTE 9T 5G"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public o00000oo()I
    .locals 0

    const p0, 0x7270e0

    return p0
.end method

.method public o000O000()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public o000O0O0()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public o000OO0O()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public o00oo0OO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0OOO0()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:pro:capture_intent"

    return-object p0
.end method
