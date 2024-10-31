.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;

# interfaces
.implements Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;


# static fields
.field private static final MAX_EDIT_HISTORY:I = 0xa

.field private static final MIN_TIME_ALLOWED_DETECT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "PrivacyWatermarkEditActivity"


# instance fields
.field private mButtonClearHistory:Landroid/widget/TextView;

.field private mButtonSave:Landroid/widget/ImageButton;

.field private mCountTip:Landroid/widget/TextView;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mEditView:Landroid/widget/EditText;

.field private final mGson:Lcom/google/gson/Gson;

.field private mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

.field private mHistoryLabel:Landroid/widget/TextView;

.field private final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->updateEditState(Ljava/lang/String;)V

    return-void
.end method

.method private clearHistory()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->submitList(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEditHistory(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onCreate$2(Lcom/android/camera/privacyutil/ContentUtil;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "contentUtil",
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/camera/privacyutil/ContentUtil;->checkContentCompliance(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$onCreate$3(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->save(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120341

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$4(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->clearHistory()V

    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    return-void
.end method

.method public static synthetic lambda$onCreate$5(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "insets"
        }
    .end annotation

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-lez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method private save(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PrivacyWatermarkEditActivity"

    const-string/jumbo v3, "saveContent: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setPrivacyWatermark(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEnabled(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->updateHistory(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private toggleHistoryView()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEditState(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editText"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mCountTip:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b002e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const p1, 0x7f120aab

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHistory(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editText"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEditHistory(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->lambda$onCreate$1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0OO(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->lambda$onCreate$3(Landroid/util/Pair;)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->lambda$onCreate$4(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oooo()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOooO()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isIDCardMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->setRequestedOrientation(I)V

    :goto_0
    const p1, 0x7f0d0022

    invoke-static {p0, p1}, Lcom/android/camera/ui/privacylogo/PrivacyLogoUtils;->getPrivacyLogoWrappedLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermarkEditHistory()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$1;

    invoke-direct {v3, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$1;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const p1, 0x7f0a050b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f0a00d7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    const v0, 0x7f0a01c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    const v0, 0x7f0a0144

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mCountTip:Landroid/widget/TextView;

    const v0, 0x7f0a0264

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO0o;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO0o;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;

    invoke-direct {p1, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance p1, Lcom/android/camera/privacyutil/ContentUtil;

    invoke-direct {p1}, Lcom/android/camera/privacyutil/ContentUtil;-><init>()V

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/android/camera/privacyutil/RxViewAction;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/android/camera/privacyutil/RxViewAction;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/android/camera/privacyutil/RxViewClick;

    iget-object v2, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/android/camera/privacyutil/RxViewClick;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO0O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO0O0;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO0OO;

    invoke-direct {v1, p1}, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO0OO;-><init>(Lcom/android/camera/privacyutil/ContentUtil;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooOO0O;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooOO0O;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooO;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    new-instance p1, Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    invoke-direct {p1}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->setEventListener(Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;)V

    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->submitList(Ljava/util/List;)V

    const p1, 0x7f0a0265

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    const p1, 0x7f0a00c6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooOO0;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0oO/OooOO0;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/android/camera/Util;->showInputMethodDelayed(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/display/device/ScreenOrientationManager;->enableRequestedOrientation(Landroid/app/Activity;Z)V

    :cond_1
    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemText"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/camera/display/device/ScreenOrientationManager;->enableRequestedOrientation(Landroid/app/Activity;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
