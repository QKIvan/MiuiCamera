.class public Lcom/android/camera/fragment/top/FragmentTopAlert$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;->showCloseConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$18;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/android/camera/protocol/protocols/LiveAudioChanges;Lcom/android/camera/protocol/protocols/milive/LiveRecordState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "audioChanges",
            "recordState"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->isRecordingPaused()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/LiveAudioChanges;->clearAudio()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$run$1(Lcom/android/camera/protocol/protocols/LiveAudioChanges;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "audioChanges"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o0oo/o00000O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o0oo/o00000O0;-><init>(Lcom/android/camera/protocol/protocols/LiveAudioChanges;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$run$2(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "topAlert"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf5

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FragmentTopAlert"

    const-string/jumbo v1, "showCloseConfirm onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$18;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2400(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1500(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/LiveAudioChanges;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o0oo/o000000O;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o0oo/o000000O;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o0oo/o00000;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o0oo/o00000;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
