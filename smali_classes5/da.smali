.class public Lda;
.super Lbt;


# instance fields
.field public final a:Lde;

.field public b:Lde;

.field public c:Z


# direct methods
.method public constructor <init>(Lde;)V
    .locals 1

    invoke-direct {p0}, Lbt;-><init>()V

    iput-object p1, p0, Lda;->a:Lde;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lde;->OooOOOO(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde;

    iput-object p1, p0, Lda;->b:Lde;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lda;->c:Z

    return-void
.end method

.method private static final OooO0o0(Lde;Lde;)V
    .locals 1

    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->OooO0O0(Ljava/lang/Object;)Les;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Les;->OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooO()Lde;
    .locals 2

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lda;->b:Lde;

    sget-object v1, Lep;->a:Lep;

    invoke-virtual {v1, v0}, Lep;->OooO0O0(Ljava/lang/Object;)Les;

    move-result-object v1

    invoke-interface {v1, v0}, Les;->OooO0Oo(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lda;->c:Z

    iget-object p0, p0, Lda;->b:Lde;

    return-object p0

    :cond_0
    iget-object p0, p0, Lda;->b:Lde;

    return-object p0
.end method

.method public final bridge synthetic OooO0O0()Lbt;
    .locals 0

    invoke-virtual {p0}, Lda;->OooO0oo()Lda;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic OooO0OO(Lbu;)Lbt;
    .locals 0

    check-cast p1, Lde;

    invoke-virtual {p0, p1}, Lda;->OooO0Oo(Lde;)V

    return-object p0
.end method

.method public final OooO0Oo(Lde;)V
    .locals 1

    iget-boolean v0, p0, Lda;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lda;->OooO0o()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lda;->c:Z

    :cond_0
    iget-object p0, p0, Lda;->b:Lde;

    invoke-static {p0, p1}, Lda;->OooO0o0(Lde;Lde;)V

    return-void
.end method

.method public OooO0o()V
    .locals 2

    iget-object v0, p0, Lda;->b:Lde;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lde;->OooOOOO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde;

    iget-object v1, p0, Lda;->b:Lde;

    invoke-static {v0, v1}, Lda;->OooO0o0(Lde;Lde;)V

    iput-object v0, p0, Lda;->b:Lde;

    return-void
.end method

.method public final OooO0oo()Lda;
    .locals 2

    iget-object v0, p0, Lda;->a:Lde;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lde;->OooOOOO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    invoke-virtual {p0}, Lda;->OooO()Lde;

    move-result-object p0

    invoke-virtual {v0, p0}, Lda;->OooO0Oo(Lde;)V

    return-object v0
.end method

.method public final OooOO0()Lde;
    .locals 1

    invoke-virtual {p0}, Lda;->OooO()Lde;

    move-result-object p0

    invoke-virtual {p0}, Lde;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lfg;

    invoke-direct {p0}, Lfg;-><init>()V

    throw p0
.end method

.method public bridge synthetic OooOOo()Leh;
    .locals 0

    invoke-virtual {p0}, Lda;->OooO()Lde;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic OooOOoo()Leh;
    .locals 0

    invoke-virtual {p0}, Lda;->OooOO0()Lde;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lda;->OooO0oo()Lda;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic i()Leh;
    .locals 0

    iget-object p0, p0, Lda;->a:Lde;

    return-object p0
.end method
