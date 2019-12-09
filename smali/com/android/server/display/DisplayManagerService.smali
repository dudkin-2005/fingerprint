.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$LocalService;,
        Lcom/android/server/display/DisplayManagerService$BinderService;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$Injector;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELAY_MESSAGE:I = 0x8

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_LOAD_BRIGHTNESS_CONFIGURATION:I = 0x7

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_BRIGHTNESS_TRACKER:I = 0x6

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTERS:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultDisplayDefaultColorMode:I

.field private final mDefaultViewport:Landroid/hardware/display/DisplayViewport;

.field private final mDelayDeliverCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDelayDisplayId:I

.field mDelayEvent:I

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

.field private mGlobalDisplayBrightness:I

.field private mGlobalDisplayState:I

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field private final mMinimumBrightnessSpline:Landroid/util/Spline;

.field private mNextBuiltInDisplayId:I

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public mSafeMode:Z

.field private final mSingleDisplayDemoMode:Z

.field private mStableDisplaySize:Landroid/graphics/Point;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

.field private final mTempVirtualTouchViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field private final mVirtualTouchViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWifiDisplayScanRequestCount:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 306
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    .line 307
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/DisplayManagerService$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    .line 218
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    .line 221
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 255
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 259
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    .line 260
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 281
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;

    .line 282
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempVirtualTouchViewports:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 312
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 313
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 314
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 315
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 316
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 317
    const-string/jumbo v0, "persist.demo.singledisplay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    .line 318
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 319
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 321
    const v2, 0x1070031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 323
    .local v2, "lux":[F
    const v3, 0x1070032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 325
    .local v3, "nits":[F
    new-instance v4, Landroid/hardware/display/Curve;

    invoke-direct {v4, v2, v3}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 326
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 328
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 329
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 330
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 331
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempVirtualTouchViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfiguration()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->deliverDelayDisplayEvent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Z

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V

    return-void
.end method

.method static synthetic access$2000()Z
    .registers 1

    .line 145
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayManagerService;I)[I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayIdsInternal(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getStableDisplaySizeInternal()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestColorModeInternal(II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayManagerService;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # F

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setSaturationLevelInternal(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 13
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "x2"    # Landroid/media/projection/IMediaProjection;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Landroid/view/Surface;
    .param p10, "x10"    # I
    .param p11, "x11"    # Ljava/lang/String;

    .line 145
    invoke-direct/range {p0 .. p11}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/Surface;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayPowerController;

    .line 145
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/DisplayInfo;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/DisplayInfo;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/display/DisplayManagerService;IZFIZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # F
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIZ)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/display/DisplayManagerService;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    return-object v0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 11
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 992
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 993
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 995
    .local v1, "isDefault":Z
    :goto_e
    if-eqz v1, :cond_2f

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 996
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to add a second default display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v1, 0x0

    .line 1000
    :cond_2f
    const/4 v3, 0x0

    if-nez v1, :cond_4d

    iget-boolean v4, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    if-eqz v4, :cond_4d

    .line 1001
    const-string v2, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-object v3

    .line 1006
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getPhysicalId()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(ZI)I

    move-result v4

    .line 1007
    .local v4, "displayId":I
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v5

    .line 1009
    .local v5, "layerStack":I
    new-instance v6, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v6, v4, v5, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1010
    .local v6, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1011
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v7

    if-nez v7, :cond_80

    .line 1013
    const-string v2, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-object v3

    .line 1018
    :cond_80
    invoke-direct {p0, v6, p1}, Lcom/android/server/display/DisplayManagerService;->configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1019
    if-eqz v1, :cond_88

    .line 1020
    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayManagerService;->recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1023
    :cond_88
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1026
    if-eqz v1, :cond_94

    .line 1027
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1030
    :cond_94
    invoke-direct {p0, v4, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1031
    return-object v6
.end method

.method private applyGlobalDisplayStateLocked(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 969
    .local p1, "workQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 970
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 971
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 972
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v3

    .line 973
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_1a

    .line 974
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    .end local v2    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 977
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method private assignDisplayIdLocked(Z)I
    .registers 4
    .param p1, "isDefault"    # Z

    .line 1035
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    :goto_a
    return v0
.end method

.method private assignDisplayIdLocked(ZI)I
    .registers 5
    .param p1, "isDefault"    # Z
    .param p2, "physicalId"    # I

    .line 1039
    const/4 v0, 0x5

    if-lt p2, v0, :cond_d

    const/4 v0, 0x7

    if-gt p2, v0, :cond_d

    .line 1041
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    return v0

    .line 1044
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v0

    return v0
.end method

.method private assignLayerStackLocked(I)I
    .registers 2
    .param p1, "displayId"    # I

    .line 1050
    return p1
.end method

.method private clearViewportsLocked()V
    .registers 3

    .line 1253
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1254
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1255
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1256
    return-void
.end method

.method private static computeSaturationMatrix(F)[F
    .registers 10
    .param p0, "saturation"    # F

    .line 754
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    .line 755
    .local v1, "desaturation":F
    const/4 v2, 0x3

    new-array v3, v2, [F

    const v4, 0x3e6c8b44    # 0.231f

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, 0x3f370a3d    # 0.715f

    mul-float/2addr v4, v1

    const/4 v6, 0x1

    aput v4, v3, v6

    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v4, v1

    const/4 v7, 0x2

    aput v4, v3, v7

    .line 756
    .local v3, "luminance":[F
    const/16 v4, 0x10

    new-array v4, v4, [F

    aget v8, v3, v5

    add-float/2addr v8, p0

    aput v8, v4, v5

    aget v8, v3, v5

    aput v8, v4, v6

    aget v5, v3, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v2

    aget v2, v3, v6

    const/4 v8, 0x4

    aput v2, v4, v8

    aget v2, v3, v6

    add-float/2addr v2, p0

    const/4 v8, 0x5

    aput v2, v4, v8

    aget v2, v3, v6

    const/4 v6, 0x6

    aput v2, v4, v6

    const/4 v2, 0x7

    aput v5, v4, v2

    aget v2, v3, v7

    const/16 v6, 0x8

    aput v2, v4, v6

    aget v2, v3, v7

    const/16 v6, 0x9

    aput v2, v4, v6

    aget v2, v3, v7

    add-float/2addr v2, p0

    const/16 v6, 0xa

    aput v2, v4, v6

    const/16 v2, 0xb

    aput v5, v4, v2

    const/16 v2, 0xc

    aput v5, v4, v2

    const/16 v2, 0xd

    aput v5, v4, v2

    const/16 v2, 0xe

    aput v5, v4, v2

    const/16 v2, 0xf

    aput v0, v4, v2

    move-object v0, v4

    .line 762
    .local v0, "matrix":[F
    return-object v0
.end method

.method private configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 5
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1054
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-ne v0, p2, :cond_20

    .line 1055
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getColorMode(Lcom/android/server/display/DisplayDevice;)I

    move-result v0

    .line 1056
    .local v0, "colorMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 1057
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    .line 1059
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_1d

    .line 1061
    :cond_1c
    const/4 v0, 0x0

    .line 1064
    :cond_1d
    :goto_1d
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 1066
    .end local v0    # "colorMode":I
    :cond_20
    return-void
.end method

.method private configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1259
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1260
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 1264
    .local v1, "ownContent":Z
    :goto_f
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 1265
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_29

    .line 1266
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1269
    const/4 v4, 0x0

    .line 1271
    :cond_1e
    if-nez v4, :cond_29

    .line 1272
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 1277
    :cond_29
    if-nez v4, :cond_46

    .line 1279
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing logical display to use for physical display device: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1279
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-void

    .line 1283
    :cond_46
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v5, v3, :cond_4c

    move v2, v3

    nop

    :cond_4c
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V

    .line 1286
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-nez v2, :cond_5f

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5f

    .line 1288
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    invoke-static {v2, v4, p2}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1290
    :cond_5f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-nez v2, :cond_6f

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6f

    .line 1292
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    invoke-static {v2, v4, p2}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1295
    :cond_6f
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_85

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 1296
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->getVirtualTouchViewportLocked(Ljava/lang/String;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    .line 1297
    .local v2, "viewport":Landroid/hardware/display/DisplayViewport;
    invoke-static {v2, v4, p2}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1299
    .end local v2    # "viewport":Landroid/hardware/display/DisplayViewport;
    :cond_85
    return-void
.end method

.method private connectWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 678
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 679
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    .line 681
    :cond_c
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 29
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "densityDpi"    # I
    .param p9, "surface"    # Landroid/view/Surface;
    .param p10, "flags"    # I
    .param p11, "uniqueId"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 768
    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 769
    :try_start_5
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v3, -0x1

    if-nez v0, :cond_13

    .line 770
    const-string v0, "DisplayManagerService"

    const-string v4, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    monitor-exit v2

    return v3

    .line 775
    :cond_13
    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 778
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v0, :cond_33

    .line 779
    monitor-exit v2

    return v3

    .line 782
    :cond_33
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 783
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 784
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v4, :cond_42

    .line 785
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    monitor-exit v2

    return v3

    .line 789
    :cond_42
    const-string v5, "DisplayManagerService"

    const-string v6, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 792
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 793
    .end local v0    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    monitor-exit v2

    .line 794
    return v3

    .line 793
    :catchall_57
    move-exception v0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    throw v0
.end method

.method private deliverDelayDisplayEvent()V
    .registers 7

    .line 1651
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1652
    .local v0, "mDelayCount":I
    if-lez v0, :cond_28

    .line 1653
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1e

    .line 1654
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDisplayId:I

    iget v4, p0, Lcom/android/server/display/DisplayManagerService;->mDelayEvent:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(IIZ)Z

    .line 1653
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1657
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1658
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayEvent:I

    .line 1659
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDisplayId:I

    .line 1661
    :cond_28
    return-void
.end method

.method private deliverDisplayEvent(II)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 1355
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 1356
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering display event: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_22
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1363
    :try_start_25
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1364
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1365
    const/4 v2, 0x0

    move v3, v2

    .line 1365
    .local v3, "i":I
    :goto_32
    if-ge v3, v1, :cond_44

    .line 1366
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1368
    .end local v3    # "i":I
    :cond_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_b5

    move v0, v1

    .line 1371
    .end local v1    # "count":I
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->removeMessages(I)V

    .line 1372
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1373
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayEvent:I

    .line 1374
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDisplayId:I

    .line 1375
    const/4 v1, 0x1

    .line 1376
    .local v1, "isDeliveSuccess":Z
    move v4, v1

    move v1, v2

    .line 1376
    .local v1, "i":I
    .local v4, "isDeliveSuccess":Z
    :goto_5a
    if-ge v1, v0, :cond_7a

    .line 1377
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1378
    invoke-virtual {v5, p1, p2, v2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(IIZ)Z

    move-result v4

    .line 1379
    if-nez v4, :cond_77

    .line 1380
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 1383
    .end local v1    # "i":I
    :cond_7a
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b4

    .line 1384
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v1, :cond_a3

    .line 1385
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDelayDeliverCallbacks size"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_a3
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDisplayId:I

    .line 1388
    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mDelayEvent:I

    .line 1389
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1390
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1399
    .end local v1    # "msg":Landroid/os/Message;
    :cond_b4
    return-void

    .line 1368
    .end local v0    # "count":I
    .end local v4    # "isDeliveSuccess":Z
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method private disconnectWifiDisplayInternal()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 703
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 705
    :cond_c
    monitor-exit v0

    .line 706
    return-void

    .line 705
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1481
    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1484
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOnlyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSafeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingTraversal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGlobalDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextNonDefaultDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultViewport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExternalTouchViewport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVirtualTouchViewports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStableDisplaySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1499
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1501
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Adapters: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_141
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_169

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayAdapter;

    .line 1504
    .local v3, "adapter":Lcom/android/server/display/DisplayAdapter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1506
    .end local v3    # "adapter":Lcom/android/server/display/DisplayAdapter;
    goto :goto_141

    .line 1508
    :cond_169
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Devices: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayDevice;

    .line 1511
    .local v3, "device":Lcom/android/server/display/DisplayDevice;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1513
    .end local v3    # "device":Lcom/android/server/display/DisplayDevice;
    goto :goto_18c

    .line 1515
    :cond_1b4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1516
    .local v2, "logicalDisplayCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logical Displays: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1d3
    if-ge v4, v2, :cond_202

    .line 1519
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1520
    .local v5, "displayId":I
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LogicalDisplay;

    .line 1521
    .local v6, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v6, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1518
    .end local v5    # "displayId":I
    .end local v6    # "display":Lcom/android/server/display/LogicalDisplay;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d3

    .line 1525
    .end local v4    # "i":I
    :cond_202
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1526
    .local v4, "callbackCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callbacks: size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    nop

    .local v3, "i":I
    :goto_220
    if-ge v3, v4, :cond_255

    .line 1529
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1530
    .local v5, "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": mPid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWifiDisplayScanRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    .end local v5    # "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_220

    .line 1534
    .end local v3    # "i":I
    :cond_255
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v3, :cond_25e

    .line 1535
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 1538
    :cond_25e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1539
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 1540
    .end local v1    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "logicalDisplayCount":I
    .end local v4    # "callbackCount":I
    monitor-exit v0

    .line 1541
    return-void

    .line 1540
    :catchall_268
    move-exception v1

    monitor-exit v0
    :try_end_26a
    .catchall {:try_start_8 .. :try_end_26a} :catchall_268

    throw v1
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1326
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1327
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1328
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1329
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_18

    .line 1330
    return-object v2

    .line 1327
    .end local v2    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1333
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private forgetWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 719
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 721
    :cond_c
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getDisplayIdsInternal(I)[I
    .registers 12
    .param p1, "callingUid"    # I

    .line 573
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 574
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 575
    .local v1, "count":I
    new-array v2, v1, [I

    .line 576
    .local v2, "displayIds":[I
    const/4 v3, 0x0

    .line 577
    .local v3, "n":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "n":I
    :goto_f
    if-ge v3, v1, :cond_31

    .line 578
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LogicalDisplay;

    .line 579
    .local v6, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v7

    .line 580
    .local v7, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v7, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 581
    add-int/lit8 v8, v5, 0x1

    .local v8, "n":I
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    aput v9, v2, v5

    .line 577
    .end local v5    # "n":I
    .end local v6    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v7    # "info":Landroid/view/DisplayInfo;
    move v5, v8

    .end local v8    # "n":I
    .restart local v5    # "n":I
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 584
    .end local v3    # "i":I
    :cond_31
    if-eq v5, v1, :cond_38

    .line 585
    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    move-object v2, v3

    .line 587
    :cond_38
    monitor-exit v0

    return-object v2

    .line 588
    .end local v1    # "count":I
    .end local v2    # "displayIds":[I
    .end local v5    # "n":I
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "callingUid"    # I

    .line 559
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 560
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 561
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_1f

    .line 562
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 563
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v2, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 564
    invoke-direct {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 565
    :cond_1d
    monitor-exit v0

    return-object v2

    .line 568
    .end local v2    # "info":Landroid/view/DisplayInfo;
    :cond_1f
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 569
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 1544
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1545
    .local v0, "length":I
    new-array v1, v0, [F

    .line 1546
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 1547
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 1546
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1549
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1550
    return-object v1
.end method

.method private getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "outInfo"    # Landroid/view/DisplayInfo;

    .line 488
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 490
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_10

    .line 491
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 493
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_10
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 3

    .line 1402
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_11

    .line 1403
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1404
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 1406
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getStableDisplaySizeInternal()Landroid/graphics/Point;
    .registers 5

    .line 450
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 451
    .local v0, "r":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 452
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_1f

    .line 453
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 455
    :cond_1f
    monitor-exit v1

    .line 456
    return-object v0

    .line 455
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 1410
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method private getVirtualTouchViewportLocked(Ljava/lang/String;)Landroid/hardware/display/DisplayViewport;
    .registers 6
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 1304
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1305
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 1306
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 1307
    .local v2, "viewport":Landroid/hardware/display/DisplayViewport;
    iget-object v3, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1308
    return-object v2

    .line 1305
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1312
    .end local v1    # "i":I
    .end local v2    # "viewport":Landroid/hardware/display/DisplayViewport;
    :cond_1d
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 1313
    .local v1, "viewport":Landroid/hardware/display/DisplayViewport;
    iput-object p1, v1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 1314
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    return-object v1
.end method

.method private getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 726
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_f

    .line 727
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 729
    :cond_f
    new-instance v1, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v1}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v0

    return-object v1

    .line 730
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 893
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 894
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 895
    monitor-exit v0

    .line 896
    return-void

    .line 895
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 899
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 900
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 901
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add already added display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void

    .line 905
    :cond_23
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 908
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 910
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v2

    .line 911
    .local v2, "work":Ljava/lang/Runnable;
    if-eqz v2, :cond_4d

    .line 912
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 914
    :cond_4d
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 915
    return-void
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .registers 8
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 918
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 919
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 920
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 921
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to change non-existent display device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    monitor-exit v0

    return-void

    .line 925
    :cond_27
    iget-object v2, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v2

    .line 926
    .local v2, "diff":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_57

    .line 927
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed state: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 928
    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 927
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 929
    :cond_57
    if-eqz v2, :cond_6f

    .line 930
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_98

    .line 932
    :cond_6f
    :goto_6f
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_87

    .line 934
    :try_start_73
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/display/PersistentDataStore;->setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_80

    .line 936
    :try_start_7a
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 937
    goto :goto_87

    .line 936
    :catchall_80
    move-exception v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw v3

    .line 939
    :cond_87
    :goto_87
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 941
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 942
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 943
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 945
    .end local v1    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2    # "diff":I
    :cond_96
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_7a .. :try_end_9a} :catchall_98

    throw v1
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 949
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 950
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 951
    monitor-exit v0

    .line 952
    return-void

    .line 951
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 955
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 956
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 957
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existent display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void

    .line 961
    :cond_23
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 964
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 965
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 966
    return-void
.end method

.method private isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 10
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1121
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1122
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1123
    .local v1, "lux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    .line 1124
    .local v2, "nits":[F
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_e
    array-length v5, v1

    if-ge v4, v5, :cond_24

    .line 1125
    aget v5, v2, v4

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v7, v1, v4

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_21

    .line 1126
    const/4 v3, 0x1

    return v3

    .line 1124
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1129
    .end local v4    # "i":I
    :cond_24
    return v3
.end method

.method private isUidPresentOnDisplayInternal(II)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "displayId"    # I

    .line 1246
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/IntArray;

    .line 1248
    .local v1, "displayUIDs":Landroid/util/IntArray;
    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return v2

    .line 1249
    .end local v1    # "displayUIDs":Landroid/util/IntArray;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private loadBrightnessConfiguration()V
    .registers 5

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1134
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    .line 1135
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1136
    invoke-virtual {v2, v1}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 1137
    .local v2, "config":Landroid/hardware/display/BrightnessConfiguration;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1138
    .end local v1    # "userSerial":I
    .end local v2    # "config":Landroid/hardware/display/BrightnessConfiguration;
    monitor-exit v0

    .line 1139
    return-void

    .line 1138
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private loadStableDisplayValuesLocked()V
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 433
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_18

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_18

    .line 436
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_33

    .line 438
    :cond_18
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 439
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 441
    .local v2, "width":I
    const v3, 0x10e009f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 443
    .local v3, "height":I
    if-lez v2, :cond_33

    if-lez v3, :cond_33

    .line 444
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 447
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_33
    :goto_33
    return-void
.end method

.method private onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 622
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 623
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 624
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 625
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private pauseWifiDisplayInternal()V
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 687
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    .line 689
    :cond_c
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1167
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 1170
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1d

    .line 1172
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 1173
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V

    .line 1174
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayDevice;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 1171
    .end local v2    # "device":Lcom/android/server/display/DisplayDevice;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1178
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v1, :cond_27

    .line 1179
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1181
    :cond_27
    return-void
.end method

.method private recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5
    .param p1, "d"    # Lcom/android/server/display/LogicalDisplay;

    .line 1072
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1b

    .line 1073
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1074
    .local v0, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 1076
    .end local v0    # "info":Landroid/view/DisplayInfo;
    :cond_1b
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .registers 3

    .line 853
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 854
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 855
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 856
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 858
    :cond_f
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;II)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 597
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 598
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    .line 605
    new-instance v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    .line 610
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_10
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 611
    .local v2, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_20
    .catchall {:try_start_10 .. :try_end_18} :catchall_2f

    .line 615
    .end local v2    # "binder":Landroid/os/IBinder;
    nop

    .line 617
    :try_start_19
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 619
    return-void

    .line 612
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catch_20
    move-exception v2

    .line 614
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 599
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_27
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private registerDefaultDisplayAdapters()V
    .registers 7

    .line 834
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 836
    :try_start_3
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 844
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 846
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-eqz v1, :cond_2c

    .line 847
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 849
    :cond_2c
    monitor-exit v0

    .line 850
    return-void

    .line 849
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/server/display/DisplayAdapter;

    .line 888
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 890
    return-void
.end method

.method private registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 462
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .registers 8

    .line 862
    new-instance v6, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 864
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .registers 9

    .line 867
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "persist.debug.wfd.enable"

    const/4 v1, -0x1

    .line 869
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 870
    :cond_1a
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 873
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 875
    :cond_31
    return-void
.end method

.method private releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 819
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 820
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 821
    monitor-exit v0

    return-void

    .line 824
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 825
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 826
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v1, :cond_14

    .line 827
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 829
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_14
    monitor-exit v0

    .line 830
    return-void

    .line 829
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 710
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 711
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_c
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private requestColorModeInternal(II)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "colorMode"    # I

    .line 734
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 735
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 736
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_1a

    .line 737
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorModeLocked()I

    move-result v2

    if-eq v2, p2, :cond_1a

    .line 738
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 739
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 741
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1a
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private requestGlobalDisplayStateInternal(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .line 514
    if-nez p1, :cond_3

    .line 515
    const/4 p1, 0x2

    .line 517
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 518
    const/4 p2, 0x0

    goto :goto_12

    .line 519
    :cond_8
    if-gez p2, :cond_c

    .line 520
    const/4 p2, -0x1

    goto :goto_12

    .line 521
    :cond_c
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p2, v0, :cond_12

    .line 522
    sget p2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    .line 525
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 530
    :try_start_15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_80

    .line 531
    :try_start_18
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    if-ne v2, p1, :cond_28

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    if-ne v2, p2, :cond_28

    .line 533
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_7d

    .line 553
    :try_start_21
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_87

    .line 533
    return-void

    .line 536
    :cond_28
    :try_start_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGlobalDisplayState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 539
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 540
    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 541
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->applyGlobalDisplayStateLocked(Ljava/util/List;)V

    .line 542
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_28 .. :try_end_5b} :catchall_7d

    .line 548
    const/4 v1, 0x0

    .line 548
    .local v1, "i":I
    :goto_5c
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 549
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 551
    .end local v1    # "i":I
    :cond_72
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_75
    .catchall {:try_start_5c .. :try_end_75} :catchall_80

    .line 553
    :try_start_75
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 554
    nop

    .line 555
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_87

    .line 556
    return-void

    .line 542
    :catchall_7d
    move-exception v2

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 553
    :catchall_80
    move-exception v1

    :try_start_81
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    throw v1

    .line 555
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_87

    throw v1
.end method

.method private resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .registers 7
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 799
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 800
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 801
    monitor-exit v0

    return-void

    .line 804
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 805
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private resumeWifiDisplayInternal()V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 694
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 695
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    .line 697
    :cond_c
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private scheduleTraversalLocked(Z)V
    .registers 4
    .param p1, "inTraversal"    # Z

    .line 1344
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_13

    .line 1345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1346
    if-nez p1, :cond_13

    .line 1347
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1350
    :cond_13
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 1337
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1338
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1339
    return-void
.end method

.method private setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 8
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1096
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1097
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1099
    :try_start_e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_24

    .line 1102
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1103
    nop

    .line 1104
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-ne p2, v2, :cond_22

    .line 1105
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1107
    :cond_22
    monitor-exit v1

    .line 1108
    return-void

    .line 1102
    :catchall_24
    move-exception v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw v2

    .line 1107
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method private setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 1235
    .local p1, "newDisplayAccessUIDs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1236
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1237
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_22

    .line 1238
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1239
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 1238
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1237
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1241
    .end local v1    # "i":I
    :cond_22
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .line 473
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 475
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_1b

    .line 476
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 477
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 478
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 481
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1b
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private setDisplayOffsetsInternal(III)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1216
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1218
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_f

    .line 1219
    monitor-exit v0

    return-void

    .line 1221
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v2

    if-ne v2, p2, :cond_1b

    .line 1222
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v2

    if-eq v2, p3, :cond_51

    .line 1223
    :cond_1b
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_4a

    .line 1224
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " burn-in offset set to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_4a
    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    .line 1228
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1230
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_51
    monitor-exit v0

    .line 1231
    return-void

    .line 1230
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method private setDisplayPropertiesInternal(IZFIZ)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedModeId"    # I
    .param p5, "inTraversal"    # Z

    .line 1185
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1186
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1187
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_f

    .line 1188
    monitor-exit v0

    return-void

    .line 1190
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v2

    if-eq v2, p2, :cond_45

    .line 1191
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_3f

    .line 1192
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hasContent flag changed: hasContent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", inTraversal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_3f
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1197
    invoke-direct {p0, p5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1199
    :cond_45
    if-nez p4, :cond_55

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_55

    .line 1202
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result v2

    move p4, v2

    .line 1205
    :cond_55
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedModeIdLocked()I

    move-result v2

    if-eq v2, p4, :cond_83

    .line 1206
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_7d

    .line 1207
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " switching to mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_7d
    invoke-virtual {v1, p4}, Lcom/android/server/display/LogicalDisplay;->setRequestedModeIdLocked(I)V

    .line 1210
    invoke-direct {p0, p5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1212
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_83
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_85

    throw v1
.end method

.method private setSaturationLevelInternal(F)V
    .registers 5
    .param p1, "level"    # F

    .line 745
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_23

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_23

    .line 748
    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->computeSaturationMatrix(F)[F

    move-result-object v0

    .line 749
    .local v0, "matrix":[F
    :goto_15
    const-class v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    .line 750
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/16 v2, 0x96

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 751
    return-void

    .line 746
    .end local v0    # "matrix":[F
    .end local v1    # "dtm":Lcom/android/server/display/DisplayTransformManager;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saturation level must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStableDisplaySizeLocked(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1079
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 1081
    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->setStableDisplaySize(Landroid/graphics/Point;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    .line 1083
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1084
    nop

    .line 1085
    return-void

    .line 1083
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw v0
.end method

.method private static setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p0, "viewport"    # Landroid/hardware/display/DisplayViewport;
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1321
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 1322
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    .line 1323
    return-void
.end method

.method private setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 809
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 810
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 811
    monitor-exit v0

    return-void

    .line 814
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 815
    monitor-exit v0

    .line 816
    return-void

    .line 815
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 2

    .line 884
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private startWifiDisplayScanInternal(I)V
    .registers 6
    .param p1, "callingPid"    # I

    .line 629
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 630
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 631
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_12

    .line 635
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 636
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 637
    return-void

    .line 632
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 4
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 640
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_18

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 642
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v0, :cond_18

    .line 643
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_18

    .line 644
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 648
    :cond_18
    return-void
.end method

.method private stopWifiDisplayScanInternal(I)V
    .registers 6
    .param p1, "callingPid"    # I

    .line 651
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 652
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 653
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_12

    .line 657
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 658
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 659
    return-void

    .line 654
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 662
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_38

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 664
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v1, :cond_19

    .line 665
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_38

    .line 666
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    goto :goto_38

    .line 668
    :cond_19
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-gez v1, :cond_38

    .line 669
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 674
    :cond_38
    :goto_38
    return-void
.end method

.method private unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 468
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 982
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 983
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    .line 984
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 986
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateLogicalDisplaysLocked()Z
    .registers 7

    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_7
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    if-lez v1, :cond_4c

    .line 1147
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1148
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1150
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1151
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1152
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1153
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1154
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1155
    const/4 v0, 0x1

    goto :goto_49

    .line 1156
    :cond_38
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 1157
    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1158
    const/4 v0, 0x1

    .line 1160
    .end local v1    # "displayId":I
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_49
    :goto_49
    nop

    .line 1146
    move v1, v2

    goto :goto_7

    .line 1161
    .end local v2    # "i":I
    :cond_4c
    return v0
.end method


# virtual methods
.method protected dynamicallyConfigDisplayLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1415
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_9d

    .line 1416
    aget-object v0, p2, v1

    .line 1417
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1419
    return v1

    .line 1421
    :cond_11
    array-length v3, p2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1e

    .line 1423
    const-string v1, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->logOutDisplayLogTagHelp(Ljava/io/PrintWriter;)V

    .line 1425
    return v2

    .line 1428
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1e
    nop

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigDisplayLogTag, args.length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    nop

    .line 1433
    .local v1, "index":I
    :goto_35
    move v0, v1

    .line 1433
    .end local v1    # "index":I
    .local v0, "index":I
    array-length v1, p2

    if-ge v0, v1, :cond_5a

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigPowerLogTag, args["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    add-int/lit8 v1, v0, 0x1

    .line 1433
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_35

    .line 1437
    .end local v1    # "index":I
    :cond_5a
    aget-object v0, p2, v2

    .line 1438
    .local v0, "logCategoryTag":Ljava/lang/String;
    const-string v1, "1"

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1439
    .local v1, "on":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigDisplayLogTag, logCategoryTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    const-string v3, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1444
    sput-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 1445
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 1446
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 1447
    sput-boolean v1, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 1448
    sput-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    goto :goto_9c

    .line 1451
    :cond_94
    const-string v3, "Invalid log tag argument! Get detail help as bellow:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->logOutDisplayLogTagHelp(Ljava/io/PrintWriter;)V

    .line 1455
    :goto_9c
    return v2

    .line 1429
    .end local v0    # "logCategoryTag":Ljava/lang/String;
    .end local v1    # "on":Z
    :cond_9d
    return v1
.end method

.method getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .registers 6
    .param p1, "displayId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1576
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1577
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1578
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_17

    .line 1579
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 1580
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1582
    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :cond_17
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1583
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method getDisplayHandler()Landroid/os/Handler;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object v0
.end method

.method protected logOutDisplayLogTagHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1459
    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    const-string v0, "1 All display log:DEBUG | DisplayPowerController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    const-string v0, "cmd: dumpsys display log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method public onBootPhase(I)V
    .registers 11
    .param p1, "phase"    # I

    .line 365
    const/16 v0, 0x64

    if-ne p1, v0, :cond_7b

    .line 366
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 367
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 368
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$Injector;->getDefaultDisplayDelayTimeout()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 369
    .local v1, "timeout":J
    :goto_12
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v3, :cond_20

    goto :goto_22

    .line 386
    .end local v1    # "timeout":J
    :cond_20
    monitor-exit v0

    goto :goto_7b

    .line 371
    .restart local v1    # "timeout":J
    :cond_22
    :goto_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    .line 372
    .local v5, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_51

    .line 378
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v3, :cond_49

    .line 379
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitForDefaultDisplay: waiting, timeout="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_78

    .line 382
    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_4f
    .catchall {:try_start_49 .. :try_end_4e} :catchall_78

    .line 384
    goto :goto_50

    .line 383
    :catch_4f
    move-exception v3

    .line 385
    .end local v5    # "delay":J
    :goto_50
    goto :goto_12

    .line 373
    .restart local v5    # "delay":J
    :cond_51
    :try_start_51
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 375
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVirtualDisplayAdapter="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    .end local v1    # "timeout":J
    .end local v5    # "delay":J
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_51 .. :try_end_7a} :catchall_78

    throw v1

    .line 388
    :cond_7b
    :goto_7b
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 354
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_32

    .line 355
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 357
    const-string v0, "display"

    new-instance v2, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/display/DisplayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 359
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 360
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    new-instance v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-direct {v1}, Lcom/android/server/display/DisplayTransformManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 361
    return-void

    .line 354
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 6
    .param p1, "newUserId"    # I

    .line 392
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 393
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 394
    :try_start_b
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq v2, p1, :cond_1c

    .line 395
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 396
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 397
    invoke-virtual {v2, v0}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 398
    .local v2, "config":Landroid/hardware/display/BrightnessConfiguration;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 400
    .end local v2    # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_1c
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->onSwitchUser(I)V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v2
.end method

.method performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 499
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_9

    .line 500
    monitor-exit v0

    return-void

    .line 502
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 504
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 505
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 508
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 509
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    invoke-interface {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction()V

    .line 510
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    goto :goto_16

    .line 511
    :cond_26
    return-void

    .line 505
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public setUserComputeConfigurationInternal()V
    .registers 5

    .line 1470
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getCurrentConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 1471
    .local v0, "c":Landroid/hardware/display/BrightnessConfiguration;
    if-eqz v0, :cond_20

    .line 1473
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    const-string v3, "UserCompute"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_19

    .line 1475
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1476
    goto :goto_20

    .line 1475
    :catchall_19
    move-exception v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1478
    :cond_20
    :goto_20
    return-void
.end method

.method public setupSchedulerPolicies()V
    .registers 3

    .line 337
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 339
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 341
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 343
    return-void
.end method

.method public systemReady(ZZ)V
    .registers 5
    .param p1, "safeMode"    # Z
    .param p2, "onlyCore"    # Z

    .line 417
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 418
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 419
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 420
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 422
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 423
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 424
    return-void

    .line 420
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1112
    if-nez p1, :cond_3

    .line 1113
    return-void

    .line 1115
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1118
    return-void

    .line 1116
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "brightness curve is too dark"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public windowManagerAndInputReady()V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 407
    :try_start_3
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 408
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 409
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 410
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
