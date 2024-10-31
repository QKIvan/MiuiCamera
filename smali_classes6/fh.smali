.class public final Lfh;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method

.method public static bridge synthetic OooO(Ljava/lang/Object;Lgb;)V
    .locals 0

    check-cast p0, Lfi;

    invoke-virtual {p0, p1}, Lfi;->OooO0oO(Lgb;)V

    return-void
.end method

.method public static bridge synthetic OooO00o()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lfi;->OooO00o()Lfi;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic OooO0OO(Ljava/lang/Object;IJ)V
    .locals 1

    check-cast p0, Lfi;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lga;->OooO0O0(II)I

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfi;->OooO0OO(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic OooO0Oo(Ljava/lang/Object;ILck;)V
    .locals 1

    check-cast p0, Lfi;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lga;->OooO0O0(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lfi;->OooO0OO(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic OooO0o(Ljava/lang/Object;Lgb;)V
    .locals 0

    check-cast p0, Lfi;

    invoke-virtual {p0, p1}, Lfi;->OooO0o0(Lgb;)V

    return-void
.end method

.method public static OooO0o0(Ljava/lang/Object;Lfi;)V
    .locals 0

    check-cast p0, Lde;

    iput-object p1, p0, Lde;->h:Lfi;

    return-void
.end method

.method public static OooOO0O(Ljava/lang/Object;)Lfi;
    .locals 0

    check-cast p0, Lde;

    iget-object p0, p0, Lde;->h:Lfi;

    return-object p0
.end method

.method public static bridge synthetic OooOO0o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lfi;

    check-cast p1, Lfi;

    sget-object v0, Lfi;->a:Lfi;

    invoke-virtual {p1, v0}, Lfi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lfi;->OooO0O0(Lfi;Lfi;)Lfi;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static bridge synthetic OooOOO(Ljava/lang/Object;)I
    .locals 0

    check-cast p0, Lfi;

    invoke-virtual {p0}, Lfi;->OooO0o()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic OooOOO0(Ljava/lang/Object;)I
    .locals 0

    check-cast p0, Lfi;

    invoke-virtual {p0}, Lfi;->OooO0oo()I

    move-result p0

    return p0
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lfh;->OooOO0O(Ljava/lang/Object;)Lfi;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfi;->e:Z

    return-void
.end method

.method public bridge synthetic OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lfi;

    invoke-static {p1, p2}, Lfh;->OooO0o0(Ljava/lang/Object;Lfi;)V

    return-void
.end method

.method public bridge synthetic OooO0oo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lfh;->OooOO0O(Ljava/lang/Object;)Lfi;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lfi;

    invoke-static {p1, p2}, Lfh;->OooO0o0(Ljava/lang/Object;Lfi;)V

    return-void
.end method
