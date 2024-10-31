.class public LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:Z

.field private final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0$OooO00o;

.field private final OooO0o:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0o0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0OO:Ljava/util/List;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO00o:Ljava/lang/String;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0;->OooO0oO()Z

    move-result v0

    iput-boolean v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0O0:Z

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0;->OooO0o()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0$OooO00o;

    move-result-object v0

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0$OooO00o;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0;->OooO0o0()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;->OooO00o()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object v0

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0o0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0;->OooO0O0()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;->OooO00o()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object v1

    iput-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0o:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0;->OooO0Oo()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;->OooO00o()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object p2

    iput-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;->OooO0oo(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V

    invoke-virtual {p1, v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;->OooO0oo(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V

    invoke-virtual {p1, p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;->OooO0oo(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V

    invoke-virtual {v0, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V

    invoke-virtual {v1, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V

    invoke-virtual {p2, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V

    return-void
.end method


# virtual methods
.method public OooO()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0$OooO00o;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00000O0$OooO00o;

    return-object p0
.end method

.method public OooO0O0(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0OO:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0Oo()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0OO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0OO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;

    invoke-interface {v1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;->OooO0Oo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0o()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0o:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    return-object p0
.end method

.method public OooO0o0(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public OooO0oO()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    return-object p0
.end method

.method public OooO0oo()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0o0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    return-object p0
.end method

.method public OooOO0()Z
    .locals 0

    iget-boolean p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO0O0:Z

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/oo000o;->OooO00o:Ljava/lang/String;

    return-object p0
.end method
