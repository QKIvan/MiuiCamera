.class public Lcom/android/camera2/QuickViewParam;
.super Ljava/lang/Object;


# instance fields
.field public anchorFrame:Z

.field public buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

.field public needAnchorReadPixel:Z

.field public needDoAnchorFrame:Z

.field public quickShotAnimation:Z

.field public zslSound:Z


# direct methods
.method public constructor <init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "quickShotAnimation",
            "anchorFrame",
            "needDoAnchorFrame",
            "needAnchorReadPixel",
            "status"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    iput-boolean p2, p0, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    iput-boolean p3, p0, Lcom/android/camera2/QuickViewParam;->needDoAnchorFrame:Z

    iput-boolean p4, p0, Lcom/android/camera2/QuickViewParam;->needAnchorReadPixel:Z

    iput-object p5, p0, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-void
.end method
