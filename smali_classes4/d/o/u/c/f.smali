.class public final synthetic Ld/o/u/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ld/o/u/c/r;


# direct methods
.method public synthetic constructor <init>(Ld/o/u/c/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/u/c/f;->c:Ld/o/u/c/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ld/o/u/c/f;->c:Ld/o/u/c/r;

    invoke-virtual {p0}, Ld/o/u/c/r;->a2()V

    return-void
.end method
