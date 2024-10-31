.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;

# interfaces
.implements LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOOO;


# annotations
.annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O0/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O<",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOOO;"
    }
.end annotation


# static fields
.field private static final o0000oOo:J = 0x1L

.field public static final o0000oo0:[Ljava/lang/Object;


# instance fields
.field public final o000:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final o0000ooO:Z

.field public o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000oo0:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "Ljava/lang/Object;",
            ">;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->Oooo000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooO0oO()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000ooO:Z

    iput-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    iput-object p3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    return-void
.end method

.method public constructor <init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "Ljava/lang/Object;",
            ">;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p4, p5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;Ljava/lang/Boolean;)V

    iget-object p4, p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000:Ljava/lang/Class;

    iput-object p4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000:Ljava/lang/Class;

    iget-boolean p1, p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000ooO:Z

    iput-boolean p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000ooO:Z

    iput-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    iput-object p3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    return-void
.end method


# virtual methods
.method public OooO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;->OooO0Oo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public OooO0OO()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    return-object p0
.end method

.method public OooO0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o00000O0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0OOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO()[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v5

    sget-object v6, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-eq v5, v6, :cond_5

    sget-object v6, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o000O0O:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000oO0:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;

    invoke-interface {v5, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;->getNullValue(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget-object v5, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    invoke-virtual {v5, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    invoke-virtual {v5, p1, p2, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->deserializeWithType(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    array-length v6, v1

    if-lt v4, v6, :cond_4

    invoke-virtual {v0, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0OO([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v3

    :cond_4
    add-int/lit8 v6, v4, 0x1

    :try_start_1
    aput-object v5, v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v6

    goto :goto_0

    :catch_0
    move-exception p0

    move v4, v6

    goto :goto_3

    :cond_5
    iget-boolean p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000ooO:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0, v1, v4}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0o([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_6
    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000:Ljava/lang/Class;

    invoke-virtual {v0, v1, v4, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0oO([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0000Oo0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;)V

    return-object p0

    :catch_1
    move-exception p0

    :goto_3
    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0Oo()I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p0, v1, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;->OooOo(Ljava/lang/Throwable;Ljava/lang/Object;I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;

    move-result-object p0

    throw p0
.end method

.method public OooO0oO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o00000O0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    array-length p1, p3

    array-length p2, p0

    add-int/2addr p2, p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p0

    invoke-static {p0, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0OOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;

    move-result-object v0

    array-length v2, p3

    invoke-virtual {v0, p3, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooOO0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    iget-object v3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    :goto_0
    :try_start_0
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v4

    sget-object v5, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-eq v4, v5, :cond_6

    sget-object v5, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o000O0O:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000oO0:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;

    invoke-interface {v4, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;->getNullValue(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    iget-object v4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    invoke-virtual {v4, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    invoke-virtual {v4, p1, p2, v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->deserializeWithType(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    array-length v5, p3

    if-lt v2, v5, :cond_5

    invoke-virtual {v0, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0OO([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    :cond_5
    add-int/lit8 v5, v2, 0x1

    :try_start_1
    aput-object v4, p3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v5

    goto :goto_0

    :catch_0
    move-exception p0

    move v2, v5

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000ooO:Z

    if-eqz p1, :cond_7

    invoke-virtual {v0, p3, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0o([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_7
    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000:Ljava/lang/Class;

    invoke-virtual {v0, p3, v2, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0oO([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0000Oo0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;)V

    return-object p0

    :catch_1
    move-exception p0

    :goto_3
    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0Oo()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p0, p3, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;->OooOo(Ljava/lang/Throwable;Ljava/lang/Object;I)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;

    move-result-object p0

    throw p0
.end method

.method public OooO0oo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Byte;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->OoooO0O()LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooO00o;

    move-result-object p0

    invoke-virtual {p1, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->Oooo0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooO00o;)[B

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [Ljava/lang/Byte;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o000:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-virtual {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o000000(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;->o000O0O0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {p2, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0ooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->ooOO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000oOO:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_1

    sget-object v1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;->o000O0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {p2, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0ooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o000000(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooO0oo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooO0oO()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->OoooooO(Ljava/lang/Class;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_4
    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o000O0O:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-virtual {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o000000(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000oO0:Z

    if-eqz p1, :cond_5

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000oo0:[Ljava/lang/Object;

    return-object p0

    :cond_5
    iget-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;

    invoke-interface {p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;->getNullValue(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    if-nez v0, :cond_7

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    invoke-virtual {v0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_7
    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    invoke-virtual {v1, p1, p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->deserializeWithType(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget-boolean p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000ooO:Z

    if-eqz p2, :cond_8

    new-array p0, v4, [Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000:Ljava/lang/Class;

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :goto_3
    aput-object p1, p0, v3

    return-object p0
.end method

.method public OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "*>;)",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000oOO:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, v0, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooOO0o(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;Ljava/lang/Boolean;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;

    move-result-object p0

    return-object p0
.end method

.method public OooOO0o(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;Ljava/lang/Boolean;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;",
            "Ljava/lang/Boolean;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000oOO:Ljava/lang/Boolean;

    if-ne p4, v0, :cond_0

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public createContextual(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    invoke-virtual {v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooO0oO()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0o0/OooO00o/OooO00o/Oooo0$OooO00o;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO00o/Oooo0$OooO00o;

    invoke-virtual {p0, p1, p2, v1, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00;->findFormatFeature(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;Ljava/lang/Class;LOooO0OO/OooO0o0/OooO00o/OooO00o/Oooo0$OooO00o;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00;->findConvertingContentDeserializer(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    move-result-object v0

    iget-object v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOO0O;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->Oooo000()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->Oooo0o0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, p2, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->OooooOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    move-result-object v0

    :goto_0
    iget-object v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;->OooO0oO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00;->findContentNullProvider(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;

    move-result-object p1

    invoke-virtual {p0, v2, v0, p1, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooOO0o(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00Ooo;Ljava/lang/Boolean;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo0;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooO0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooO0oO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic deserializeWithType(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->OooO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEmptyAccessPattern()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooO00o;
    .locals 0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooO00o;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooO00o;

    return-object p0
.end method

.method public getEmptyValue(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;
        }
    .end annotation

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o0000oo0:[Ljava/lang/Object;

    return-object p0
.end method

.method public isCachable()Z
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    if-nez v0, :cond_0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0ooOOo;->o000OoO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
