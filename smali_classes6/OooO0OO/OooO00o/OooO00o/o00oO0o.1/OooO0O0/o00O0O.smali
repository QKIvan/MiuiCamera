.class public LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOOOO;
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOo00;


# instance fields
.field private final OooO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

.field private final OooO00o:Landroid/graphics/Matrix;

.field private final OooO0O0:Landroid/graphics/Path;

.field private final OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

.field private final OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;

.field private final OooO0o:Z

.field private final OooO0o0:Ljava/lang/String;

.field private final OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0oo:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;


# direct methods
.method public constructor <init>(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/oo0o0Oo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO00o:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0O0:Landroid/graphics/Path;

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

    iput-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/oo0o0Oo;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0o0:Ljava/lang/String;

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/oo0o0Oo;->OooO0o()Z

    move-result p1

    iput-boolean p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0o:Z

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/oo0o0Oo;->OooO0O0()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;->OooO00o()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;->OooO0oo(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V

    invoke-virtual {p1, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/oo0o0Oo;->OooO0Oo()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooO0O0;->OooO00o()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oo:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;->OooO0oo(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V

    invoke-virtual {p1, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/oo0o0Oo;->OooO0o0()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;->OooO0O0()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {p1, p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO00o(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;)V

    invoke-virtual {p1, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0O0(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooOO0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;

    invoke-virtual {p0, p1, p2, p3}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public OooO0O0(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooOO0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;

    iget-boolean v5, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0o:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;-><init>(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;Ljava/lang/String;ZLjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;)V

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooOO0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;

    return-void
.end method

.method public OooO0OO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oo:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {v2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {v4}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0o0()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO00o:Landroid/graphics/Matrix;

    iget-object v6, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0oO(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooOO0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;

    iget-object v7, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO00o:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0Oo()V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/OooOOO0;->invalidateSelf()V

    return-void
.end method

.method public OooO0o(Ljava/lang/Object;LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;)V
    .locals 1
    .param p2    # LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {v0, p1, p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0OO(Ljava/lang/Object;LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, LOooO0OO/OooO00o/OooO00o/Oooo000;->OooOOo0:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {p0, p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooOOO0(LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;)V

    goto :goto_0

    :cond_1
    sget-object v0, LOooO0OO/OooO00o/OooO00o/Oooo000;->OooOOo:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oo:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {p0, p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooOOO0(LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;)V

    :cond_2
    :goto_0
    return-void
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

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooOO0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0o0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public OooO0oO(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;ILjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            "I",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            ">;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0o(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;ILjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOo00;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0o0:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooOO0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0oo:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    invoke-virtual {v2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO00o:Landroid/graphics/Matrix;

    iget-object v4, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0oO(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0O0:Landroid/graphics/Path;

    iget-object v4, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00O0O;->OooO0O0:Landroid/graphics/Path;

    return-object p0
.end method
