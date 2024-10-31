.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
.super Ljava/lang/Object;


# instance fields
.field private OooO:Ljava/lang/String;

.field private OooO00o:I

.field private OooO0O0:Ljava/net/InetAddress;

.field private OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

.field private OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;

.field private OooO0o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0o0:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0oO:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LOooO0oo/OooO00o/OooO0O0/o0O0O00;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0oo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LOooO0oo/OooO00o/OooO0O0/o0O0O00;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;

.field private OooOO0O:LOooO0oo/OooO00o/OooO0O0/OooO0O0;

.field private OooOO0o:LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;

.field private OooOOO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo0;",
            ">;"
        }
    .end annotation
.end field

.field private OooOOO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000oOoO;

.field private OooOOOO:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOOO;

.field private OooOOOo:Ljavax/net/ServerSocketFactory;

.field private OooOOo:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;

.field private OooOOo0:Ljavax/net/ssl/SSLContext;

.field private OooOOoo:LOooO0oo/OooO00o/OooO0O0/Oooo000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0oo/OooO00o/OooO0O0/Oooo000<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo000;",
            ">;"
        }
    .end annotation
.end field

.field private OooOo00:LOooO0oo/OooO00o/OooO0O0/OooO;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0o0()LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 1

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;

    invoke-direct {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final OooO(LOooO0oo/OooO00o/OooO0O0/Oooo000;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0oo/OooO00o/OooO0O0/Oooo000<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo000;",
            ">;)",
            "LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;"
        }
    .end annotation

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOoo:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    return-object p0
.end method

.method public final OooO00o(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o0:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o0:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o0:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final OooO0O0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oO:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oO:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oO:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final OooO0OO(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oo:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oo:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public OooO0o()LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-static {}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;->OooOOO()LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;

    move-result-object v1

    iget-object v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o0:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;

    invoke-virtual {v1, v4}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;->OooO(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;

    goto :goto_0

    :cond_0
    iget-object v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oO:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO0oo/OooO00o/OooO0O0/o0O0O00;

    invoke-virtual {v1, v4}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;->OooOO0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;

    goto :goto_1

    :cond_1
    iget-object v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, "Apache-HttpCore/1.1"

    :cond_2
    const/4 v4, 0x4

    new-array v4, v4, [LOooO0oo/OooO00o/OooO0O0/o0O0O00;

    new-instance v5, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000000O;

    invoke-direct {v5}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000000O;-><init>()V

    aput-object v5, v4, v2

    const/4 v5, 0x1

    new-instance v6, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o00000;

    invoke-direct {v6, v3}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o00000;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v3, 0x2

    new-instance v5, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000000;

    invoke-direct {v5}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000000;-><init>()V

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000OOo;

    invoke-direct {v5}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000OOo;-><init>()V

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;->OooO0Oo([LOooO0oo/OooO00o/OooO0O0/o0O0O00;)LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;

    iget-object v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0o:Ljava/util/LinkedList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;

    invoke-virtual {v1, v4}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;->OooOO0O(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;

    goto :goto_2

    :cond_3
    iget-object v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0oo:Ljava/util/LinkedList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO0oo/OooO00o/OooO0O0/o0O0O00;

    invoke-virtual {v1, v4}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;->OooOO0o(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo;->OooOOO0()LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;

    move-result-object v1

    :cond_5
    move-object v4, v1

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000oOoO;

    if-nez v1, :cond_6

    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o00000O;

    invoke-direct {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o00000O;-><init>()V

    iget-object v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOO:Ljava/util/Map;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo0;

    invoke-virtual {v1, v6, v5}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o00000O;->OooO0OO(Ljava/lang/String;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo0;)V

    goto :goto_4

    :cond_6
    move-object v7, v1

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOO0O:LOooO0oo/OooO00o/OooO0O0/OooO0O0;

    if-nez v1, :cond_7

    sget-object v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000oOoO;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o000oOoO;

    :cond_7
    move-object v5, v1

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOO0o:LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;

    if-nez v1, :cond_8

    sget-object v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;

    :cond_8
    move-object v6, v1

    new-instance v13, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;

    iget-object v8, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOOO:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOOO;

    move-object v3, v13

    invoke-direct/range {v3 .. v8}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;LOooO0oo/OooO00o/OooO0O0/OooO0O0;LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000oOoO;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOOO;)V

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOOo:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_a

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOo0:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v1

    goto :goto_5

    :cond_9
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v1

    :cond_a
    :goto_5
    move-object v12, v1

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOoo:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    if-nez v1, :cond_c

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;

    if-eqz v1, :cond_b

    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo0;

    iget-object v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;

    invoke-direct {v1, v3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo0;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V

    goto :goto_6

    :cond_b
    sget-object v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo0;

    :cond_c
    :goto_6
    move-object v14, v1

    iget-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOo00:LOooO0oo/OooO00o/OooO0O0/OooO;

    if-nez v1, :cond_d

    sget-object v1, LOooO0oo/OooO00o/OooO0O0/OooO;->OooO00o:LOooO0oo/OooO00o/OooO0O0/OooO;

    :cond_d
    move-object/from16 v16, v1

    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;

    iget v3, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO00o:I

    if-lez v3, :cond_e

    move v9, v3

    goto :goto_7

    :cond_e
    move v9, v2

    :goto_7
    iget-object v10, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0O0:Ljava/net/InetAddress;

    iget-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    sget-object v2, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    :goto_8
    move-object v11, v2

    iget-object v15, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOo:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;-><init>(ILjava/net/InetAddress;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;Ljavax/net/ServerSocketFactory;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;LOooO0oo/OooO00o/OooO0O0/Oooo000;LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;LOooO0oo/OooO00o/OooO0O0/OooO;)V

    return-object v1
.end method

.method public final OooO0oO(Ljava/lang/String;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/Oooo0;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOO:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOO:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOO:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final OooO0oo(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;

    return-object p0
.end method

.method public final OooOO0(LOooO0oo/OooO00o/OooO0O0/OooO0O0;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOO0O:LOooO0oo/OooO00o/OooO0O0/OooO0O0;

    return-object p0
.end method

.method public final OooOO0O(LOooO0oo/OooO00o/OooO0O0/OooO;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOo00:LOooO0oo/OooO00o/OooO0O0/OooO;

    return-object p0
.end method

.method public final OooOO0o(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOOO:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOOOO;

    return-object p0
.end method

.method public final OooOOO(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;

    return-object p0
.end method

.method public final OooOOO0(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000oOoO;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOO0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o000oOoO;

    return-object p0
.end method

.method public final OooOOOO(I)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO00o:I

    return-object p0
.end method

.method public final OooOOOo(Ljava/net/InetAddress;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0O0:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final OooOOo(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO:Ljava/lang/String;

    return-object p0
.end method

.method public final OooOOo0(LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOO0o:LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;

    return-object p0
.end method

.method public final OooOOoo(Ljavax/net/ServerSocketFactory;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOOo:Ljavax/net/ServerSocketFactory;

    return-object p0
.end method

.method public final OooOo0(Ljavax/net/ssl/SSLContext;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOo0:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final OooOo00(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    return-object p0
.end method

.method public final OooOo0O(LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;)LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0o;->OooOOo:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;

    return-object p0
.end method
