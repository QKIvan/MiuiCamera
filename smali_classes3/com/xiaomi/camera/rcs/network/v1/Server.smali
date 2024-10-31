.class public Lcom/xiaomi/camera/rcs/network/v1/Server;
.super Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvertisingData:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/camera/rcs/network/v1/Client;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/network/v1/Server;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "appId",
            "discType",
            "commType"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;-><init>(Landroid/content/Context;III)V

    const-string p1, "VideoCast"

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/v1/Server;->mAdvertisingData:Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/xiaomi/camera/rcs/network/v1/Server;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Local device name is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAdvertisingData(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/v1/Server;->mAdvertisingData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRoleType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setupStateHierarchy()V
    .locals 2

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mStandbyState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingInitiatedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingInitiatedState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingInitiatedState;

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionInitiatedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionInitiatedState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionInitiatedState;

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionCompletedState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionCompletedState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionCompletedState;

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mStandbyState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingInitiatedState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mStandbyState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mStandbyState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionInitiatedState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionCompletedState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mAdvertisingState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    return-void
.end method

.method public startAdvertising()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/Server;->TAG:Ljava/lang/String;

    const-string v1, "startAdvertising: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "startAdvertising: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    invoke-direct {v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;-><init>()V

    iget v2, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mDiscType:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->discType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mCommType:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mCommDataType:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commDataType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/network/v1/Server;->mAdvertisingData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->advData([B)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->build()Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->startAdvertising(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    const-string p0, "startAdvertising: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopAdvertising()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/Server;->TAG:Ljava/lang/String;

    const-string v1, "stopAdvertising: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez p0, :cond_0

    const-string p0, "stopAdvertising: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->stopAdvertising()V

    const-string p0, "stopAdvertising: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
