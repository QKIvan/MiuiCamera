.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0OO;


# static fields
.field private static final o000OO00:J = 0x1L

.field public static final o0OoO0o:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0OO;)V
    .locals 0

    invoke-direct {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0OO;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o000OoO:Z

    return-void
.end method

.method public constructor <init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0OO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0OO;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;)V

    return-void
.end method


# virtual methods
.method public OooOo0O(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o000:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o0ooOOo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0OO;->OooO0o0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oo0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    if-eqz v0, :cond_1

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    invoke-virtual {v0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;->OooOo0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooOO0O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->handledType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->OooO0O0()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    const-string v6, "abstract type (need to add/enable type information?)"

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->Ooooo0o(Ljava/lang/Class;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;->OooO0oO()Z

    move-result v0

    iget-object v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;->OooO()Z

    move-result v2

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->handledType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->OooO0O0()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    const-string v7, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator"

    move-object v3, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->Ooooo0o(Ljava/lang/Class;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v2, 0x0

    move v5, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    sget-object v6, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-virtual {p1, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o000000(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->Oooo()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o000O0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0OO;

    invoke-virtual {v7, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0OO;->OooOOOO(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    move-result-object v7

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-eqz v7, :cond_6

    if-eqz v3, :cond_4

    invoke-virtual {v7, p1, p2, v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->OooO0oO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    iget-object v4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o000O0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0OO;

    invoke-virtual {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0OO;->size()I

    move-result v4

    add-int/2addr v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    :cond_5
    add-int/lit8 v6, v5, 0x1

    aput-object v7, v4, v5

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v7, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->OooO0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v6

    goto :goto_2

    :cond_6
    const-string v7, "message"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    iget-object v3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0OO00O()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p2, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;->OooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_b

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    check-cast v7, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    add-int/lit8 v8, v6, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v3, v8}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->OooOoO0(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    iget-object v7, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o000Oo0:Ljava/util/Set;

    if-eqz v7, :cond_9

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000ooO()LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;

    goto :goto_2

    :cond_9
    iget-object v7, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o000O0O:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00oO0o;

    if-eqz v7, :cond_a

    invoke-virtual {v7, p1, p2, v3, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o00oO0o;->OooO0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p1, p2, v3, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->handleUnknownProperty(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_2
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    goto :goto_0

    :cond_c
    if-nez v3, :cond_e

    if-eqz v0, :cond_d

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    invoke-virtual {p0, p2, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;->OooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_d
    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0o;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;

    invoke-virtual {p0, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0OO00O;->OooOo00(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    move-object v3, p0

    if-eqz v4, :cond_e

    :goto_4
    if-ge v1, v5, :cond_e

    aget-object p0, v4, v1

    check-cast p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    add-int/lit8 p1, v1, 0x1

    aget-object p1, v4, p1

    invoke-virtual {p0, v3, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->OooOoO0(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_e
    return-object v3
.end method

.method public unwrappingDeserializer(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000;

    invoke-direct {v0, p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooO0OO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;)V

    return-object v0
.end method
