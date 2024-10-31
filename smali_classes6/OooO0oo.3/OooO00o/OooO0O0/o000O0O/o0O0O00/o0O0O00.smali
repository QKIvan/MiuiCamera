.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;
.super LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0OO;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0O0;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final OooOOOO:Ljava/net/Socket;

.field private OooOOOo:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0OO;-><init>()V

    const-string v0, "Socket"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOO:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOo:Z

    if-gez p2, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p2

    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0OO;->OooOO0O(Ljava/io/InputStream;ILOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V

    return-void
.end method


# virtual methods
.method public OooO0OO(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0OO;->OooOO0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOO:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    :try_start_0
    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOO:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooO0oo()I

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0OO;->OooOO0()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOO:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOO:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1

    :cond_0
    :goto_0
    return v0
.end method

.method public OooO0o0()Z
    .locals 0

    iget-boolean p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOo:Z

    return p0
.end method

.method public OooO0oo()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0OO;->OooO0oo()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0O0O00;->OooOOOo:Z

    return v0
.end method
