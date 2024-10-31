.class public LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;
.super Ljava/lang/Object;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# static fields
.field public static final OooO00o:I = 0xbb8


# instance fields
.field private final OooO0O0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wait for continue time"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0O(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO0O0:I

    return-void
.end method

.method private static OooO0O0(LOooO0oo/OooO00o/OooO0O0/OooOo00;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOo;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o0OO00O;)Z
    .locals 0

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;->OooOoO0()LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object p0

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o0000O0O;->getMethod()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HEAD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object p0

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o000OO;->OooO0OO()I

    move-result p0

    const/16 p2, 0xc8

    if-lt p0, p2, :cond_1

    const/16 p2, 0xcc

    if-eq p0, p2, :cond_1

    const/16 p2, 0x130

    if-eq p0, p2, :cond_1

    const/16 p2, 0xcd

    if-eq p0, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public OooO0OO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/OooOo00;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o0OO00O;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection"

    invoke-static {p2, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return-object p3

    :cond_2
    :goto_1
    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->OooOOO0()LOooO0oo/OooO00o/OooO0O0/o0OO00O;

    move-result-object p3

    invoke-interface {p3}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object v0

    invoke-interface {v0}, LOooO0oo/OooO00o/OooO0O0/o000OO;->OooO0OO()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    invoke-virtual {p0, p1, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO00o(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o0OO00O;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p3}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->OooOO0(LOooO0oo/OooO00o/OooO0O0/o0OO00O;)V

    goto :goto_0

    :cond_3
    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o0000O00;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o0000O00;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/OooOo00;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o0OO00O;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0oo/OooO00o/OooO0O0/o00O0O;
        }
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection"

    invoke-static {p2, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection"

    invoke-interface {p3, v0, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "http.request_sent"

    invoke-interface {p3, v1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->OooOOo0(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;)V

    instance-of v0, p1, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;->OooOoO0()LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object v3

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o0000O0O;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o0000oo;

    move-result-object v3

    move-object v4, p1

    check-cast v4, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;

    invoke-interface {v4}, LOooO0oo/OooO00o/OooO0O0/o0OoOo0;->OooO0oo()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-virtual {v3, v5}, LOooO0oo/OooO00o/OooO0O0/o0000oo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0000oo;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->flush()V

    iget v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO0O0:I

    invoke-interface {p2, v3}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->OooOOOO(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->OooOOO0()LOooO0oo/OooO00o/OooO0O0/o0OO00O;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO00o(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o0OO00O;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, v3}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->OooOO0(LOooO0oo/OooO00o/OooO0O0/o0OO00O;)V

    :cond_0
    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object p0

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o000OO;->OooO0OO()I

    move-result p0

    const/16 p1, 0xc8

    if-ge p0, p1, :cond_2

    const/16 p1, 0x64

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o0000O00;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o0OO00O;->OooOOo0()LOooO0oo/OooO00o/OooO0O0/o000OO;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o0000O00;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v0, 0x0

    move-object v2, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {p2, v4}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o0OoOo0;)V

    :cond_4
    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/OooOo00;->flush()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public OooO0o(LOooO0oo/OooO00o/OooO0O0/o0OO00O;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "HTTP response"

    invoke-static {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "HTTP processor"

    invoke-static {p2, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "HTTP context"

    invoke-static {p3, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "http.response"

    invoke-interface {p3, p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1, p3}, LOooO0oo/OooO00o/OooO0O0/o0O0O00;->OooO0oo(LOooO0oo/OooO00o/OooO0O0/o0OO00O;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V

    return-void
.end method

.method public OooO0o0(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/OooOo00;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o0OO00O;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0oo/OooO00o/OooO0O0/o00O0O;
        }
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection"

    invoke-static {p2, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/OooOo00;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o0OO00O;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO0OO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/OooOo00;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o0OO00O;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch LOooO0oo/OooO00o/OooO0O0/o00O0O; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/OooOo00;)V

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/OooOo00;)V

    throw p0

    :catch_2
    move-exception p0

    invoke-static {p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo000;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/OooOo00;)V

    throw p0
.end method

.method public OooO0oO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "HTTP request"

    invoke-static {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "HTTP processor"

    invoke-static {p2, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "HTTP context"

    invoke-static {p3, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "http.request"

    invoke-interface {p3, p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1, p3}, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;->OooOOOO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V

    return-void
.end method
