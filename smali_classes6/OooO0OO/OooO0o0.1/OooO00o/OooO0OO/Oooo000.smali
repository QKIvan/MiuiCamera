.class public abstract LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo0$OooO00o;

# interfaces
.implements LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo0$OooO00o;",
        "LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;",
        "Ljava/lang/Iterable<",
        "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo0$OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOOOO()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooOOO0;->OooOOO()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic OooOOOo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OooooOO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public final OooOOo0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o0000ooO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-eq p0, v0, :cond_1

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic OooOOoo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0000Oo0(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public OooOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final OooOo0()Z
    .locals 2

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000$OooO00o;->OooO00o:[I

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic OooOoO0(I)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0000OOo(I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public Oooo00O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public Oooo00o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic Oooo0o0(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OooooOo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public OoooO()LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public abstract OoooO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.end method

.method public varargs OoooO0O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public OoooOO0()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000oOoO(Z)Z

    move-result p0

    return p0
.end method

.method public OoooOOO()D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooOOo(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public OoooOOo(D)D
    .locals 0

    return-wide p1
.end method

.method public OoooOo0()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooOoO(I)I

    move-result p0

    return p0
.end method

.method public OoooOoO(I)I
    .locals 0

    return p1
.end method

.method public OoooOoo()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->Ooooo00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Ooooo00(J)J
    .locals 0

    return-wide p1
.end method

.method public abstract Ooooo0o()Ljava/lang/String;
.end method

.method public OooooO0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->Ooooo0o()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public final OooooOO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 1

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;->OooOOoo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o0ooOOo;->o000OoO()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o0ooOOo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;->OooOo()LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;

    move-result-object p1

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OooooOO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public final OooooOo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 0

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;->OooOO0(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;

    move-result-object p1

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OooooOO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public Oooooo()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public Oooooo0()Ljava/math/BigInteger;
    .locals 0

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public OoooooO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public Ooooooo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public bridge synthetic get(I)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0O0O00(I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0O0O00;
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000OOo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o00Ooo()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public o0000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00000(I)Z
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0O0O00(I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0000O0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;
.end method

.method public o000000O(I)Z
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0O0O00(I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o000000o(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000OOo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00000O()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00000O0(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000OOo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0000O0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00000OO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00000Oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o00000o0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00000oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00000oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0000O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o0000O0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o0000O00()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o0000O0O()Z
    .locals 1

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o0000oo0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o0000OO()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final o0000OO0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o0000OOO()Ljava/lang/Number;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract o0000OOo(I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.end method

.method public o0000Oo()LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooO()LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public abstract o0000Oo0(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.end method

.method public o0000OoO()LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooO()LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public final o0000Ooo()Z
    .locals 1

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o0000o(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;->OooOO0(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;

    move-result-object p1

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0000o0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object p0

    return-object p0
.end method

.method public o0000o0(I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Node of type `%s` has no indexed values"

    invoke-virtual {p0, v0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooO0O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    return-object p0
.end method

.method public o0000o0O(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Node of type `%s` has no fields"

    invoke-virtual {p0, v0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooO0O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    return-object p0
.end method

.method public final o0000o0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;->OooOOoo()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "No node at \'%s\' (unmatched part: \'%s\')"

    invoke-virtual {p0, v3, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->OoooO0O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;->OooOo()LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo000;

    move-result-object v0

    goto :goto_0
.end method

.method public o0000oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0000oO0()S
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0000oOO()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public o0000oOo()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o0000oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0000oo0(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonNode not of type ObjectNode (but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), cannot call with() on it"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o0000ooO(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonNode not of type ObjectNode (but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), cannot call withArray() on it"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o000OO()Z
    .locals 1

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o000OOo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public o000oOoO(Z)Z
    .locals 0

    return p1
.end method

.method public abstract o00O0O()LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">()TT;"
        }
    .end annotation
.end method

.method public o00Oo0()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public o00Ooo()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;"
        }
    .end annotation

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooOOO0;->OooOOO()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public o00o0O(Ljava/util/Comparator;LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract o00oO0O(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;)",
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;"
        }
    .end annotation
.end method

.method public final o00oO0o(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o00oO0O(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public o00ooo()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooOOO0;->OooOOO()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract o0O0O00(I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.end method

.method public abstract o0OO00O(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o0OOO0o(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;)",
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;"
        }
    .end annotation
.end method

.method public final o0Oo0oo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0OO00O(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public o0OoOo0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract o0ooOO0(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.end method

.method public abstract o0ooOOo(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.end method

.method public final o0ooOoO(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->o0OOO0o(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract oo000o(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;
.end method

.method public oo0o0Oo()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public ooOO()Ljava/math/BigDecimal;
    .locals 0

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
