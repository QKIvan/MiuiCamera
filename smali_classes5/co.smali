.class public final Lco;
.super Ljava/lang/Object;

# interfaces
.implements Lgb;


# instance fields
.field public final a:Lcn;


# direct methods
.method public constructor <init>(Lcn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Ldj;->OooO0o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco;->a:Lcn;

    iput-object p0, p1, Lcn;->b:Lco;

    return-void
.end method


# virtual methods
.method public final OooO(ILjava/lang/Object;Les;)V
    .locals 1

    iget-object p0, p0, Lco;->a:Lcn;

    check-cast p2, Leh;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    iget-object v0, p0, Lcn;->b:Lco;

    invoke-interface {p3, p2, v0}, Les;->OooO0o(Ljava/lang/Object;Lgb;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcn;->o000000(II)V

    return-void
.end method

.method public final OooO00o(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->o00000(II)V

    return-void
.end method

.method public final OooO0O0(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->oo0o0Oo(IJ)V

    return-void
.end method

.method public final OooO0OO(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->o00000Oo(II)V

    return-void
.end method

.method public final OooO0Oo(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->o000000O(IJ)V

    return-void
.end method

.method public final OooO0o(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->OoooOOo(IJ)V

    return-void
.end method

.method public final OooO0o0(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->o00000O(II)V

    return-void
.end method

.method public final OooO0oO(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->OoooOOO(II)V

    return-void
.end method

.method public final OooO0oo(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lck;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lco;->a:Lcn;

    check-cast p2, Lck;

    invoke-virtual {p0, p1, p2}, Lcn;->o00oO0O(ILck;)V

    return-void

    :cond_0
    iget-object p0, p0, Lco;->a:Lcn;

    check-cast p2, Leh;

    invoke-virtual {p0, p1, p2}, Lcn;->OoooOo0(ILeh;)V

    return-void
.end method

.method public final OooOO0(ILjava/lang/Object;Les;)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    check-cast p2, Leh;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->Ooooooo(ILeh;Les;)V

    return-void
.end method

.method public final OooOO0O(ILck;)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->OoooooO(ILck;)V

    return-void
.end method

.method public final OooOO0o(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->o0OoOo0(ILjava/lang/String;)V

    return-void
.end method

.method public final OooOOO(ID)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->OoooOO0(ID)V

    return-void
.end method

.method public final OooOOO0(I)V
    .locals 1

    iget-object p0, p0, Lco;->a:Lcn;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    return-void
.end method

.method public final OooOOOO(IF)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->o000oOoO(IF)V

    return-void
.end method

.method public final OooOOOo(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->o00000Oo(II)V

    return-void
.end method

.method public final OooOOo(IZ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->OoooOoO(IZ)V

    return-void
.end method

.method public final OooOOo0(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->oo0o0Oo(IJ)V

    return-void
.end method

.method public final OooOOoo(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2}, Lcn;->o00000(II)V

    return-void
.end method

.method public final OooOo00(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->o000000O(IJ)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object p0, p0, Lco;->a:Lcn;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    return-void
.end method
