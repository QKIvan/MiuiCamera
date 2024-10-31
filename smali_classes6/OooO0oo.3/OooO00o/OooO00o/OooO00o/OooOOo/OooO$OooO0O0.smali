.class public LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO0O0;
.super LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field private final synthetic OooO0Oo:LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;[C)V
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO0O0;->OooO0Oo:LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;

    invoke-direct {p0, p1, p2}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;-><init>(LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;[C)V

    return-void
.end method


# virtual methods
.method public OooO00o(II)[C
    .locals 3

    new-array v0, p2, [C

    iget-object v1, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO00o:[C

    array-length v2, v1

    iget p0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    sub-int/2addr v2, p0

    add-int/2addr v2, p1

    const/4 p0, 0x0

    invoke-static {v1, v2, v0, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public OooO0OO(C)V
    .locals 1

    iget v0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    iget-object v0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO00o:[C

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO0O0;->OooO0o0()I

    move-result p0

    aput-char p1, v0, p0

    return-void
.end method

.method public OooO0Oo()C
    .locals 1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO00o:[C

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO0O0;->OooO0o0()I

    move-result p0

    aget-char p0, v0, p0

    return p0
.end method

.method public OooO0o()C
    .locals 2

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO0O0;->OooO0Oo()C

    move-result v0

    iget v1, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    return v0
.end method

.method public OooO0o0()I
    .locals 1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO00o:[C

    array-length v0, v0

    iget p0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    sub-int/2addr v0, p0

    return v0
.end method
