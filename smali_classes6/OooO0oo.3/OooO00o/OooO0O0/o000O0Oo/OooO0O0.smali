.class public final LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOo00;
.implements LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o00Oo0;
.implements LOooO0oo/OooO00o/OooO0O0/o000O0Oo/o00Ooo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final o0000o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0oo/OooO00o/OooO0O0/o0O0O00;",
            ">;"
        }
    .end annotation
.end field

.field public final o0000o0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;",
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

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public OooO00o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Inteceptor list"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;

    invoke-virtual {p0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOOo0(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)V

    :cond_1
    instance-of v1, v0, LOooO0oo/OooO00o/OooO0O0/o0O0O00;

    if-eqz v1, :cond_0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o0O0O00;

    invoke-virtual {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOo0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public OooO0O0(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o0O0O00;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooO0OO()I
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public OooO0Oo()I
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public OooO0o(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooO0o0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0oo(LOooO0oo/OooO00o/OooO0O0/o0OO00O;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0oo/OooO00o/OooO0O0/o00O0O;
        }
    .end annotation

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o0O0O00;

    invoke-interface {v0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o0O0O00;->OooO0oo(LOooO0oo/OooO00o/OooO0O0/o0OO00O;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOO0(I)LOooO0oo/OooO00o/OooO0O0/o0O0O00;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0oo/OooO00o/OooO0O0/o0O0O00;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public OooOO0O()V
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public OooOO0o(I)LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public OooOOO(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public OooOOO0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public OooOOOO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0oo/OooO00o/OooO0O0/o00O0O;
        }
    .end annotation

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;

    invoke-interface {v0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;->OooOOOO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOOOo(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final OooOOo0(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)V
    .locals 0

    invoke-virtual {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOOOo(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;)V

    return-void
.end method

.method public OooOo()LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;
    .locals 1

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;

    invoke-direct {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;-><init>()V

    invoke-virtual {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOoO0(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;)V

    return-object v0
.end method

.method public final OooOo0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)V
    .locals 0

    invoke-virtual {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooO0o0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;)V

    return-void
.end method

.method public final OooOo00(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOOO(LOooO0oo/OooO00o/OooO0O0/o0Oo0oo;I)V

    return-void
.end method

.method public final OooOo0O(LOooO0oo/OooO00o/OooO0O0/o0O0O00;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOOO0(LOooO0oo/OooO00o/OooO0O0/o0O0O00;I)V

    return-void
.end method

.method public OooOo0o()V
    .locals 0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooO()V

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOO0O()V

    return-void
.end method

.method public OooOoO0(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;)V
    .locals 2

    iget-object v0, p1, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o0o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->o0000o:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;

    invoke-virtual {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;->OooOoO0(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooO0O0;)V

    return-object v0
.end method
