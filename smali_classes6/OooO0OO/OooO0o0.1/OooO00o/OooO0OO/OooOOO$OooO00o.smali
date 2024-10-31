.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# static fields
.field private static final o0000o0o:J = 0x1L


# instance fields
.field public final o0000o:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;->o0000o:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo;
        }
    .end annotation

    instance-of p4, p1, Ljava/lang/String;

    if-nez p4, :cond_0

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooOOO0;->OooO(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/OooOOO0;->OooO0oo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unrecognized inject value id type (%s), expecting String"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO;->OooOoOO(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;->o0000o:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;->o0000o:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No injectable id with value \'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' found (for property \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public OooO0O0(Ljava/lang/Class;Ljava/lang/Object;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;->o0000o:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public OooO0OO(Ljava/lang/String;Ljava/lang/Object;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO$OooO00o;->o0000o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
