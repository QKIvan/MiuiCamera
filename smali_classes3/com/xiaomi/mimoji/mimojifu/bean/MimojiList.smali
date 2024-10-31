.class public Lcom/xiaomi/mimoji/mimojifu/bean/MimojiList;
.super Lcom/android/camera/resource/BaseResourceList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/BaseResourceList<",
        "Lcom/xiaomi/mimoji/common/bean/AvatarItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:I = 0x1


# instance fields
.field public country:Ljava/lang/String;

.field public currentListVersionTag:Ljava/lang/String;

.field public materialSize:Ljava/lang/String;

.field public materialVersion:Ljava/lang/String;

.field public transient materialVersionDeparted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceList;-><init>()V

    const-string v0, "mimojilist"

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/bean/MimojiList;->currentListVersionTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public getListTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/bean/MimojiList;->currentListVersionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listVersionTag"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public parseInitialData(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    const-string v0, "material_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/bean/MimojiList;->materialVersion:Ljava/lang/String;

    const-string v0, "material_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/bean/MimojiList;->materialSize:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "jsonObject",
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/bean/MimojiList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/xiaomi/mimoji/common/bean/AvatarItem;

    move-result-object p0

    return-object p0
.end method

.method public parseSingleItem(Lorg/json/JSONObject;I)Lcom/xiaomi/mimoji/common/bean/AvatarItem;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jsonObject",
            "index"
        }
    .end annotation

    new-instance p0, Lcom/xiaomi/mimoji/common/bean/AvatarItem;

    invoke-direct {p0}, Lcom/xiaomi/mimoji/common/bean/AvatarItem;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mimoji/common/bean/AvatarItem;->parseSummaryData(Lorg/json/JSONObject;I)V

    return-object p0
.end method

.method public setLocalVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listVersionTag",
            "newVersion"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/resource/BaseResourceList;->departed:Z

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/bean/MimojiList;->currentListVersionTag:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public stateAllReady()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/resource/BaseResourceList;->getResourceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mimoji/common/bean/AvatarItem;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/bean/AvatarItem;->isCloudItem()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
