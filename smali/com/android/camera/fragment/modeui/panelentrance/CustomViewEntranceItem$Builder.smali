.class public Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder<",
        "Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCustomView:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private mFunctionListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$FunctionListener;

.field private mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;-><init>(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mCustomView:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$FunctionListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mFunctionListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$FunctionListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)V

    return-object v0
.end method

.method public setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customView"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mCustomView:I

    return-object p0
.end method

.method public setFunctionListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$FunctionListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mFunctionListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$FunctionListener;

    return-object p0
.end method

.method public setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object p0
.end method
