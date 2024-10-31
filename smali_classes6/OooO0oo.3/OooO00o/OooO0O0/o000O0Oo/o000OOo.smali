.class public LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000OOo;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o0O0O00;


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
.method public OooO0oo(LOooO0oo/OooO00o/OooO0O0/o0OO00O;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "HTTP response"

    invoke-static {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOO0;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOO0;

    move-result-object p0

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object p2

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o000OO;->OooO0OO()I

    move-result p2

    const-string v0, "Close"

    const-string v1, "Connection"

    const/16 v2, 0x190

    if-eq p2, v2, :cond_6

    const/16 v2, 0x198

    if-eq p2, v2, :cond_6

    const/16 v2, 0x19b

    if-eq p2, v2, :cond_6

    const/16 v2, 0x19d

    if-eq p2, v2, :cond_6

    const/16 v2, 0x19e

    if-eq p2, v2, :cond_6

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_6

    const/16 v2, 0x1f5

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOoOO(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooO0OO()LOooO0oo/OooO00o/OooO0O0/o000oOoO;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object v2

    invoke-interface {v2}, LOooO0oo/OooO00o/OooO0O0/o000OO;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o0000oo;

    move-result-object v2

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0Oo()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0OO()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-virtual {v2, p2}, LOooO0oo/OooO00o/OooO0O0/o0000oo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0000oo;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-interface {p1, v1, v0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0O(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOO0;->OooO0oO()LOooO0oo/OooO00o/OooO0O0/o0ooOOo;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0, v1}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOoOO(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0O(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o0000oo;

    move-result-object p0

    sget-object p2, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-virtual {p0, p2}, LOooO0oo/OooO00o/OooO0O0/o0000oo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0000oo;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1, v1, v0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0O(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    invoke-interface {p1, v1, v0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0O(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
