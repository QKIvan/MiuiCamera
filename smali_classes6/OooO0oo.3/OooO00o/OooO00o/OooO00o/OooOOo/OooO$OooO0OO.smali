.class public LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO0OO;
.super LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field private final synthetic OooO0Oo:LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;I)V
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO0OO;->OooO0Oo:LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;

    invoke-direct {p0, p1, p2}, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;-><init>(LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO;I)V

    return-void
.end method


# virtual methods
.method public OooO00o(II)[C
    .locals 2

    new-array v0, p2, [C

    iget-object p0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO00o:[C

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public OooO0OO(C)V
    .locals 2

    iget-object v0, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO00o:[C

    iget v1, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LOooO0oo/OooO00o/OooO00o/OooO00o/OooOOo/OooO$OooO00o;->OooO0O0:I

    return-void
.end method
