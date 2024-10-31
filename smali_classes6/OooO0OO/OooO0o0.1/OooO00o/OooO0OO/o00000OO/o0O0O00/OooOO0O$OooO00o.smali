.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

.field private final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0O0:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0OO:Ljava/util/Map;

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO00o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    return-void
.end method

.method private OooO00o(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public OooO0O0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)V
    .locals 3

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0O0:Ljava/util/List;

    new-instance v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;

    invoke-direct {v2, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;->OooO()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public OooO0OO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0OO;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O;
    .locals 7

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;->OooO0Oo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0OO;->OooOOOO(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;->OooO0oO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;)V

    :cond_0
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O;

    iget-object v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO00o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    iget-object v4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO00o;->OooO0OO:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooOO0O$OooO0O0;Ljava/util/Map;[Ljava/lang/String;[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o000OOo;)V

    return-object p1
.end method
