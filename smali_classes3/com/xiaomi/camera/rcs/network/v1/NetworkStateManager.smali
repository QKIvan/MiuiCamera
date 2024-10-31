.class public abstract Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;
.super Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionCompletedState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionInitiatedState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$DiscoveringState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingInitiatedState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$NetworkEventDispatcher;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AppCommType;,
        Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AppDiscType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAdvertisingState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$AdvertisingState;

.field public mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

.field public final mAppId:I

.field public mBindingCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingCompletedState;

.field public mBindingInitiatedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$BindingInitiatedState;

.field public final mCallback:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateCallback;

.field public final mCommDataType:I

.field public final mCommType:I

.field public mConnectionCompletedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionCompletedState;

.field public mConnectionInitiatedState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$ConnectionInitiatedState;

.field public final mContext:Landroid/content/Context;

.field public final mDiscType:I

.field public mDiscoveringState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$DiscoveringState;

.field public mEndpointFoundState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$EndpointFoundState;

.field private mIsStateMachineWorking:Z

.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/rcs/network/v1/NetworkStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mStandbyState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
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

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mIsStateMachineWorking:Z

    iput p2, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mAppId:I

    iput p3, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mDiscType:I

    iput p4, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mCommType:I

    const/16 p2, 0x8

    if-ne p4, p2, :cond_0

    const/4 p2, 0x4

    iput p2, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mCommDataType:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mCommDataType:I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$NetworkEventDispatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$NetworkEventDispatcher;-><init>(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$1;)V

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mCallback:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateCallback;

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->setupStateHierarchy()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->setDbg(Z)V

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->setLogRecSize(I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mIsStateMachineWorking:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2300(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2400(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2500(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2600(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2800(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/content/Context;IIII)Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "appId",
            "roleType",
            "discType",
            "commType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/xiaomi/camera/rcs/network/v1/Client;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/xiaomi/camera/rcs/network/v1/Client;-><init>(Landroid/content/Context;III)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported role type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Lcom/xiaomi/camera/rcs/network/v1/Server;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/xiaomi/camera/rcs/network/v1/Server;-><init>(Landroid/content/Context;III)V

    return-object p2
.end method


# virtual methods
.method public acceptConnection(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpointId"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "acceptConnection: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointTrusted(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->acceptConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

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

.method public acceptConnection(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "peerId",
            "connLevel"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in V2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addListener(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

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

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "connectTo: only allowed for client"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
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

.method public connectTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceId"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in V2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disconnectFrom(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpointId"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectFrom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "disconnectFrom: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->disconnectFromEndPoint(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

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

.method public disconnectFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "peerId"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in V2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onQuitting()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "onQuitting: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/xiaomi/camera/util/StateMachine;->onQuitting()V

    const-string p0, "onQuitting: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rejectConnection(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpointId"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "rejectConnection: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;

    invoke-direct {v1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setEndPointId(I)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->setRoleType(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->rejectConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V

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

.method public rejectConnection(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "peerId",
            "connLevel"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in V2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeListener(Lcom/xiaomi/camera/rcs/network/v1/NetworkStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendPayload(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "endpointId",
            "payload"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPayload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "sendPayload: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->setEndPointId(I)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->setPayload([B)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->setRoleType(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiApp;->sendPayload(Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "sendPayload: payload is empty"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPayload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "peerId",
            "payload"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in V2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "start: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mIsStateMachineWorking:Z

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mStandbyState:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager$StandbyState;

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/util/StateMachine;->setInitialState(Lcom/xiaomi/camera/util/State;)V

    invoke-super {p0}, Lcom/xiaomi/camera/util/StateMachine;->start()V

    const-string v1, "start: X"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startAdvertising()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "startAdvertising: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const-string p0, "startAdvertising: only allowed for server"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "startAdvertising: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDiscovery()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "startDiscovery: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "startDiscovery: only allowed for client"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "startDiscovery: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startService()V
    .locals 4

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "startService: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-eqz v1, :cond_0

    const-string p0, "startService: already started"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mCallback:Lcom/xiaomi/camera/rcs/network/v1/NetworkStateCallback;

    iget v3, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mAppId:I

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mi_connect_sdk/api/MiConnect;->newApp(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;I)Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    check-cast v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/BinderBase;->init()V

    const-string p0, "startService: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "stop: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mIsStateMachineWorking:Z

    const v1, 0xdead

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(I)V

    invoke-super {p0}, Lcom/xiaomi/camera/util/StateMachine;->quit()V

    const-string v1, "stop: X"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopAdvertising()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "stopAdvertising: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const-string p0, "stopAdvertising: only allowed for server"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "stopAdvertising: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopDiscovery()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "stopDiscovery: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "stopDiscovery: only allowed for client"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "stopDiscovery: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopService()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->TAG:Ljava/lang/String;

    const-string v1, "stopService: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    if-nez v1, :cond_0

    const-string p0, "stopService: not started yet"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/MiConnect;->delApp(Lcom/xiaomi/mi_connect_sdk/api/MiApp;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/rcs/network/v1/NetworkStateManager;->mApi:Lcom/xiaomi/mi_connect_sdk/api/MiApp;

    const-string p0, "stopService: X"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
