.class public LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OO00O;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# instance fields
.field private final o0000o0o:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OO00O;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OO00O;->o0000o0o:Z

    return-void
.end method


# virtual methods
.method public OooOOOO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "Expect"

    invoke-interface {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;

    if-eqz v0, :cond_0

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;->OooOoO0()LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object v0

    invoke-interface {v0}, LOooO0oo/OooO00o/OooO0O0/o0000O0O;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o0000oo;

    move-result-object v0

    move-object v1, p1

    check-cast v1, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;

    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;->OooO0OO()LOooO0oo/OooO00o/OooO0O0/o000oOoO;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0Oo()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-virtual {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o0000oo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0000oo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOOo()LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;

    move-result-object v0

    iget-boolean p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OO00O;->o0000o0o:Z

    const-string v1, "http.protocol.expect-continue"

    invoke-interface {v0, v1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->OooO(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "100-continue"

    invoke-interface {p1, p2, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOo0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
