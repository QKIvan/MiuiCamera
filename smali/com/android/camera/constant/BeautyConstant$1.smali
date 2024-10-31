.class public final Lcom/android/camera/constant/BeautyConstant$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/constant/BeautyConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/camera2/vendortag/VendorTag<",
        "Landroid/hardware/camera2/CaptureRequest$Key<",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SKIN_COLOR:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SLIM_FACE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_ENLARGE_EYE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SKIN_SMOOTH:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_NOSE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_nose_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_RISORIUS:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_LIPS:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_lips_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_CHIN:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_chin_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_NECK:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_neck_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SMILE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_smile_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SLIM_NOSE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_HAIRLINE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SOLID:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_solid_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_WHITEN:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_whiten_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_HEAD_NARROW:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_down_head_narrow"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_NOSE_TIP:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_nose_tip"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_JAW:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_jaw"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_CHEEKBONE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_cheekbone"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_TEMPLE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_temple"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_EYEBROW_DYE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_PUPIL_LINE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_pupil_line_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_JELLY_LIPS:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_jelly_lips_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_BLUSHER:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_blusher_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_HEAD_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_head_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_BODY_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_body_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SHOULDER_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_LEG_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string v1, "key_beauty_leg_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->WHOLE_BODY_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_HAIR_PUFFY:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_hair_puffy_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FRONT_MAKEUPS_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_makeups_type_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MAKEUPS_STRENGTH:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_makeups_level_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MAKEUPS_SUB_EFFECT_FILTER_STRENGTH:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "sub_filter"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AMBIENT_LIGHTING_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_ambient_lighting_type"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_MODE:Lcom/android/camera2/vendortag/VendorTag;

    const-string v1, "MODE"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_MALE_MAKEUP_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_makeup_male_switch"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_NEVUS_WIPE_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_nevus_wipe_switch"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_COMPARE:Lcom/android/camera2/vendortag/VendorTag;

    const-string v1, "COMPARE"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
