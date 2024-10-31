.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o00000O0;


# static fields
.field private static final o0000oO0:J = 0x2L


# instance fields
.field public final o0000oOO:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o00000O0;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO0oO()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;
    .locals 0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000ooO:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    return-object p0
.end method

.method public final Oooo0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    if-nez p0, :cond_0

    invoke-virtual {p2, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;->OoooO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo0;

    if-eqz v0, :cond_1

    check-cast p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo0;

    invoke-interface {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo0;->Oooo0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;->OoooO0O(Ljava/lang/Object;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;)V

    :goto_0
    return-void
.end method

.method public OoooOOo(D)D
    .locals 1

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public OoooOoO(I)I
    .locals 1

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public Ooooo00(J)J
    .locals 1

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public Ooooo0o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public OooooO0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public Oooooo()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    check-cast v0, [B

    return-object v0

    :cond_0
    invoke-super {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo000;->Oooooo()[B

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;

    if-eqz v1, :cond_2

    check-cast p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o000OoO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public o000000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;
    .locals 0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;->o000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo000o;

    return-object p0
.end method

.method public o000O0o()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    return-object p0
.end method

.method public o000OoO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;)Z
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    if-nez p0, :cond_1

    iget-object p0, p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    iget-object p1, p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public o000oOoO(Z)Z
    .locals 1

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000OOo;->o0000oOO:Ljava/lang/Object;

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method
