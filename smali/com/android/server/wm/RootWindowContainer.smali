.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private final mTmpStackIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpStackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field final mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 156
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 110
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 111
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 112
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 113
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 116
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 118
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 121
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 147
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 165
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 170
    new-instance v0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    .line 172
    return-void
.end method

.method private applySurfaceChangesTransaction(ZII)V
    .registers 9
    .param p1, "recoveringMemory"    # Z
    .param p2, "defaultDw"    # I
    .param p3, "defaultDh"    # I

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 849
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_12

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 855
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v0, :cond_1f

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 858
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v0, :cond_32

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 860
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    .line 859
    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 862
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v0, :cond_45

    .line 863
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 864
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    .line 863
    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 867
    :cond_45
    const/4 v0, 0x0

    .line 869
    .local v0, "focusDisplayed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 870
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4d
    if-ge v2, v1, :cond_5f

    .line 871
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 872
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 870
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 875
    .end local v2    # "j":I
    :cond_5f
    if-eqz v0, :cond_69

    .line 876
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 881
    :cond_69
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 882
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 883
    return-void
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "objectId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 294
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 303
    return-void
.end method

.method private handleResizingWindows()Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "touchExcludeRegionUpdateSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_48

    .line 894
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 901
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v3, :cond_45

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v3, :cond_22

    .line 904
    goto :goto_45

    .line 906
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 907
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 908
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 909
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 910
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_42

    .line 911
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 913
    :cond_42
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_45
    :goto_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 916
    .end local v1    # "i":I
    :cond_48
    return-object v0
.end method

