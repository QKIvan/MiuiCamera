.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o0000o:Ljava/net/ServerSocket;

.field private final o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

.field private final o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;

.field private final o0000oOO:LOooO0oo/OooO00o/OooO0O0/Oooo000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0oo/OooO00o/OooO0O0/Oooo000<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o000OOo;",
            ">;"
        }
    .end annotation
.end field

.field private final o0000oOo:LOooO0oo/OooO00o/OooO0O0/OooO;

.field private final o0000oo0:Ljava/util/concurrent/ExecutorService;

.field private final o0000ooO:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;Ljava/net/ServerSocket;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;LOooO0oo/OooO00o/OooO0O0/Oooo000;LOooO0oo/OooO00o/OooO0O0/OooO;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;",
            "Ljava/net/ServerSocket;",
            "LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;",
            "LOooO0oo/OooO00o/OooO0O0/Oooo000<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o000OOo;",
            ">;",
            "LOooO0oo/OooO00o/OooO0O0/OooO;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    iput-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o:Ljava/net/ServerSocket;

    iput-object p4, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    iput-object p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;

    iput-object p5, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/OooO;

    iput-object p6, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oo0:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000ooO:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000ooO:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public OooO0O0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000ooO:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooOO0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooOO0o()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o0()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_0
    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1
    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0oo()I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    iget-object v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v2}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0oo()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_2
    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    invoke-interface {v1, v0}, LOooO0oo/OooO00o/OooO0O0/Oooo000;->OooO00o(Ljava/net/Socket;)LOooO0oo/OooO00o/OooO0O0/OooOo;

    move-result-object v0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o000OOo;

    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0;

    iget-object v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;

    iget-object v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/OooO;

    invoke-direct {v1, v2, v0, v3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;LOooO0oo/OooO00o/OooO0O0/o000OOo;LOooO0oo/OooO00o/OooO0O0/OooO;)V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oo0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/OooO;

    invoke-interface {p0, v0}, LOooO0oo/OooO00o/OooO0O0/OooO;->OooO00o(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method
