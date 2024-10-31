.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0o;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final o0000o0o:J = 0x1L


# instance fields
.field public o0000o:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0o;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OooO([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooO0oo([LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;)V

    return-void
.end method

.method public OooO0OO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;",
            ")",
            "Ljava/util/Collection<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;->OooOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;->OooO0oo()Ljava/lang/Class;

    move-result-object v8

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    new-instance v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;->OooO0oo()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;Ljava/util/HashMap;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public OooO0Oo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooOOO0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooOOO0;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;",
            ")",
            "Ljava/util/Collection<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;->OooOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;

    move-result-object v6

    if-nez p3, :cond_0

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO00o;->OooO0oo()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooO0oO()Ljava/lang/Class;

    move-result-object p3

    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v6, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;->ooOO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO00o;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_3
    new-instance v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    const/4 p2, 0x0

    invoke-direct {v2, p3, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p1, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;Ljava/util/HashMap;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public OooO0o(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooOOO0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooOOO0;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;",
            ")",
            "Ljava/util/Collection<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;->OooOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;

    move-result-object v0

    invoke-virtual {p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooO0oO()Ljava/lang/Class;

    move-result-object p3

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v3, p3, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p1, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/util/Set;Ljava/util/Map;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;->ooOO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO00o;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3, v7, v8}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0o(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;",
            ")",
            "Ljava/util/Collection<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;->OooO0oo()Ljava/lang/Class;

    move-result-object v0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/util/Set;Ljava/util/Map;)V

    iget-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v7, v8}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0o(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public OooO0oO(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-direct {v4, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooO0oo([LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;)V

    return-void
.end method

.method public varargs OooO0oo([LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;)V
    .locals 4

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->o0000o:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;",
            "Ljava/util/HashMap<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0OO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;->o00O0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0OO()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0OO()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;->ooOO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO00o;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/util/Set;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;->OooOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;

    move-result-object v0

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0OO()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;->o00O0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v2, p2, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p2, v2

    :cond_0
    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0OO()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO00o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0O0;->ooOO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO00o;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0OO;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;

    move-result-object v1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO/Oooo000;->OooOO0O(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public OooOO0o(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;)",
            "Ljava/util/Collection<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    if-ne p3, p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;

    invoke-direct {v0, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0O0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method
