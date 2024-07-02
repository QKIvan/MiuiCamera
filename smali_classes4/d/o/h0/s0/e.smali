.class public final synthetic Ld/o/h0/s0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ld/o/h0/p0/d;


# direct methods
.method public synthetic constructor <init>(Ld/o/h0/p0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/h0/s0/e;->c:Ld/o/h0/p0/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ld/o/h0/s0/e;->c:Ld/o/h0/p0/d;

    check-cast p1, Ld/o/h0/u0/r;

    invoke-static {p0, p1}, Ld/o/h0/s0/h;->o(Ld/o/h0/p0/d;Ld/o/h0/u0/r;)V

    return-void
.end method
