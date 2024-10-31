.class public Lcom/android/camera/settings/SearchItem;
.super Ljava/lang/Object;


# instance fields
.field public mExtras:Ljava/lang/String;

.field public mIsSecondPageItem:Z

.field public mTargetActivity:Ljava/lang/String;

.field public mTitleResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleResId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/settings/SearchItem;->mTitleResId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleResId",
            "targetActivity",
            "extras"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/settings/SearchItem;->mTitleResId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/settings/SearchItem;->mIsSecondPageItem:Z

    iput-object p2, p0, Lcom/android/camera/settings/SearchItem;->mTargetActivity:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/settings/SearchItem;->mExtras:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/settings/SearchItem;->mTitleResId:I

    return p0
.end method

.method public isSecondPageItem()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/settings/SearchItem;->mIsSecondPageItem:Z

    return p0
.end method
