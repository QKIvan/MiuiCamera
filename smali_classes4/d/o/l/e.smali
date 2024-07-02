.class public final synthetic Ld/o/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/l/e;->c:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ld/o/l/e;->c:Ljava/lang/StringBuilder;

    check-cast p1, Ld/o/l/h$c;

    invoke-static {p0, p1}, Ld/o/l/h;->D(Ljava/lang/StringBuilder;Ld/o/l/h$c;)V

    return-void
.end method
