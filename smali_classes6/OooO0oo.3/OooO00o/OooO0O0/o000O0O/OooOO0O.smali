.class public abstract LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/OooOo00;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private o000:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

.field private final o0000o:LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;

.field private final o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;

.field private o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

.field private o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;

.field private o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;

.field private o0000oo0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO<",
            "LOooO0oo/OooO00o/OooO0O0/o0OO00O;",
            ">;"
        }
    .end annotation
.end field

.field private o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO<",
            "LOooO0oo/OooO00o/OooO0O0/o0ooOOo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oo0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o000:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooOOO()LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;

    move-result-object v0

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0oo()LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;

    move-result-object v0

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0oo/OooO00o/OooO0O0/Oooo0;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o000:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

    return-object p0
.end method

.method public abstract OooO0O0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o0OoOo0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0O0()V

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;->OooO0OO()LOooO0oo/OooO00o/OooO0O0/o000oOoO;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;->OooO0OO()LOooO0oo/OooO00o/OooO0O0/o000oOoO;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o00oO0o;LOooO0oo/OooO00o/OooO0O0/o000oOoO;)V

    return-void
.end method

.method public OooO0o()Z
    .locals 2

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOo;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooOoO0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    invoke-interface {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;->OooO0OO(I)Z

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooOoO0()Z

    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1

    :catch_1
    const/4 p0, 0x0

    return p0
.end method

.method public OooO0oO(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;
    .locals 0

    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

    invoke-direct {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;)V

    return-object p0
.end method

.method public OooO0oo()LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;
    .locals 1

    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0o;

    invoke-direct {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0o;-><init>()V

    invoke-direct {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO0;)V

    return-object p0
.end method

.method public OooOO0(LOooO0oo/OooO00o/OooO0O0/o0OO00O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0O0()V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    invoke-virtual {v0, p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0O0;->OooO00o(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o00oO0o;)LOooO0oo/OooO00o/OooO0O0/o000oOoO;

    move-result-object p0

    invoke-interface {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000oOoO;)V

    return-void
.end method

.method public OooOOO()LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;
    .locals 1

    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO;

    invoke-direct {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO;-><init>()V

    invoke-direct {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo0o0Oo/OooO0OO;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO0;)V

    return-object p0
.end method

.method public OooOOO0()LOooO0oo/OooO00o/OooO0O0/o0OO00O;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0O0()V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oo0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;

    invoke-interface {v0}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o00oO0o;

    move-result-object v0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o0OO00O;

    invoke-interface {v0}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object v1

    invoke-interface {v1}, LOooO0oo/OooO00o/OooO0O0/o000OO;->OooO0OO()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o000:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;->OooO0oO()V

    :cond_0
    return-object v0
.end method

.method public OooOOOO(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0O0()V

    :try_start_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;->OooO0OO(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public OooOOo()LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;
    .locals 0

    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;

    return-object p0
.end method

.method public OooOOo0(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0O0()V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;

    invoke-interface {v0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;->OooO00o(LOooO0oo/OooO00o/OooO0O0/o00oO0o;)V

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o000:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;->OooO0o()V

    return-void
.end method

.method public OooOOoo(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;",
            "LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;",
            ")",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO<",
            "LOooO0oo/OooO00o/OooO0O0/o0ooOOo;",
            ">;"
        }
    .end annotation

    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o00Ooo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o00Ooo;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V

    return-object p0
.end method

.method public OooOo(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V
    .locals 1

    const-string v0, "Input session buffer"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    const-string v0, "Output session buffer"

    invoke-static {p2, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;

    instance-of v0, p1, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;

    :cond_0
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooOOo()LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooOo0O(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;

    move-result-object v0

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oo0:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;

    invoke-virtual {p0, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooOOoo(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;

    move-result-object p3

    iput-object p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;

    move-result-object p1

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0oO(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

    move-result-object p1

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o000:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00oO0o;

    return-void
.end method

.method public OooOo0O(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;",
            "LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;",
            "LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;",
            ")",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO<",
            "LOooO0oo/OooO00o/OooO0O0/o0OO00O;",
            ">;"
        }
    .end annotation

    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo000;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo000;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V

    return-object p0
.end method

.method public OooOo0o()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;->flush()V

    return-void
.end method

.method public OooOoO0()Z
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;->OooO0o0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooO0O0()V

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOO0O;->OooOo0o()V

    return-void
.end method
