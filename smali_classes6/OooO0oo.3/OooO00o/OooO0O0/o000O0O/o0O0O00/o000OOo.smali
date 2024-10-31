.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o000OOo;
.super LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0o;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0o;-><init>()V

    const-string v0, "Socket"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gez p2, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p2

    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0o;->OooO0oo(Ljava/io/OutputStream;ILOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V

    return-void
.end method
