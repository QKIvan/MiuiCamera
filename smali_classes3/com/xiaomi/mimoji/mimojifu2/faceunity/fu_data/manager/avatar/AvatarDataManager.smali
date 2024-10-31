.class public Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AvatarDataManager"


# instance fields
.field private final mPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    return-void
.end method

.method private initAnimationDir()V
    .locals 6

    const-string v0, "animLogic_xiaoai.json"

    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "animGraph_xiaoai.json"

    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sources.json"

    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sources_child.json"

    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {p0, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initConfigDir animationLogicPath:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " animationGraphPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " animationAdultPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " animationChildPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initAvatarDir()V
    .locals 3

    const-string v0, "human.json"

    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingAvatarSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    const-string v1, "avatar"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " localAvatarListJson:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initConfigDir()V
    .locals 15

    const-string v0, "config/app_config.json"

    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "config/color.json"

    invoke-static {v2}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config/config.json"

    invoke-static {v4}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "config/create_config.json"

    invoke-static {v6}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "config/editor_config.json"

    invoke-static {v8}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config/mapping_cloth.json"

    invoke-static {v10}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "config/config_cloth.json"

    invoke-static {v12}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {p0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConfigDir appConfigPath:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " colorPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " configPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " createPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " editorPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mappingClothPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clothPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initOtherDir()V
    .locals 7

    const-string v0, "others/controller_config.bundle"

    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "others/capture_config.json"

    invoke-static {v2}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "others/default_avatar.json"

    invoke-static {v4}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->splicingSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->mPathMap:Ljava/util/Map;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOtherDir controllerConfigPath:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " captureConfigPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " defaultAvatarPath\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initPresetDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "avatarSaveDir",
            "sourcePath"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/constant/FUAvatarConstant;->AVATAR_DEFAULT_SOURCE_DIR:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/utils/StringUtil;->concatenateTwoStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->initPresetDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/FUPathManager;->initPresetDir(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "avatarSaveDir",
            "sourcePath"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->initPresetDir(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->initAvatarDir()V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->initConfigDir()V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->initAnimationDir()V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/fu_data/manager/avatar/AvatarDataManager;->initOtherDir()V

    return-void
.end method
