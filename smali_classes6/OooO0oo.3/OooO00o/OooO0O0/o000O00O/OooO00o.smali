.class public abstract LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;
.implements LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOo00;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;Z)Z
    .locals 0

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public OooO00o(Ljava/lang/String;I)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->setParameter(Ljava/lang/String;Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;

    return-object p0
.end method

.method public OooO0O0(Ljava/lang/String;D)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->setParameter(Ljava/lang/String;Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;

    return-object p0
.end method

.method public OooO0OO(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO00o;->OooO(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public OooO0Oo()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public OooO0o(Ljava/lang/String;J)J
    .locals 0

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public OooO0o0(Ljava/lang/String;J)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->setParameter(Ljava/lang/String;Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;

    return-object p0
.end method

.method public OooO0oo(Ljava/lang/String;Z)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->setParameter(Ljava/lang/String;Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;

    return-object p0
.end method

.method public OooOO0(Ljava/lang/String;I)I
    .locals 0

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public OooOO0O(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO00o;->OooO(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public OooOOO0(Ljava/lang/String;D)D
    .locals 0

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method
