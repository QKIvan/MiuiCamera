.class public final Lcom/android/camera/ClassUseInLaunch;
.super Ljava/lang/Object;


# static fields
.field private static final CLASS_IN_LAUNCH:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ClassUseInLaunch"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Lio/reactivex/internal/operators/single/SingleSubscribeOn;

    const-class v1, Lmiuix/appcompat/R;

    const/16 v2, 0x16a

    new-array v2, v2, [Ljava/lang/String;

    const-class v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroidx/fragment/app/FragmentController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-class v3, Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-class v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-class v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/AudioMapMove;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/AutoLockManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/Camera;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/CameraBrightness;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/FocusManagerAbstract;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/zoom/HybridZoomingSystem;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/LocalParallelService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/LocationManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/PictureSizeManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ThermalDetector;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x18

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x19

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/data/data/extra/DataItemLive;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/effect/EffectController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/watermark/gen2/CustomTextWaterMark;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/effect/renders/EffectRenderGroup;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/features/mode/capture/CaptureModeUI;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/BaseFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/DispatchFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x23

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x25

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x27

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x29

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2a

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/hdr10/ComponentConfigHDR10;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2b

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/common/BaseModuleCameraManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/image/Camera2ModuleHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/image/ModuleSizeFormatManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/impl/ImplFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x31

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/interceptor/camera/SATMasterCameraIDMultipleASD;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/loader/base/FunctionCameraPrepare;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x33

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x34

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x35

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x36

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x37

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x38

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/shottype/CaptureShotTypeHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x39

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/storage/MemoryManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3b

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/storage/Storage;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3c

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/trackfocus/TrackFocusRequestTag;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3d

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/AdaptiveTextView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/AudioZoomIndicator;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x41

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x43

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x44

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x45

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x46

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x47

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/watermark/WaterMarkUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x48

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/zoommap/RegionHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x49

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/zoommap/ZoomMapController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4a

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4b

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/CaptureRequestBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4c

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4d

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/compat/MiCameraCompat;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4e

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/imagereaders/SatImageReaderHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4f

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x51

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x52

    aput-object v3, v2, v4

    const-class v3, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x53

    aput-object v3, v2, v4

    const-class v3, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x54

    aput-object v3, v2, v4

    const-class v3, Lcom/android/zxing/CacheImageDecoder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x55

    aput-object v3, v2, v4

    const-class v3, Lcom/android/zxing/PreviewDecodeManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x56

    aput-object v3, v2, v4

    const-class v3, Lcom/android/zxing/QRCodeDecoder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x57

    aput-object v3, v2, v4

    const-class v3, Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x58

    aput-object v3, v2, v4

    const-class v3, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x59

    aput-object v3, v2, v4

    const-class v3, Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5a

    aput-object v3, v2, v4

    const-class v3, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5b

    aput-object v3, v2, v4

    const-class v3, Lcom/xiaomi/camera/rx/CameraOpenObservable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5c

    aput-object v3, v2, v4

    const-class v3, Lio/reactivex/Completable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5d

    aput-object v3, v2, v4

    const-class v3, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5e

    aput-object v3, v2, v4

    const-class v3, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    aput-object v3, v2, v4

    const-class v3, Lio/reactivex/internal/operators/completable/CompletableCreate;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x60

    aput-object v3, v2, v4

    const-class v3, Lio/reactivex/internal/observers/EmptyCompletableObserver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x61

    aput-object v3, v2, v4

    const-class v3, Lcom/xiaomi/camera/rx/CameraSchedulers;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x62

    aput-object v3, v2, v4

    const-class v3, Landroidx/appcompat/view/WindowCallbackWrapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x63

    aput-object v3, v2, v4

    const-class v3, Lmiuix/core/util/variable/WindowWrapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    aput-object v3, v2, v4

    const-class v3, Lmiuix/reflect/Reflects;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    aput-object v3, v2, v4

    const-class v3, Lmiuix/internal/util/AttributeResolver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x67

    aput-object v3, v2, v4

    const-class v3, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x68

    aput-object v3, v2, v4

    const-class v3, Lmiuix/core/util/WindowUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    aput-object v3, v2, v4

    const-class v3, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6a

    aput-object v3, v2, v4

    const-class v3, Lmiuix/appcompat/internal/util/LayoutUIUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6b

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x6c

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x6d

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/PopupMenuLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x6e

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/display/device/ScreenOrientationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x6f

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x70

    aput-object v1, v2, v3

    const-class v1, Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x71

    aput-object v1, v2, v3

    const-class v1, Landroidx/lifecycle/ViewModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x72

    aput-object v1, v2, v3

    const-class v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x73

    aput-object v1, v2, v3

    const-class v1, Landroidx/activity/result/contract/ActivityResultContract;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x74

    aput-object v1, v2, v3

    const-class v1, Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x75

    aput-object v1, v2, v3

    const-class v1, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x76

    aput-object v1, v2, v3

    const-class v1, Lmiuix/autodensity/AutoDensityConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x77

    aput-object v1, v2, v3

    const-class v1, Landroidx/lifecycle/ReportFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x78

    aput-object v1, v2, v3

    const-class v1, Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x79

    aput-object v1, v2, v3

    const-class v1, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7a

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/RenderEngineInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7b

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/render_engine/RenderEngineV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7c

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7d

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/RenderState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7e

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7f

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/RenderParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x81

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/log/LogRE;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x82

    aput-object v1, v2, v3

    const-class v1, LOooO0o0/o00ooOoO/o000O00O/o0000oo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x83

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/gl/GLThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x84

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/Renderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x85

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x86

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x87

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x88

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x89

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8a

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8b

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8c

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/camera/rcs/util/RCSLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8d

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/statistic/CameraStatUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8e

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/effect/render/FilterType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8f

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x90

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x91

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/SensorStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x92

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/render_engine/RenderListenerV1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x93

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/effect/draw_mode/DrawAttribute;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x94

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x95

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x96

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x97

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x98

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/render_engine/StateListenerV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x99

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/render_engine/ExtRendererV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9a

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/render_engine/RenderListenerV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9b

    aput-object v1, v2, v3

    const-class v1, Landroidx/core/util/Pools;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9c

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/protocol/ModeCoordinatorImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9d

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/EffectChangedListenerController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9e

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/impl/component/BackStackImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9f

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/impl/component/KeyEventImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa0

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/display/device/IFoldState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa1

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/display/device/FoldStateAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa2

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/display/device/FoldState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa3

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa4

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/log/LogU;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa5

    aput-object v1, v2, v3

    const-class v1, LOooOOO0/OooO00o/OooO00o/OooO0O0/OooO00o/OooO0O0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa6

    aput-object v1, v2, v3

    const-class v1, LOooOOO0/OooO00o/OooO00o/OooO0O0/OooO00o/OooO00o;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa7

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa8

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/zoom/ScaleGestureDetector;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa9

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/observeable/VMBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xaa

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xab

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/lensdirty/LensDirtyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xac

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/trackfocus/CameraTrackInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xad

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/common/BaseModuleStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xae

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/ImageModuleStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xaf

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb0

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/CaptureModuleCameraManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb1

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb2

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/common/BaseAppStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb3

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/common/BaseUserEventManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb4

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/ImageActionImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb5

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/AnchorPreviewCallbackImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb6

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/protocol/protocols/TopConfigProtocol;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb7

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/ScreenLightCallbackImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb8

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/asd/FlashAsdManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb9

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xba

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xbb

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xbc

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xbd

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/hdr/HdrTrigger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xbe

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xbf

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc0

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/interceptor/camera/FaceDetectCbImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc1

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc2

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc3

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc4

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/encoder/MediaEncoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc5

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc6

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/features/mode/BaseModuleDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc7

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/features/mode/capture/CaptureModuleDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc8

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/loader/camera2/CompletablePreDataSetup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc9

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/fragment/clone/Config;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xca

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/observeable/DataItemObservable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xcb

    aput-object v1, v2, v3

    const-class v1, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xcc

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xcd

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xce

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xcf

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd0

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningVideoPrompter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd1

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd2

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd3

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd4

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd5

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd6

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd7

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd8

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd9

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xda

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/config/ComponentRunningZoom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xdb

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xdc

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xdd

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xde

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xdf

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningCvLens;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe0

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe1

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/config/ComponentRunningFNumber;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe2

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningAmbientLighting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe3

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/features/mode/cosmeticmirror/config/ComponentRunningCosmeticMirror;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe4

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe5

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/display/device/FlatSelfieManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe6

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/customization/FlashHalo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe7

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/BatteryDetector;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe8

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe9

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/aiwatermark/util/WatermarkConstant;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xea

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xeb

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xec

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera2/vendortag/struct/UiRelatedMeta;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xed

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xee

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/loader/base/FunctionModuleSetup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xef

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/loader/base/FunctionDataSetup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf0

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/loader/base/FunctionUISetup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf1

    aput-object v1, v2, v3

    const-class v1, Lcom/android/camera/module/loader/base/WeakNullHolder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf2

    aput-object v1, v2, v3

    const-class v1, Lio/reactivex/internal/operators/single/SingleMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf3

    aput-object v1, v2, v3

    const-class v1, Lio/reactivex/internal/operators/single/SingleCreate;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf4

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf5

    aput-object v1, v2, v3

    const-class v1, Lio/reactivex/internal/functions/Functions;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf6

    aput-object v1, v2, v3

    const-class v1, Lio/reactivex/internal/operators/single/SingleZipArray;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf7

    aput-object v1, v2, v3

    const-class v1, Lio/reactivex/internal/operators/single/SingleDetach;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf8

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf9

    aput-object v0, v2, v1

    const-class v0, Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa

    aput-object v0, v2, v1

    const-class v0, Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfb

    aput-object v0, v2, v1

    const-class v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfc

    aput-object v0, v2, v1

    const-class v0, Lio/reactivex/internal/operators/observable/ObservableMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfd

    aput-object v0, v2, v1

    const-class v0, Lio/reactivex/internal/observers/BasicFuseableObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfe

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/bottom/FragmentBottomActionCV;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xff

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/tab/FragmentModeSelectorCV;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x100

    aput-object v0, v2, v1

    const-class v0, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x101

    aput-object v0, v2, v1

    const-class v0, LOooO0OO/OooO0O0/OooO0OO/OooO0OO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/module/loader/base/StartControlFeatureDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x103

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x104

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/FragmentHalo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x105

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/FragmentReferenceLine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x106

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/doc4/FragmentOCR;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x107

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentBottomPopupTipsCV;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x108

    aput-object v0, v2, v1

    const-class v0, Lmiuix/core/util/MiuixUIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x109

    aput-object v0, v2, v1

    const-class v0, Lcom/xiaomi/camera/MIVICaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10a

    aput-object v0, v2, v1

    const-class v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10b

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10c

    aput-object v0, v2, v1

    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10d

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/TintContextWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10e

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10f

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/ThemeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x110

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x111

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x112

    aput-object v0, v2, v1

    const-class v0, Landroidx/collection/LruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x113

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/TintTypedArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x114

    aput-object v0, v2, v1

    const-class v0, Landroidx/core/view/ViewCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x115

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x116

    aput-object v0, v2, v1

    const-class v0, LOooO0OO/OooO00o/OooO00o/OooOOO0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x117

    aput-object v0, v2, v1

    const-class v0, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooO00o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x118

    aput-object v0, v2, v1

    const-class v0, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x119

    aput-object v0, v2, v1

    const-class v0, LOooO0OO/OooO00o/OooO00o/o00Oo0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11a

    aput-object v0, v2, v1

    const-class v0, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOOO0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11b

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/widget/DrawableUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11c

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11d

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/tab/ModeSelectViewCV;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11e

    aput-object v0, v2, v1

    const-class v0, Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11f

    aput-object v0, v2, v1

    const-class v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x120

    aput-object v0, v2, v1

    const-class v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x121

    aput-object v0, v2, v1

    const-class v0, Landroidx/core/view/ViewConfigurationCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x122

    aput-object v0, v2, v1

    const-class v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x123

    aput-object v0, v2, v1

    const-class v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x124

    aput-object v0, v2, v1

    const-class v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x125

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x126

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x127

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x128

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x129

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12a

    aput-object v0, v2, v1

    const-class v0, Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12b

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12d

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12e

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12f

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x130

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/trackfocus/TrackFocusDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x131

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/trackfocus/TrackSaliencyDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x132

    aput-object v0, v2, v1

    const-class v0, Landroidx/appcompat/content/res/AppCompatResources;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x133

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x134

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x135

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x136

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x137

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x138

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/CameraFocusPaintCenterIndicatorCV;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x139

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13a

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13b

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13c

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13d

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13e

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13f

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x140

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/CenterMarkDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x141

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/GradienterDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x142

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/doc4/Doc4RegionView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x143

    aput-object v0, v2, v1

    const-class v0, Lcom/xiaomi/compat/manager/SecurityManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x144

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/FileCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x145

    aput-object v0, v2, v1

    const-class v0, Lcom/xiaomi/compat/manager/StorageManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x146

    aput-object v0, v2, v1

    const-class v0, Lio/reactivex/internal/operators/single/SingleFromCallable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x147

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x148

    aput-object v0, v2, v1

    const-class v0, Lcom/xiaomi/camera/common/DefaultLifecycleObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x149

    aput-object v0, v2, v1

    const-class v0, Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14a

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14b

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14c

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14d

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14e

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14f

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x150

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/FragmentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x151

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/protocol/protocols/CvLensProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x152

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x153

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x154

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicViewEntranceItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x155

    aput-object v0, v2, v1

    const-class v0, Lio/reactivex/internal/operators/observable/ObservableFromIterable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x156

    aput-object v0, v2, v1

    const-class v0, Lio/reactivex/internal/operators/observable/ObservableFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x157

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/data/cloud/DataCloudFeatureController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x158

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/data/cloud/DataCloudItemConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x159

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15a

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15b

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15c

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15d

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/multi/reporter/SampleSplitLoadReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15e

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15f

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/multi/reporter/SampleSplitInstallReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x160

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x161

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/multi/reporter/SampleSplitUninstallReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x162

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUpdateReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x163

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/multi/reporter/SampleSplitUpdateReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x164

    aput-object v0, v2, v1

    const-class v0, Lcom/android/camera/multi/SampleDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x165

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x166

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x167

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x168

    aput-object v0, v2, v1

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x169

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/camera/ClassUseInLaunch;->CLASS_IN_LAUNCH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preload()V
    .locals 5

    sget-object v0, Lcom/android/camera/ClassUseInLaunch;->CLASS_IN_LAUNCH:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "ClassUseInLaunch"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
