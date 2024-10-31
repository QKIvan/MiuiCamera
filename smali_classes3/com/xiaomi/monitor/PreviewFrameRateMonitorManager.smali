.class public Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager$FrameRateMonitorManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewFrameRateMonitorManager"

.field private static mFrameNumber:I


# instance fields
.field private final mPreviewHandler:Landroid/os/Handler;

.field private mReceiveMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

.field private mRenderMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreviewMonitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mPreviewHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;
    .locals 1

    sget-object v0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager$FrameRateMonitorManagerHolder;->mFrameRateMonitorManager:Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;

    return-object v0
.end method


# virtual methods
.method public getReceiveMonitor()Lcom/xiaomi/monitor/PreviewFrameRateMonitor;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mReceiveMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    iget-object v1, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mPreviewHandler:Landroid/os/Handler;

    const-string v2, "ReceivePreviewFrameRateMonitor"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mReceiveMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mReceiveMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    sget v1, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mFrameNumber:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;->setFrameNumber(I)V

    iget-object p0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mReceiveMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    return-object p0
.end method

.method public getRenderMonitor()Lcom/xiaomi/monitor/PreviewFrameRateMonitor;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mRenderMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    iget-object v1, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mPreviewHandler:Landroid/os/Handler;

    const-string v2, "RenderPreviewFrameRateMonitor"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mRenderMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mRenderMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    sget v1, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mFrameNumber:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;->setFrameNumber(I)V

    iget-object p0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mRenderMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    return-object p0
.end method

.method public newFrameArrived()Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;
    .locals 1

    sget v0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mFrameNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mFrameNumber:I

    return-object p0
.end method

.method public resetAllMonitor()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mFrameNumber:I

    iget-object v0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mReceiveMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;->resetMonitor()V

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/monitor/PreviewFrameRateMonitorManager;->mRenderMonitor:Lcom/xiaomi/monitor/PreviewFrameRateMonitor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/monitor/PreviewFrameRateMonitor;->resetMonitor()V

    :cond_1
    return-void
.end method
