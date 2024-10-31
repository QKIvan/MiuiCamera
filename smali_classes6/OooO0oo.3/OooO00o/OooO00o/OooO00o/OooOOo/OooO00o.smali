.class public abstract LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOO;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO00o/OooO00o/OooOO0O;
        }
    .end annotation

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOO;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOO;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public OooO0o0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO00o/OooO00o/OooOO0O;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOO;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOO0O;

    const-string p1, "Parameter supplied to Caverphone encode is not of type java.lang.String"

    invoke-direct {p0, p1}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOO0O;-><init>(Ljava/lang/String;)V

    throw p0
.end method
