.class public final synthetic Ld/o/w/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic c:Ld/o/w/a/v;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ld/o/w/a/v;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/w/a/i;->c:Ld/o/w/a/v;

    iput p2, p0, Ld/o/w/a/i;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ld/o/w/a/i;->c:Ld/o/w/a/v;

    iget p0, p0, Ld/o/w/a/i;->d:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1}, Ld/o/w/a/v;->T(ILjava/lang/Throwable;)V

    return-void
.end method
