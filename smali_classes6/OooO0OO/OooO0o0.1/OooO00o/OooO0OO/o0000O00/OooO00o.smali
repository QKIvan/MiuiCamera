.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO00o;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO00o;,
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0O0;,
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;
    }
.end annotation


# static fields
.field private static final o0000oO0:J = 0x1L


# instance fields
.field public final o0000oOO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final o0000oOo:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;

.field public final o0000oo0:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0O0;

.field public final o0000ooO:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;


# direct methods
.method public constructor <init>(Ljava/util/Set;[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0O0;[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;",
            "[",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0O0;",
            "[",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO00o;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000oOO:Ljava/util/Set;

    iput-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000oOo:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;

    iput-object p3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000oo0:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0O0;

    iput-object p4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000ooO:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;

    return-void
.end method

.method public static OooO0Oo()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO00o;
    .locals 1

    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO00o;

    invoke-direct {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO00o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public OooO00o(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;"
        }
    .end annotation

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooO0oO()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000oOO:Ljava/util/Set;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;

    return-object p0

    :cond_0
    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000oOo:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;

    if-eqz p0, :cond_2

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;->OooO00o(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;

    return-object p0
.end method

.method public OooO0O0(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;",
            "Ljava/lang/String;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000oo0:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0O0;

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p0, p2

    invoke-virtual {v0, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0O0;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;

    return-object p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;

    return-object p0
.end method

.method public OooO0OO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O/OooOOO<",
            "*>;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;
        }
    .end annotation

    iget-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000ooO:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;->OooO0oO()Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o;->o0000ooO:[LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;

    array-length p2, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object v0, p0, p3

    invoke-virtual {v0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO00o$OooO0OO;->OooO00o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;

    return-object p0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO0OO$OooO0O0;

    return-object p0
.end method
