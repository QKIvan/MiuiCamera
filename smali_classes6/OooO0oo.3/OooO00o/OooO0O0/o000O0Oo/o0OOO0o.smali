.class public LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OOO0o;
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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OOO0o;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OOO0o;->o0000o0o:Z

    return-void
.end method


# virtual methods
.method public OooOOOO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of p2, p1, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;

    if-eqz p2, :cond_8

    iget-boolean p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o0OOO0o;->o0000o0o:Z

    const-string p2, "Transfer-Encoding"

    const-string v0, "Content-Length"

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOoO(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOoO(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;->OooOoO0()LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object p0

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o0000O0O;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o0000oo;

    move-result-object p0

    move-object v1, p1

    check-cast v1, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;

    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;->OooO0OO()LOooO0oo/OooO00o/OooO0O0/o000oOoO;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "0"

    invoke-interface {p1, v0, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOo0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0OO()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0Oo()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0Oo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOo0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-virtual {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o0000oo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0000oo;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "chunked"

    invoke-interface {p1, p2, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOo0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->getContentType()LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p0, "Content-Type"

    invoke-interface {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->getContentType()LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p0

    invoke-interface {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooO0o(LOooO0oo/OooO00o/OooO0O0/OooOO0O;)V

    :cond_4
    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0O0()LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string p0, "Content-Encoding"

    invoke-interface {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooOO0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->OooO0O0()LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p0

    invoke-interface {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o00oO0o;->OooO0o(LOooO0oo/OooO00o/OooO0O0/OooOO0O;)V

    goto :goto_3

    :cond_5
    new-instance p1, LOooO0oo/OooO00o/OooO0O0/o0000O00;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chunked transfer encoding not allowed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o0000O00;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o0000O00;

    const-string p1, "Content-Length header already present"

    invoke-direct {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o0000O00;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o0000O00;

    const-string p1, "Transfer-encoding header already present"

    invoke-direct {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o0000O00;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method
