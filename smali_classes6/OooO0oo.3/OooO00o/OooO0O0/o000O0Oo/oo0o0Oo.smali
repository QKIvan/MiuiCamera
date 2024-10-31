.class public LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo0o0Oo;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOOOO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "HTTP request"

    invoke-static {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOO0;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOO0;

    move-result-object p0

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;->OooOoO0()LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object p2

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o0000O0O;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o0000oo;

    move-result-object p2

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;->OooOoO0()LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object v0

    invoke-interface {v0}, LOooO0oo/OooO00o/OooO0O0/o0000O0O;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-virtual {p2, v0}, LOooO0oo/OooO00o/OooO0O0/o0000oo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0000oo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Host"

    invoke-interface {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOO0;->OooO()LOooO0oo/OooO00o/OooO0O0/o00Ooo;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOO0;->OooO0o0()LOooO0oo/OooO00o/OooO0O0/OooOo;

    move-result-object p0

    instance-of v2, p0, LOooO0oo/OooO00o/OooO0O0/oo000o;

    if-eqz v2, :cond_1

    check-cast p0, LOooO0oo/OooO00o/OooO0O0/oo000o;

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/oo000o;->OooOo00()Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/oo000o;->OooOO0O()I

    move-result p0

    if-eqz v2, :cond_1

    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o00Ooo;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, LOooO0oo/OooO00o/OooO0O0/o00Ooo;-><init>(Ljava/lang/String;I)V

    :cond_1
    if-nez v1, :cond_3

    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-virtual {p2, p0}, LOooO0oo/OooO00o/OooO0O0/o0000oo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0000oo;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o0000O00;

    const-string p1, "Target host missing"

    invoke-direct {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o0000O00;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o00Ooo;->OooO0o()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOo0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