.method static synthetic lambda$canShowStrictModeViolation$6(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "pid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 463
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$dumpWindowsNoHeader$8(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 9
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # [I
    .param p3, "dumpAll"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1079
    if-eqz p0, :cond_8

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1080
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    const-string v0, "    "

    const/4 v2, 0x1

    if-nez p3, :cond_36

    if-eqz p0, :cond_34

    goto :goto_36

    :cond_34
    move v3, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v2

    :goto_37
    invoke-virtual {p4, p1, v0, v3}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1082
    aget v0, p2, v1

    add-int/2addr v0, v2

    aput v0, p2, v1

    .line 1084
    :cond_3f
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/util/ArrayList;
    .param p2, "objectId"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 295
    if-eqz p0, :cond_16

    .line 296
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 297
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 299
    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1f

    .line 300
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 148
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 150
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 152
    goto :goto_d

    .line 151
    :catch_c
    move-exception v0

    .line 154
    :cond_d
    :goto_d
    return-void
.end method

.method public static synthetic lambda$reclaimSomeSurfaceMemory$7(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "pidCandidates"    # Landroid/util/SparseIntArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 527
    return-void

    .line 529
    :cond_b
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 530
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1c

    .line 531
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 533
    :cond_1c
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$3(IZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "disabled"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 442
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_11

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_11

    .line 443
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 445
    :cond_11
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 158
    .local v0, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 161
    :cond_7
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V
    .registers 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 459
    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "packages"    # Landroid/util/ArraySet;
    .param p1, "suspended"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 450
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 451
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 453
    :cond_d
    return-void
.end method

.method static synthetic lambda$writeToProto$9(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1108
    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1109
    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .registers 3

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 425
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 424
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 427
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;Ljava/util/List;)V
    .registers 4
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p2, "changedStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 390
    .local v0, "configChanged":Z
    :goto_d
    if-nez v0, :cond_10

    .line 391
    return-void

    .line 393
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 395
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .registers 2
    .param p0, "value"    # F

    .line 1022
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private updateStackBoundsAfterConfigChange(ILjava/util/List;)V
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p2, "changedStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 420
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 421
    return-void
.end method

.method private updateStackBoundsAfterConfigChange(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p1, "changedStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 411
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 412
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 413
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 411
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 415
    .end local v1    # "i":I
    :cond_17
    return-void
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .registers 4
    .param p1, "pid"    # I

    .line 463
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 464
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 468
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 470
    return-void
.end method

.method computeFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 10

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 179
    .local v0, "forceDefaultDisplay":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_44

    .line 180
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 181
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 182
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_41

    .line 183
    if-eqz v0, :cond_40

    iget-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v5, :cond_40

    .line 184
    const v5, 0x534e4554

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "71786287"

    aput-object v8, v6, v7

    iget v7, v4, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 185
    goto :goto_41

    .line 187
    :cond_40
    return-object v4

    .line 179
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 190
    .end local v1    # "i":I
    :cond_44
    const/4 v1, 0x0

    return-object v1
.end method

.method copyAnimToLayoutParams()Z
    .registers 5

    .line 989
    const/4 v0, 0x0

    .line 991
    .local v0, "doRequest":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 992
    .local v1, "bulkUpdateParams":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    .line 993
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 994
    const/4 v0, 0x1

    .line 996
    :cond_f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_16

    .line 997
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 998
    const/4 v0, 0x1

    .line 1000
    :cond_16
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1d

    .line 1001
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 1002
    const/4 v0, 0x1

    .line 1004
    :cond_1d
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_25

    .line 1005
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_36

    .line 1007
    :cond_25
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1008
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1009
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_36

    .line 1010
    const/4 v0, 0x1

    .line 1014
    :cond_36
    :goto_36
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3c

    .line 1015
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 1018
    :cond_3c
    return v0
.end method

.method createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/DisplayWindowController;)Lcom/android/server/wm/DisplayContent;
    .registers 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "controller"    # Lcom/android/server/wm/DisplayWindowController;

    .line 222
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 227
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 229
    .local v1, "existing":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_e

    .line 230
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 231
    return-object v1

    .line 234
    :cond_e
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-direct {v2, p1, v3, v4, p2}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/DisplayWindowController;)V

    .line 237
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v3, :cond_31

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_31
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 240
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 241
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v6, v3, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v7, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/wm/DisplaySettings;->getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 242
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 243
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanTop:I

    .line 244
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanRight:I

    .line 245
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 246
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v5, :cond_a2

    .line 247
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 249
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 254
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 255
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v5, :cond_87

    .line 256
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registering PointerEventListener for DisplayId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_87
    new-instance v5, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v5, v6, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 260
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 261
    if-nez v0, :cond_a2

    .line 262
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 267
    :cond_a2
    return-object v2
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1049
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_26

    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1052
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_25

    .line 1053
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1054
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1052
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1056
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_25
    goto :goto_2b

    .line 1057
    :cond_26
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    :goto_2b
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1063
    return-void

    .line 1065
    :cond_7
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1067
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 1068
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1069
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1070
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1073
    .end local v1    # "displayNdx":I
    :cond_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1074
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1088
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1d

    .line 1090
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1089
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1092
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1077
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1078
    .local v1, "index":[I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$lQbVdBqi1IIiuRy86WremqX682s;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$lQbVdBqi1IIiuRy86WremqX682s;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1085
    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 312
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 313
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 314
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_19

    .line 315
    return-object v2

    .line 311
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 318
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5
    .param p1, "displayId"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 214
    .local v1, "current":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 215
    return-object v1

    .line 212
    .end local v1    # "current":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 218
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .registers 6
    .param p1, "displaysInFocusOrder"    # Landroid/util/SparseIntArray;

    .line 198
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 201
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_25

    .line 202
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 203
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemovalDeferred()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 205
    goto :goto_22

    .line 207
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 209
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1116
    const-string v0, "ROOT"

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 431
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 432
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 433
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_19

    .line 434
    return-object v2

    .line 430
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 437
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 6
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 323
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 324
    return-object v0

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_22

    .line 328
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 329
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 330
    .local v3, "current":Lcom/android/server/wm/WindowToken;
    if-ne v3, p1, :cond_1f

    .line 331
    return-object v2

    .line 327
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "current":Lcom/android/server/wm/WindowToken;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 335
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 282
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 285
    .local v0, "objectId":I
    const/16 v1, 0x10

    :try_start_3
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_a

    move v0, v1

    .line 286
    const/4 p2, 0x0

    .line 288
    goto :goto_b

    .line 287
    :catch_a
    move-exception v1

    .line 290
    :goto_b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 14
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"    # Z
    .param p3, "syswin"    # Z

    .line 927
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 928
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 929
    .local v1, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    .line 930
    .local v2, "onScreen":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    .line 931
    .local v3, "canBeSeen":Z
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 932
    .local v4, "privateflags":I
    const/4 v5, 0x0

    .line 934
    .local v5, "displayHasContent":Z
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_54

    .line 935
    const-string v6, "DebugKeepScreenOn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleNotObscuredLocked w: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", w.mHasSurface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isOnScreen(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isDisplayedLw(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.mAttrs.userActivityTimeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 935
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_54
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_8f

    if-eqz v2, :cond_8f

    .line 942
    if-nez p3, :cond_8f

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_8f

    iget-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_8f

    .line 943
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 944
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_8f

    .line 945
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mUserActivityTimeout set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_8f
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_115

    if-eqz v3, :cond_115

    .line 950
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_a0

    .line 951
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 952
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_cf

    .line 953
    :cond_a0
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_cf

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_cf

    .line 954
    const-string v6, "DebugKeepScreenOn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleNotObscuredLocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was holding screen wakelock but no longer has FLAG_KEEP_SCREEN_ON!!! called by"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    .line 956
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 954
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_cf
    :goto_cf
    if-nez p3, :cond_e6

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e6

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e6

    .line 959
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 962
    :cond_e6
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 965
    .local v6, "type":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 966
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v8, 0x1

    if-eqz v7, :cond_101

    iget-boolean v9, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_101

    .line 970
    const/16 v9, 0x7e7

    if-eq v6, v9, :cond_fd

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_ff

    .line 971
    :cond_fd
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 973
    :cond_ff
    const/4 v5, 0x1

    goto :goto_10e

    .line 974
    :cond_101
    if-eqz v7, :cond_10e

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_10d

    if-eqz p2, :cond_10e

    const/16 v9, 0x7d9

    if-ne v6, v9, :cond_10e

    .line 978
    :cond_10d
    const/4 v5, 0x1

    .line 980
    :cond_10e
    :goto_10e
    const/high16 v9, 0x40000

    and-int/2addr v9, v4

    if-eqz v9, :cond_115

    .line 981
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 985
    .end local v6    # "type":I
    .end local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_115
    return v5
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 8
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 487
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_2a

    .line 488
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 489
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    .line 490
    .local v4, "pendingChanges":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_24

    .line 491
    iget v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 493
    :cond_24
    if-eqz v4, :cond_27

    .line 494
    const/4 v0, 0x1

    .line 487
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "pendingChanges":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 498
    .end local v2    # "i":I
    :cond_2a
    return v0
.end method

.method isLayoutNeeded()Z
    .registers 6

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 272
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "displayNdx":I
    :goto_8
    if-ge v2, v0, :cond_1d

    .line 273
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 274
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 275
    const/4 v1, 0x1

    return v1

    .line 272
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 278
    .end local v2    # "displayNdx":I
    :cond_1d
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 399
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 400
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onConfigurationChanged()V

    .line 403
    return-void
.end method

.method performSurfacePlacement(Z)V
    .registers 21
    .param p1, "recoveringMemory"    # Z

    move-object/from16 v1, p0

    .line 580
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_22

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_22
    const/4 v0, 0x0

    .line 586
    .local v0, "updateInputWindowsNeeded":Z
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    .line 587
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 588
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 593
    .end local v0    # "updateInputWindowsNeeded":Z
    .local v2, "updateInputWindowsNeeded":Z
    :cond_34
    move v2, v0

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 594
    .local v3, "numDisplays":I
    move v0, v4

    .line 594
    .local v0, "displayNdx":I
    :goto_3c
    if-ge v0, v3, :cond_4c

    .line 595
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 596
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 594
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 599
    .end local v0    # "displayNdx":I
    :cond_4c
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 600
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 601
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 602
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 603
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 604
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 607
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 608
    .local v6, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 609
    .local v8, "defaultInfo":Landroid/view/DisplayInfo;
    iget v9, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 610
    .local v9, "defaultDw":I
    iget v10, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 612
    .local v10, "defaultDh":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_7c

    const-string v0, "WindowManager"

    const-string v11, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_7c
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 616
    move/from16 v11, p1

    :try_start_83
    invoke-direct {v1, v11, v9, v10}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(ZII)V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_86} :catch_9f
    .catchall {:try_start_83 .. :try_end_86} :catchall_9a

    .line 620
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v12, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 621
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_b5

    :goto_92
    const-string v0, "WindowManager"

    const-string v12, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 620
    :catchall_9a
    move-exception v0

    move/from16 v16, v3

    goto/16 :goto_40d

    .line 617
    :catch_9f
    move-exception v0

    move-object v12, v0

    .line 618
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_a1
    const-string v12, "WindowManager"

    const-string v13, "Unhandled exception in Window Manager"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_40a

    .line 620
    .end local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v12, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 621
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_b5

    goto :goto_92

    .line 625
    :cond_b5
    :goto_b5
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 627
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 631
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v12

    if-eqz v12, :cond_de

    .line 635
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked()I

    move-result v12

    .line 636
    .local v12, "layoutChanges":I
    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v13, v12

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 637
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_de

    .line 638
    const-string v13, "after handleAppTransitionReadyLocked"

    iget v14, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 642
    .end local v12    # "layoutChanges":I
    :cond_de
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isAppAnimating()Z

    move-result v12

    if-nez v12, :cond_104

    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_104

    .line 647
    iget v12, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 648
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v13

    or-int/2addr v12, v13

    iput v12, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 649
    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v12, :cond_104

    .line 650
    const-string v12, "after handleAnimStopAndXitionLock"

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 655
    :cond_104
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 656
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v12

    .line 657
    .local v12, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v12, :cond_111

    .line 658
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 661
    :cond_111
    iget-boolean v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    if-eqz v13, :cond_133

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v13, :cond_133

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 662
    invoke-virtual {v13}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v13

    if-nez v13, :cond_133

    .line 667
    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v13, v7

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 668
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_133

    const-string v13, "after animateAwayWallpaperLocked"

    iget v14, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 671
    :cond_133
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 673
    iget-boolean v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    if-eqz v13, :cond_155

    .line 674
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v13, :cond_144

    const-string v13, "WindowManager"

    const-string v14, "Wallpaper may change!  Adjusting"

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_144
    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 676
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_155

    const-string v13, "WallpaperMayChange"

    iget v14, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 680
    :cond_155
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v13, v13, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v14, 0x2

    if-eqz v13, :cond_16f

    .line 681
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v13, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 682
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13, v14, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v13

    if-eqz v13, :cond_16f

    .line 684
    const/4 v2, 0x1

    .line 685
    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 689
    :cond_16f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v13

    if-eqz v13, :cond_186

    .line 690
    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v13, v7

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 691
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_186

    const-string/jumbo v13, "mLayoutNeeded"

    iget v15, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v15}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 695
    :cond_186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()Landroid/util/ArraySet;

    move-result-object v13

    .line 697
    .local v13, "touchExcludeRegionUpdateDisplays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v15, :cond_1ac

    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v15, :cond_1ac

    const-string v15, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "With display frozen, orientationChangeComplete="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1ac
    iget-boolean v7, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v7, :cond_1ce

    .line 700
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v7, :cond_1c9

    .line 701
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v4, v7, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 702
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v14, v7, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 703
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v14, 0xb

    invoke-virtual {v7, v14}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 705
    :cond_1c9
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 709
    :cond_1ce
    const/4 v7, 0x0

    .line 710
    .local v7, "wallpaperDestroyed":Z
    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 711
    .local v14, "i":I
    const/4 v15, -0x1

    if-lez v14, :cond_215

    .line 713
    :goto_1da
    add-int/2addr v14, v15

    .line 714
    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 715
    .local v15, "win":Lcom/android/server/wm/WindowState;
    iput-boolean v4, v15, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 716
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, v15, :cond_1f2

    .line 717
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 719
    :cond_1f2
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_200

    .line 720
    const/4 v4, 0x1

    .line 722
    .end local v7    # "wallpaperDestroyed":Z
    .local v4, "wallpaperDestroyed":Z
    move v7, v4

    .line 722
    .end local v4    # "wallpaperDestroyed":Z
    .restart local v7    # "wallpaperDestroyed":Z
    :cond_200
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 723
    iget-object v4, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 724
    .end local v15    # "win":Lcom/android/server/wm/WindowState;
    if-gtz v14, :cond_212

    .line 725
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_215

    .line 713
    :cond_212
    const/4 v4, 0x0

    const/4 v15, -0x1

    goto :goto_1da

    .line 729
    :cond_215
    :goto_215
    const/4 v4, 0x0

    .line 729
    .local v4, "displayNdx":I
    :goto_216
    if-ge v4, v3, :cond_226

    .line 730
    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/DisplayContent;

    .line 731
    .local v15, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 729
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_216

    .line 734
    .end local v4    # "displayNdx":I
    :cond_226
    if-eqz v7, :cond_231

    .line 735
    iget v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 736
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 739
    :cond_231
    const/4 v4, 0x0

    .line 739
    .restart local v4    # "displayNdx":I
    :goto_232
    if-ge v4, v3, :cond_247

    .line 740
    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/DisplayContent;

    .line 741
    .restart local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v5, v15, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v5, :cond_243

    .line 742
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 739
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_243
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_232

    .line 747
    .end local v4    # "displayNdx":I
    :cond_247
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 749
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 750
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_295

    .line 751
    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_273

    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_26c

    goto :goto_273

    .line 752
    :cond_26c
    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    invoke-static {v4}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v15

    goto :goto_274

    :cond_273
    :goto_273
    const/4 v15, -0x1

    :goto_274
    move v4, v15

    .line 756
    .local v4, "brightness":I
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move/from16 v16, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-virtual {v5, v3, v4, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 756
    .end local v3    # "numDisplays":I
    .local v16, "numDisplays":I
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 757
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move/from16 v17, v4

    iget-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 757
    .end local v4    # "brightness":I
    .local v17, "brightness":I
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 757
    .end local v17    # "brightness":I
    goto :goto_297

    .line 760
    .end local v16    # "numDisplays":I
    .restart local v3    # "numDisplays":I
    :cond_295
    move/from16 v16, v3

    .line 760
    .end local v3    # "numDisplays":I
    .restart local v16    # "numDisplays":I
    :goto_297
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v3, v4, :cond_2ab

    .line 761
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 762
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v4, 0x6

    .line 764
    iget-boolean v5, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 762
    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 767
    :cond_2ab
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v3, :cond_30a

    .line 768
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_2ba

    const-string v3, "WindowManager"

    const-string v4, "Performing post-rotate rotation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_2ba
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 771
    .local v3, "displayId":I
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v4

    const/16 v5, 0x12

    if-eqz v4, :cond_2d6

    .line 772
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2d9

    .line 774
    :cond_2d6
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 779
    :goto_2d9
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    const/4 v15, -0x1

    if-eq v4, v15, :cond_2e9

    .line 780
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_2ea

    :cond_2e9
    const/4 v4, 0x0

    .line 781
    .local v4, "vrDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_2ea
    if-eqz v4, :cond_30a

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v15

    if-eqz v15, :cond_30a

    .line 782
    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v18, v0

    const/16 v0, 0x12

    invoke-virtual {v15, v0, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 783
    .end local v0    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .local v18, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 783
    .end local v3    # "displayId":I
    .end local v4    # "vrDisplay":Lcom/android/server/wm/DisplayContent;
    goto :goto_30c

    .line 787
    .end local v18    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v0    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_30a
    move-object/from16 v18, v0

    .line 787
    .end local v0    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v18    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :goto_30c
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_320

    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v0, :cond_325

    .line 788
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_325

    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v0, :cond_325

    .line 790
    :cond_320
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 793
    :cond_325
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 794
    .local v0, "N":I
    if-lez v0, :cond_388

    .line 795
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v3, v3

    if-ge v3, v0, :cond_33e

    .line 796
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v4, v0, 0xa

    new-array v4, v4, [Lcom/android/server/wm/WindowState;

    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 798
    :cond_33e
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 799
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 800
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v3, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    const/4 v4, 0x0

    .line 801
    .end local v14    # "i":I
    .local v4, "i":I
    move v14, v4

    .line 801
    .end local v4    # "i":I
    .restart local v14    # "i":I
    :goto_357
    if-ge v14, v0, :cond_374

    .line 802
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v4, v4, v14

    .line 803
    .local v4, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 804
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 805
    .restart local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_371

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_371

    .line 806
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_371
    add-int/lit8 v14, v14, 0x1

    goto :goto_357

    .line 810
    :cond_374
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 810
    .local v4, "j":I
    :goto_37a
    if-ltz v4, :cond_389

    .line 811
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/DisplayContent;

    .line 812
    .local v15, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v15, v5}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 810
    .end local v15    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v4, v4, -0x1

    goto :goto_37a

    .line 817
    .end local v3    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v4    # "j":I
    :cond_388
    const/4 v5, 0x1

    :cond_389
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .line 817
    .local v3, "displayNdx":I
    :goto_390
    if-ltz v3, :cond_3a0

    .line 818
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    .line 817
    add-int/lit8 v3, v3, -0x1

    goto :goto_390

    .line 821
    .end local v3    # "displayNdx":I
    :cond_3a0
    if-eqz v2, :cond_3aa

    .line 822
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 824
    :cond_3aa
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 825
    if-eqz v13, :cond_3dc

    .line 826
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_3c1

    .line 827
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    goto :goto_3c2

    :cond_3c1
    const/4 v5, 0x0

    :goto_3c2
    move-object v3, v5

    .line 828
    .local v3, "focusedDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v13}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 830
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    if-eq v3, v5, :cond_3da

    .line 831
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 831
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    goto :goto_3db

    .line 833
    :cond_3da
    const/4 v15, 0x0

    :goto_3db
    goto :goto_3c7

    .line 838
    .end local v3    # "focusedDc":Lcom/android/server/wm/DisplayContent;
    :cond_3dc
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 840
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 842
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v3, :cond_409

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performSurfacePlacementInner exit: animating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 843
    invoke-virtual {v5}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_409
    return-void

    .line 620
    .end local v0    # "N":I
    .end local v7    # "wallpaperDestroyed":Z
    .end local v12    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v13    # "touchExcludeRegionUpdateDisplays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    .end local v14    # "i":I
    .end local v16    # "numDisplays":I
    .end local v18    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .local v3, "numDisplays":I
    :catchall_40a
    move-exception v0

    move/from16 v16, v3

    .line 620
    .end local v3    # "numDisplays":I
    .restart local v16    # "numDisplays":I
    :goto_40d
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 621
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_420

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_420
    throw v0
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 20
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "secure"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 503
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 504
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v4, 0x0

    .line 505
    .local v4, "leakedSurface":Z
    const/4 v5, 0x0

    .line 507
    .local v5, "killedApps":Z
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v0, v7

    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    .line 508
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v0, v8

    const/4 v6, 0x2

    aput-object p2, v0, v6

    .line 507
    const/16 v6, 0x7918

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 515
    .local v9, "callingIdentity":J
    :try_start_2b
    const-string v0, "WindowManager"

    const-string v6, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v6, v0

    .line 517
    .local v6, "numDisplays":I
    move v0, v7

    .local v0, "displayNdx":I
    :goto_3a
    if-ge v0, v6, :cond_4c

    .line 518
    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v4, v11

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 521
    .end local v0    # "displayNdx":I
    :cond_4c
    if-nez v4, :cond_a6

    .line 522
    const-string v0, "WindowManager"

    const-string v11, "No leaked surfaces; killing applications!"

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object v11, v0

    .line 524
    .local v11, "pidCandidates":Landroid/util/SparseIntArray;
    move v0, v7

    .restart local v0    # "displayNdx":I
    :goto_5c
    move v12, v0

    .end local v0    # "displayNdx":I
    .local v12, "displayNdx":I
    if-ge v12, v6, :cond_a6

    .line 525
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v13, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;

    invoke-direct {v13, v1, v11}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v13, v7}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 535
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 536
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v13, v0

    .line 537
    .local v13, "pids":[I
    move v0, v7

    .local v0, "i":I
    :goto_7d
    array-length v14, v13

    if-ge v0, v14, :cond_89

    .line 538
    invoke-virtual {v11, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    aput v14, v13, v0
    :try_end_86
    .catchall {:try_start_2b .. :try_end_86} :catchall_fa

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 541
    .end local v0    # "i":I
    :cond_89
    :try_start_89
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v14, "Free memory"
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8f} :catch_9c
    .catchall {:try_start_89 .. :try_end_8f} :catchall_fa

    move/from16 v8, p3

    :try_start_91
    invoke-interface {v0, v13, v14, v8}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_95} :catch_9a
    .catchall {:try_start_91 .. :try_end_95} :catchall_f8

    if-eqz v0, :cond_99

    .line 542
    const/4 v0, 0x1

    .line 545
    .end local v5    # "killedApps":Z
    .local v0, "killedApps":Z
    move v5, v0

    .end local v0    # "killedApps":Z
    .restart local v5    # "killedApps":Z
    :cond_99
    goto :goto_a2

    .line 544
    :catch_9a
    move-exception v0

    goto :goto_9f

    :catch_9c
    move-exception v0

    move/from16 v8, p3

    .end local v13    # "pids":[I
    :goto_9f
    goto :goto_a2

    .line 524
    :cond_a0
    move/from16 v8, p3

    :goto_a2
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "displayNdx":I
    .local v0, "displayNdx":I
    const/4 v8, 0x1

    goto :goto_5c

    .line 550
    .end local v0    # "displayNdx":I
    .end local v11    # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_a6
    move/from16 v8, p3

    if-nez v4, :cond_ac

    if-eqz v5, :cond_eb

    .line 553
    :cond_ac
    :try_start_ac
    const-string v0, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    if-eqz v3, :cond_e2

    .line 556
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_bd

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_c4

    :cond_bd
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v11, "RECOVER DESTROY"

    invoke-static {v0, v11, v7}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 558
    :cond_c4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 559
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_e2

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 560
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 561
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V
    :try_end_e2
    .catchall {:try_start_ac .. :try_end_e2} :catchall_f8

    .line 566
    :cond_e2
    :try_start_e2
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e9} :catch_ea
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_f8

    .line 568
    goto :goto_eb

    .line 567
    :catch_ea
    move-exception v0

    .line 571
    .end local v6    # "numDisplays":I
    :cond_eb
    :goto_eb
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    nop

    .line 574
    if-nez v4, :cond_f6

    if-eqz v5, :cond_f4

    goto :goto_f6

    :cond_f4
    move v15, v7

    goto :goto_f7

    :cond_f6
    :goto_f6
    const/4 v15, 0x1

    :goto_f7
    return v15

    .line 571
    :catchall_f8
    move-exception v0

    goto :goto_fd

    :catchall_fa
    move-exception v0

    move/from16 v8, p3

    :goto_fd
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeReplacedWindows()V
    .registers 4

    .line 473
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION removeReplacedWindows"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 476
    :try_start_10
    sget-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2a

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "removeReplacedWindows"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 479
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_29

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_29
    return-void

    .line 478
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "removeReplacedWindows"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 479
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_3e

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    throw v0
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1122
    return-void
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I
    .registers 12
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 344
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 345
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_70

    .line 349
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 350
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v3

    .line 351
    .local v2, "configChanged":Z
    :goto_14
    const/4 v4, 0x0

    if-nez v2, :cond_18

    .line 352
    return-object v4

    .line 355
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 358
    if-nez p2, :cond_28

    .line 361
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;Ljava/util/List;)V

    goto :goto_2d

    .line 363
    :cond_28
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v5}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(ILjava/util/List;)V

    .line 366
    :goto_2d
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 367
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 369
    .local v5, "stackCount":I
    nop

    .local v3, "i":I
    :goto_39
    if-ge v3, v5, :cond_55

    .line 370
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 374
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v7, v6, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-nez v7, :cond_52

    .line 375
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    iget v8, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 381
    .end local v3    # "i":I
    :cond_55
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/am/OemQuickReply;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/OemQuickReply;->onConfigChanged()V

    .line 384
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_6f

    :cond_69
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v4

    :goto_6f
    return-object v4

    .line 346
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    .end local v2    # "configChanged":Z
    .end local v5    # "stackCount":I
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display not found for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setSecureSurfaceState(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z

    .line 441
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$3VVFoec4x74e1MMAq03gYI9kKjo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$3VVFoec4x74e1MMAq03gYI9kKjo;-><init>(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 446
    return-void
.end method

.method updateAppOpsState()V
    .registers 3

    .line 457
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 460
    return-void
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 5
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 449
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 454
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 1097
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1098
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1099
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_2e

    .line 1100
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1101
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_2e

    .line 1102
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1103
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/DisplayContent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1101
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1106
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2e
    if-nez p4, :cond_39

    .line 1107
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$WK0a_BR42j4A-e0Xx1wj4BL8rUk;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$WK0a_BR42j4A-e0Xx1wj4BL8rUk;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1111
    :cond_39
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1112
    return-void
.end method
