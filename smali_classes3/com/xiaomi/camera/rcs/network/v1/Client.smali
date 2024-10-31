.class public Lcom/xiaomi/camera/rcs/network/v1/Client;
.super Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/camera/rcs/network/v1/Client;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/network/v1/Client;->TAG:Ljava/lang/String;

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

    return-void
.end method


# virtual methods
.method public connectTo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpointId"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/Client;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "connectTo: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/v1/Client;->getRoleType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->requestConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): X"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getRoleType()I
    .locals 0

    const/4 p0, 0x2

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

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$DiscoveringState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$DiscoveringState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mDiscoveringState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$DiscoveringState;

    new-instance v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;

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

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mDiscoveringState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$DiscoveringState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mDiscoveringState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$DiscoveringState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionInitiatedState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionCompletedState;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    return-void
.end method

.method public startDiscovery()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/Client;->TAG:Ljava/lang/String;

    const-string v1, "startDiscovery: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "startDiscovery: not started yet"

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

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->build()Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->startDiscovery(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    const-string p0, "startDiscovery: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopDiscovery()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/Client;->TAG:Ljava/lang/String;

    const-string v1, "stopDiscovery: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez p0, :cond_0

    const-string p0, "stopDiscovery: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->stopDiscovery()V

    const-string p0, "stopDiscovery: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
