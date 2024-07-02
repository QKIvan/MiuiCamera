.class public final synthetic Ld/o/w/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ld/o/w/e/k0;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ld/o/w/e/k0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/w/e/e;->c:Ld/o/w/e/k0;

    iput p2, p0, Ld/o/w/e/e;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld/o/w/e/e;->c:Ld/o/w/e/k0;

    iget p0, p0, Ld/o/w/e/e;->d:I

    invoke-virtual {v0, p0}, Ld/o/w/e/k0;->R5(I)V

    return-void
.end method
