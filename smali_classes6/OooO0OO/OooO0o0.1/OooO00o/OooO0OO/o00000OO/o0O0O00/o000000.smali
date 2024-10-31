.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;
.super Ljava/lang/Object;


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;->OooO00o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;->OooO00o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o000OOo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;->OooO00o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;->OooO00o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    invoke-virtual {p4}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o000OOo;->o000O()LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-virtual {v1, v2, p2, p3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->OooO0oO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public OooO0OO(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;->OooO00o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    invoke-virtual {v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->Oooo00O(Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->OooOOo()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;->unwrappingDeserializer(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00Ooo;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;

    move-result-object v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v1, v3}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;->Oooo00o(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0ooOOo;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;

    invoke-direct {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/o000000;-><init>(Ljava/util/List;)V

    return-object p0
.end method
