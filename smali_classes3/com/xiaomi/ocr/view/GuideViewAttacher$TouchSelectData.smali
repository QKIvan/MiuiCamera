.class public Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ocr/view/GuideViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchSelectData"
.end annotation


# static fields
.field private static final TOUCH_NO_LINE:I = -0x1


# instance fields
.field private mLastTouchChar:Lcom/xiaomi/ocr/view/CharQuadrangle;

.field private mTouchEndLineIndex:I

.field private mTouchHotspotEnd:Lcom/xiaomi/ocr/view/CharQuadrangle;

.field private mTouchHotspotStart:Lcom/xiaomi/ocr/view/CharQuadrangle;

.field private mTouchStartLineIndex:I

.field private mTouchTriggerType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchTriggerType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/ocr/view/GuideViewAttacher$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchEndLineIndex:I

    return p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchStartLineIndex:I

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;)Lcom/xiaomi/ocr/view/CharQuadrangle;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotStart:Lcom/xiaomi/ocr/view/CharQuadrangle;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;)Lcom/xiaomi/ocr/view/CharQuadrangle;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotEnd:Lcom/xiaomi/ocr/view/CharQuadrangle;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchTriggerType:I

    return p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;)Lcom/xiaomi/ocr/view/CharQuadrangle;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mLastTouchChar:Lcom/xiaomi/ocr/view/CharQuadrangle;

    return-object p0
.end method


# virtual methods
.method public onActionUp()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GuideViewAttacher"

    const-string v2, "onActionUp"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->setLastTouchChar(Lcom/xiaomi/ocr/view/CharQuadrangle;)V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "GuideViewAttacher"

    const-string v3, "reset"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->setTriggerType(I)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->updateTouchTriggerHotspotInfo(Lcom/xiaomi/ocr/view/CharQuadrangle;ILcom/xiaomi/ocr/view/CharQuadrangle;I)V

    return-void
.end method

.method public revertSelection()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotStart:Lcom/xiaomi/ocr/view/CharQuadrangle;

    iget-object v1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotEnd:Lcom/xiaomi/ocr/view/CharQuadrangle;

    iput-object v1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotStart:Lcom/xiaomi/ocr/view/CharQuadrangle;

    iput-object v0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotEnd:Lcom/xiaomi/ocr/view/CharQuadrangle;

    iget v0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchStartLineIndex:I

    iget v1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchEndLineIndex:I

    iput v1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchStartLineIndex:I

    iput v0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchEndLineIndex:I

    iget v0, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchTriggerType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchTriggerType:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchTriggerType:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setLastTouchChar(Lcom/xiaomi/ocr/view/CharQuadrangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quadrangle"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mLastTouchChar:Lcom/xiaomi/ocr/view/CharQuadrangle;

    return-void
.end method

.method public setTriggerType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchTriggerType"
        }
    .end annotation

    iput p1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchTriggerType:I

    return-void
.end method

.method public updateTouchTriggerHotspotInfo(Lcom/xiaomi/ocr/view/CharQuadrangle;ILcom/xiaomi/ocr/view/CharQuadrangle;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pendingStart",
            "selectStartLineIndex",
            "pendingEnd",
            "selectEndLineIndex"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTouchTriggerHotspotInfo selectStartLineIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectEndLineIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GuideViewAttacher"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->updateTouchTriggerHotspotInfoStart(Lcom/xiaomi/ocr/view/CharQuadrangle;I)V

    invoke-virtual {p0, p3, p4}, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->updateTouchTriggerHotspotInfoEnd(Lcom/xiaomi/ocr/view/CharQuadrangle;I)V

    return-void
.end method

.method public updateTouchTriggerHotspotInfoEnd(Lcom/xiaomi/ocr/view/CharQuadrangle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingEnd",
            "selectEndLineIndex"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotEnd:Lcom/xiaomi/ocr/view/CharQuadrangle;

    iput p2, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchEndLineIndex:I

    return-void
.end method

.method public updateTouchTriggerHotspotInfoStart(Lcom/xiaomi/ocr/view/CharQuadrangle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingStart",
            "selectStartLineIndex"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchHotspotStart:Lcom/xiaomi/ocr/view/CharQuadrangle;

    iput p2, p0, Lcom/xiaomi/ocr/view/GuideViewAttacher$TouchSelectData;->mTouchStartLineIndex:I

    return-void
.end method
