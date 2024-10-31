.class public LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final OooO00o:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private OooO0O0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "**>;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;

    invoke-direct {v0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0OO:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;

    invoke-direct {v0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0OO:Ljava/lang/Object;

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0OO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0OO:Ljava/lang/Object;

    return-object p0
.end method

.method public final OooO0O0(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;->OooO0oo(FFLjava/lang/Object;Ljava/lang/Object;FFF)LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;

    move-result-object p1

    invoke-virtual {p0, p1}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO00o(LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO0O0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final OooO0OO(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V
    .locals 0
    .param p1    # LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0O0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    return-void
.end method

.method public final OooO0Oo(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0OO:Ljava/lang/Object;

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0O0:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooOO0()V

    :cond_0
    return-void
.end method
