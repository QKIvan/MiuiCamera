.class public Lcom/xiaomi/renderengine/data/AnimRendererAttribute;
.super Lcom/xiaomi/renderengine/data/RendererAttribute;


# instance fields
.field public mCapAnimAlphaPercent:F

.field public mCapAnimDuration:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/renderengine/data/RendererAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    iput p1, p0, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "[AnimRendererAttribute] mCapAnimDuration:Int, mCapAnimAlphaPercent:Float"

    return-object p0
.end method
