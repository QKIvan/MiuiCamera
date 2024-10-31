.class public final Lcom/android/camera/animation/FolmeUtils$3;
.super Lmiuix/animation/listener/TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$onComplete:Ljava/lang/Runnable;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$view",
            "val$onComplete"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/animation/FolmeUtils$3;->val$onComplete:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/camera/animation/FolmeUtils$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toTag"
        }
    .end annotation

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$3;->val$view:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    return-void
.end method
