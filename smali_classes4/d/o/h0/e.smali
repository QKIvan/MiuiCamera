.class public final synthetic Ld/o/h0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ld/o/h0/u0/r;

.field public final synthetic d:Ld/o/h0/p0/d;


# direct methods
.method public synthetic constructor <init>(Ld/o/h0/u0/r;Ld/o/h0/p0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/h0/e;->c:Ld/o/h0/u0/r;

    iput-object p2, p0, Ld/o/h0/e;->d:Ld/o/h0/p0/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld/o/h0/e;->c:Ld/o/h0/u0/r;

    iget-object p0, p0, Ld/o/h0/e;->d:Ld/o/h0/p0/d;

    invoke-static {v0, p0}, Ld/o/h0/h0;->g1(Ld/o/h0/u0/r;Ld/o/h0/p0/d;)V

    return-void
.end method
