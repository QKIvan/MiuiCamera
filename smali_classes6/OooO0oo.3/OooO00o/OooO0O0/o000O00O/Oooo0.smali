.class public LOooO0oo/OooO00o/OooO0O0/o000O00O/Oooo0;
.super LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final o0000oO0:J = 0x4ac56f4476f17222L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized OooOO0o(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->OooOO0o(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOOO()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->OooOOO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OooOOOo(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->OooOOOo(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOOo0(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->OooOOo0(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOo00([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->OooOo00([Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooO0O0;->setParameter(Ljava/lang/String;Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
