.class public final LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private OooO0O0:I

.field private OooO0OO:I

.field private OooO0Oo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000oO0:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v0, p1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v0, p1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    const/4 v0, 0x1

    iput v0, p1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o000O000:I

    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0O0:I

    if-lez v1, :cond_0

    iget v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0Oo:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    iput v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0Oo:I

    sub-int/2addr v1, v0

    iput v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0O0:I

    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    add-int/2addr v1, v0

    iput v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    :cond_0
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v1, p1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0Oo:I

    add-int/2addr p1, v0

    iput p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0Oo:I

    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0O0:I

    if-lez v1, :cond_1

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    add-int/2addr p1, v0

    iput p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0Oo:I

    sub-int/2addr v1, v0

    iput v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0O0:I

    iget p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    add-int/2addr p1, v0

    iput p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0Oo:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    if-nez v1, :cond_2

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget-object v2, v1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget-object v3, v2, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget-object v4, v3, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v4, v2, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v3, v2, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v1, v2, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000oO0:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget v4, v1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o000O000:I

    add-int/2addr v4, v0

    iput v4, v2, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o000O000:I

    iput-object v2, v3, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v2, v1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget-object v3, v1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v3, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput-object v1, v3, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000oO0:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget v4, v1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o000O000:I

    add-int/2addr v4, v0

    iput v4, v3, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o000O000:I

    iput-object v3, v1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iput v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iput v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method

.method public OooO0O0(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0O0:I

    const/4 p1, 0x0

    iput p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0Oo:I

    iput p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO0OO:I

    const/4 p1, 0x0

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    return-void
.end method

.method public OooO0OO()LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooO0O0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooOO0$OooOO0O;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
