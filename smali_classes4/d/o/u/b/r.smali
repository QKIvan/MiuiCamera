.class public final synthetic Ld/o/u/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ld/o/u/b/x;


# direct methods
.method public synthetic constructor <init>(Ld/o/u/b/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/u/b/r;->c:Ld/o/u/b/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ld/o/u/b/r;->c:Ld/o/u/b/x;

    invoke-static {p0}, Ld/o/u/b/x;->H(Ld/o/u/b/x;)V

    return-void
.end method
