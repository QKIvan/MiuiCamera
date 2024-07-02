.class public Ld/o/h0/u0/y;
.super Ld/o/h0/u0/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/o/h0/u0/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ld/o/h0/o0/e;
    .locals 0

    .line 1
    sget-object p0, Ld/o/h0/o0/e;->k0:Ld/o/h0/o0/e;

    return-object p0
.end method

.method public b(Ld/o/h0/h0;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ld/o/h0/u0/l;->b(Ld/o/h0/h0;)V

    return-void
.end method

.method public d()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-super {p0}, Ld/o/h0/u0/l;->d()V

    return-void
.end method

.method public i(ILd/o/h0/q0/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textureId",
            "glState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Ld/o/h0/u0/l;->i(ILd/o/h0/q0/k;)V

    return-void
.end method
