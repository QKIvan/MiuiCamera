.class public final synthetic Ld/o/w/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic c:Ld/o/w/a/v;

.field public final synthetic d:Ld/o/w/a/z/a;


# direct methods
.method public synthetic constructor <init>(Ld/o/w/a/v;Ld/o/w/a/z/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/w/a/q;->c:Ld/o/w/a/v;

    iput-object p2, p0, Ld/o/w/a/q;->d:Ld/o/w/a/z/a;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Ld/o/w/a/q;->c:Ld/o/w/a/v;

    iget-object p0, p0, Ld/o/w/a/q;->d:Ld/o/w/a/z/a;

    invoke-virtual {v0, p0, p1}, Ld/o/w/a/v;->n(Ld/o/w/a/z/a;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
