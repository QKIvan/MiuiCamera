.class public Lcom/mi/device/Camellian;
.super Lcom/mi/device/Camellia;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Camellia;-><init>()V

    return-void
.end method


# virtual methods
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

.method public o00o00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOO0()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:pro:capture_intent"

    return-object p0
.end method

.method public o0OO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
