.class public Lcom/android/camera/module/PhoneStateDetector;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/PhoneStateDetector$InstanceHolder;
    }
.end annotation


# instance fields
.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/module/PhoneStateDetector;
    .locals 1

    invoke-static {}, Lcom/android/camera/module/PhoneStateDetector$InstanceHolder;->access$000()Lcom/android/camera/module/PhoneStateDetector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/PhoneStateDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "incomingNumber"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/PhoneStateDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPhoneStateListener(Landroid/telephony/PhoneStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneStateListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/PhoneStateDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method
