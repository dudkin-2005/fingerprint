.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;,
        Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$TaskStackContainers;,
        Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;,
        Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;,
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field isDefaultDisplay:Z

.field private final mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

.field private mAltOrientation:Z

.field private final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field private mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field private final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field private final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferUpdateImeTargetCount:I

.field private mDeferredRemoval:Z

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/DisplayCutout;",
            "Lcom/android/server/wm/utils/WmDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayReady:Z

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveApp:Z

.field private mHaveBootMsg:Z

.field private mHaveKeyguard:Z

.field private mHaveWallpaper:Z

.field private final mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

.field mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field private mLastKeyguardForcedOrientation:I

.field private mLastOrientation:I

.field private mLastWallpaperVisible:Z

.field private mLastWindowForcedOrientation:I

.field private mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMaxUiWidth:I

.field private mOverlayLayer:Landroid/view/SurfaceControl;

.field private final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mRemovingDisplay:Z

.field private mRotation:I

.field private final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSession:Landroid/view/SurfaceSession;

.field mShouldOverrideDisplayConfiguration:Z

.field private mSurfaceSize:I

.field mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludeProvidingWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpFloats:[F

.field private mTmpInitial:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRecoveringMemory:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private mTmpWindow2:Lcom/android/server/wm/WindowState;

.field private mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

.field private final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExcludeRegion:Landroid/graphics/Region;

.field private mUpdateImeTarget:Z

.field private final mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field private mWindowingLayer:Landroid/view/SurfaceControl;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/DisplayWindowController;)V
    .registers 12
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "wallpaperController"    # Lcom/android/server/wm/WallpaperController;
    .param p4, "controller"    # Lcom/android/server/wm/DisplayWindowController;

    .line 810
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 199
    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    .line 202
    new-instance v0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    const-string/jumbo v1, "mAboveAppWindowsContainers"

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 206
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v1, "mBelowAppWindowsContainers"

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 212
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    const-string/jumbo v1, "mImeWindowsContainers"

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 228
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 229
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 232
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v2}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 240
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 241
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 247
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 249
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 251
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 258
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 260
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 266
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 277
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 285
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 293
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    .line 301
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    .line 309
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    .line 314
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 316
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 336
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 339
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 340
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 341
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    .line 342
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 343
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 346
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 356
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    .line 358
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 359
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 360
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 361
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 363
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 365
    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 367
    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$1;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 372
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 375
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 379
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 406
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 414
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    .line 418
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 434
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$D0QJUvhaQkGgoMtOmjw5foY9F8M;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$D0QJUvhaQkGgoMtOmjw5foY9F8M;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    .line 479
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 490
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 578
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 653
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 685
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 691
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 695
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 811
    invoke-virtual {p0, p4}, Lcom/android/server/wm/DisplayContent;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 812
    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_218

    .line 818
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 819
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 820
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 821
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 822
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 823
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_169

    move v2, v1

    goto :goto_16a

    :cond_169
    move v2, v0

    :goto_16a
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 824
    new-instance v2, Lcom/android/server/wm/DisplayFrames;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->rotation:I

    .line 825
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 826
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 827
    new-instance v2, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 828
    new-instance v2, Lcom/android/server/wm/PinnedStackController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    .line 837
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    .line 839
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    .line 840
    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 841
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 842
    .local v2, "b":Landroid/view/SurfaceControl$Builder;
    const-string v4, "Display Root"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 843
    const-string v4, "Display Overlays"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 845
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 846
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 847
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 848
    invoke-virtual {v0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 849
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 850
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 851
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 855
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 864
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 865
    return-void

    .line 813
    .end local v2    # "b":Landroid/view/SurfaceControl$Builder;
    :cond_218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 814
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayContent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 191
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 191
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayContent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 191
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayContent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 191
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "x1"    # I

    .line 191
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "x1"    # I

    .line 191
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return p1
.end method

.method private addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # Lcom/android/server/wm/WindowToken;

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 890
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_7c

    .line 898
    if-eqz p1, :cond_54

    .line 902
    if-eqz p2, :cond_31

    .line 907
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_30

    .line 912
    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    packed-switch v1, :pswitch_data_b2

    .line 921
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_30

    .line 914
    :pswitch_24
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 915
    goto :goto_30

    .line 918
    :pswitch_2a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 919
    nop

    .line 925
    :cond_30
    :goto_30
    return-void

    .line 903
    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    :cond_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_7c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already mapped to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tokens="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_b2
    .packed-switch 0x7db
        :pswitch_2a
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V
    .registers 16
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "displayId"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "dw"    # I
    .param p6, "dh"    # I

    .line 1549
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1551
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move v2, p5

    move v3, p6

    move v4, p3

    move v5, p4

    move v6, p2

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v8

    .line 1553
    .local v8, "width":I
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v8, v1, :cond_1c

    .line 1554
    iput v8, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1556
    :cond_1c
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v8, v1, :cond_22

    .line 1557
    iput v8, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1559
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move v2, p5

    move v3, p6

    move v4, p3

    move v5, p4

    move v6, p2

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1561
    .local v1, "height":I
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v1, v2, :cond_36

    .line 1562
    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1564
    :cond_36
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v1, v2, :cond_3c

    .line 1565
    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1567
    :cond_3c
    return-void
.end method

.method private calculateBounds(Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3036
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 3037
    .local v0, "orientation":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    nop

    .line 3038
    .local v1, "rotated":Z
    :cond_d
    :goto_d
    if-eqz v1, :cond_12

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_14

    :cond_12
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3039
    .local v2, "physWidth":I
    :goto_14
    if-eqz v1, :cond_19

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1b

    :cond_19
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3040
    .local v3, "physHeight":I
    :goto_1b
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3041
    .local v4, "width":I
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    .line 3042
    .local v5, "left":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3043
    .local v6, "height":I
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    .line 3044
    .local v7, "top":I
    add-int v8, v5, v4

    add-int v9, v7, v6

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 3045
    return-void
.end method

.method private calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 8
    .param p1, "cutout"    # Landroid/view/DisplayCutout;
    .param p2, "rotation"    # I

    .line 1312
    if-eqz p1, :cond_48

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p1, v0, :cond_7

    goto :goto_48

    .line 1315
    :cond_7
    if-nez p2, :cond_12

    .line 1316
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0

    .line 1319
    :cond_12
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x3

    if-ne p2, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    nop

    .line 1320
    .local v0, "rotated":Z
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBounds()Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v1

    .line 1321
    .local v1, "bounds":Landroid/graphics/Path;
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v2, v3, v4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 1323
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1324
    invoke-static {v1}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v2

    .line 1325
    if-eqz v0, :cond_3a

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_3c

    :cond_3a
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1326
    :goto_3c
    if-eqz v0, :cond_41

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_43

    :cond_41
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1324
    :goto_43
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    return-object v2

    .line 1313
    .end local v0    # "rotated":Z
    .end local v1    # "bounds":Landroid/graphics/Path;
    :cond_48
    :goto_48
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private canUpdateImeTarget()Z
    .registers 2

    .line 4186
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private clearLayoutNeeded()V
    .registers 4

    .line 2723
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1f

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearLayoutNeeded: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 2725
    return-void
.end method

.method private computeCompatSmallestWidth(ZIIII)I
    .registers 23
    .param p1, "rotated"    # Z
    .param p2, "uiMode"    # I
    .param p3, "dw"    # I
    .param p4, "dh"    # I
    .param p5, "displayId"    # I

    move-object/from16 v15, p0

    .line 1451
    iget-object v0, v15, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, v15, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1452
    iget-object v14, v15, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1454
    .local v14, "tmpDm":Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_15

    .line 1455
    move/from16 v0, p4

    .line 1456
    .local v0, "unrotDw":I
    move/from16 v1, p3

    .line 1459
    .local v1, "unrotDh":I
    move/from16 v16, v0

    move v6, v1

    goto :goto_1b

    .line 1458
    .end local v0    # "unrotDw":I
    .end local v1    # "unrotDh":I
    :cond_15
    move/from16 v0, p3

    .line 1459
    .restart local v0    # "unrotDw":I
    move/from16 v6, p4

    move/from16 v16, v0

    .line 1461
    .end local v0    # "unrotDw":I
    .local v6, "unrotDh":I
    .local v16, "unrotDw":I
    :goto_1b
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v15

    move/from16 v3, p2

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    .line 1463
    .local v0, "sw":I
    const/4 v9, 0x1

    move-object v7, v15

    move v8, v0

    move/from16 v10, p2

    move-object v11, v14

    move v12, v6

    move/from16 v13, v16

    move-object v1, v14

    move/from16 v14, p5

    .end local v14    # "tmpDm":Landroid/util/DisplayMetrics;
    .local v1, "tmpDm":Landroid/util/DisplayMetrics;
    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    .line 1465
    const/4 v9, 0x2

    move v8, v0

    move-object v11, v1

    move/from16 v12, v16

    move v13, v6

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    .line 1467
    const/4 v9, 0x3

    move v8, v0

    move v12, v6

    move/from16 v13, v16

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    .line 1469
    return v0
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V
    .registers 34
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "displayId"    # I
    .param p3, "rotated"    # Z
    .param p4, "uiMode"    # I
    .param p5, "dw"    # I
    .param p6, "dh"    # I
    .param p7, "density"    # F
    .param p8, "outConfig"    # Landroid/content/res/Configuration;

    move-object/from16 v14, p1

    .line 1494
    move-object/from16 v15, p8

    if-eqz p3, :cond_e

    .line 1495
    move/from16 v0, p6

    .line 1496
    .local v0, "unrotDw":I
    move/from16 v1, p5

    .line 1499
    .local v1, "unrotDh":I
    move/from16 v24, v0

    move v6, v1

    goto :goto_14

    .line 1498
    .end local v0    # "unrotDw":I
    .end local v1    # "unrotDh":I
    :cond_e
    move/from16 v0, p5

    .line 1499
    .restart local v0    # "unrotDw":I
    move/from16 v6, p6

    move/from16 v24, v0

    .line 1501
    .end local v0    # "unrotDw":I
    .local v6, "unrotDh":I
    .local v24, "unrotDw":I
    :goto_14
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v14, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1502
    iput v0, v14, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1503
    const/4 v0, 0x0

    iput v0, v14, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1504
    iput v0, v14, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1505
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1507
    const/4 v10, 0x1

    move-object/from16 v7, p0

    move-object v8, v14

    move/from16 v9, p2

    move/from16 v11, p4

    move v12, v6

    move/from16 v13, v24

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1509
    const/4 v10, 0x2

    move/from16 v12, v24

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1511
    const/4 v10, 0x3

    move v12, v6

    move/from16 v13, v24

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1513
    iget v0, v15, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 1514
    .local v0, "sl":I
    const/16 v18, 0x0

    move-object/from16 v16, p0

    move/from16 v17, v0

    move/from16 v19, p7

    move/from16 v20, v24

    move/from16 v21, v6

    move/from16 v22, p4

    move/from16 v23, p2

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    .line 1516
    const/16 v18, 0x1

    move/from16 v17, v0

    move/from16 v20, v6

    move/from16 v21, v24

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    .line 1518
    const/16 v18, 0x2

    move/from16 v17, v0

    move/from16 v20, v24

    move/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    .line 1520
    const/16 v18, 0x3

    move/from16 v17, v0

    move/from16 v20, v6

    move/from16 v21, v24

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    .line 1522
    iget v1, v14, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p7

    float-to-int v1, v1

    iput v1, v15, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1523
    iput v0, v15, Landroid/content/res/Configuration;->screenLayout:I

    .line 1524
    return-void
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .registers 6
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "rot"    # I
    .param p2, "dw"    # I
    .param p3, "dh"    # I

    .line 3186
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 3187
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3188
    .local v0, "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3189
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 3190
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3191
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 3192
    .end local v0    # "tmp":I
    goto :goto_4b

    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    .line 3193
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3194
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3195
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3196
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 3197
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 3198
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 3199
    .end local v0    # "tmp":I
    goto :goto_4b

    :cond_34
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4b

    .line 3200
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3201
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3202
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 3203
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3204
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 3206
    .end local v0    # "tmp":I
    :cond_4b
    :goto_4b
    return-void
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .registers 8
    .param p0, "rotation"    # I
    .param p1, "rectLeft"    # F
    .param p2, "rectTop"    # F
    .param p3, "displayWidth"    # F
    .param p4, "displayHeight"    # F
    .param p5, "outMatrix"    # Landroid/graphics/Matrix;

    .line 2263
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_28

    goto :goto_26

    .line 2268
    :pswitch_5
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p5, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2269
    invoke-virtual {p5, v0, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2270
    invoke-virtual {p5, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2271
    goto :goto_26

    .line 2273
    :pswitch_11
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2274
    goto :goto_26

    .line 2276
    :pswitch_15
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p5, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2277
    invoke-virtual {p5, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2278
    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 2265
    :pswitch_22
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2266
    nop

    .line 2281
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_22
        :pswitch_15
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .registers 10
    .param p0, "rotation"    # I
    .param p1, "displayWidth"    # F
    .param p2, "displayHeight"    # F
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .line 2257
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 2259
    return-void
.end method

.method static deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 2249
    sub-int v0, p1, p0

    .line 2250
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 2251
    :cond_6
    return v0
.end method

.method private getBounds(Landroid/graphics/Rect;I)V
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 3053
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 3056
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 3057
    .local v0, "currentRotation":I
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 3058
    .local v1, "rotationDelta":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2d

    .line 3059
    :cond_11
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 3060
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3061
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3062
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 3064
    :cond_2d
    return-void
.end method

.method private hasPinnedStack()Z
    .registers 2

    .line 1617
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$canAddToastWindowForUid$14(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2446
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$canAddToastWindowForUid$15(ILcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2451
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_16

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static synthetic lambda$checkWaitingForWindows$20(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2780
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2781
    return v1

    .line 2783
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2784
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e5

    if-ne v0, v2, :cond_23

    .line 2785
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    goto :goto_52

    .line 2786
    :cond_23
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_50

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_32

    goto :goto_50

    .line 2789
    :cond_32
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_3d

    .line 2790
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    goto :goto_52

    .line 2791
    :cond_3d
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_52

    .line 2792
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    goto :goto_52

    .line 2788
    :cond_50
    :goto_50
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 2795
    :cond_52
    :goto_52
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$destroyLeakedSurfaces$16(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2536
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2537
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_7

    .line 2538
    return-void

    .line 2540
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 2541
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 2547
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2548
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_a7

    .line 2549
    :cond_62
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 2550
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_a2

    const-string v1, "LEAK DESTROY"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 2554
    :cond_a2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 2555
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2557
    :cond_a7
    :goto_a7
    return-void
.end method

.method static synthetic lambda$dumpWindowAnimators$18(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "subPrefix"    # Ljava/lang/String;
    .param p2, "index"    # [I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 2753
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2754
    .local v0, "wAnim":Lcom/android/server/wm/WindowStateAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Window #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2755
    aget v1, p2, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v2

    .line 2756
    return-void
.end method

.method public static synthetic lambda$fiC19lMy-d_-rvza7hhOSw6bOM8(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLayerForAnimationBackground$12(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 2220
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static synthetic lambda$getNeedsMenu$17(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "top"    # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 2695
    if-ne p3, p1, :cond_4

    .line 2697
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2699
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2700
    return v1

    .line 2703
    :cond_a
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 2704
    return v2

    .line 2708
    :cond_12
    if-ne p3, p2, :cond_15

    .line 2709
    return v2

    .line 2711
    :cond_15
    return v1
.end method

.method public static synthetic lambda$getTouchableWinAtPointLocked$13(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 2419
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2420
    .local v0, "flags":I
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2421
    return v2

    .line 2423
    :cond_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    .line 2424
    return v2

    .line 2427
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 2428
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2429
    return v2

    .line 2432
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2434
    and-int/lit8 v1, v0, 0x28

    .line 2435
    .local v1, "touchFlags":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_32

    if-nez v1, :cond_31

    goto :goto_32

    :cond_31
    goto :goto_33

    :cond_32
    :goto_32
    const/4 v2, 0x1

    :goto_33
    return v2
.end method

.method static synthetic lambda$hasSecureWindowOnScreen$21(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 2883
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 419
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 420
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 421
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2b

    .line 422
    if-eqz v1, :cond_f

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_2b

    .line 423
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 424
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 425
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_2b

    .line 426
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string/jumbo v3, "updateWindowsAndWallpaperLocked 5"

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 432
    :cond_2b
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 435
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 436
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_63

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_63

    .line 440
    :cond_d
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 444
    .local v1, "flags":I
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    const/high16 v3, 0x100000

    if-eqz v2, :cond_3a

    .line 445
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v2

    .line 446
    .local v2, "anim":Lcom/android/server/wm/AnimationAdapter;
    if-eqz v2, :cond_3a

    .line 447
    and-int v4, v1, v3

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Lcom/android/server/wm/AnimationAdapter;->getDetachWallpaper()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 448
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 450
    :cond_2b
    invoke-interface {v2}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v4

    .line 451
    .local v4, "color":I
    if-eqz v4, :cond_3a

    .line 452
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 453
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_3a

    .line 454
    invoke-virtual {v5, v0, v4}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 462
    .end local v2    # "anim":Lcom/android/server/wm/AnimationAdapter;
    .end local v4    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3a
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 463
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v4

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    .line 464
    .local v4, "animation":Lcom/android/server/wm/AnimationAdapter;
    :goto_46
    if-eqz v4, :cond_62

    .line 465
    and-int/2addr v3, v1

    if-eqz v3, :cond_53

    invoke-interface {v4}, Lcom/android/server/wm/AnimationAdapter;->getDetachWallpaper()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 466
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 469
    :cond_53
    invoke-interface {v4}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v3

    .line 470
    .local v3, "color":I
    if-eqz v3, :cond_62

    .line 471
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 472
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_62

    .line 473
    invoke-virtual {v5, v0, v3}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 477
    .end local v3    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_62
    return-void

    .line 437
    .end local v1    # "flags":I
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "animation":Lcom/android/server/wm/AnimationAdapter;
    :cond_63
    :goto_63
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 481
    .local v0, "lostFocusUid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 482
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_27

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v0, :cond_27

    .line 483
    const/16 v2, 0x34

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 484
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 488
    :cond_27
    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 12
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 492
    .local v0, "focusedApp":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v1, :cond_36

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", canReceive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_1b7

    .line 498
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-ne v1, v4, :cond_1b6

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_1b6

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v4, 0x2710

    if-lt v1, v4, :cond_1b6

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v1, v4, :cond_1b6

    :cond_5d
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_72

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 502
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v4, 0x5

    if-le v1, v4, :cond_72

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 503
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v1, v4, :cond_8c

    :cond_72
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_1b6

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 504
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_1b6

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1b6

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_1b6

    .line 505
    :cond_8c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b6

    .line 506
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b6

    .line 507
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b6

    .line 508
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b6

    .line 510
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 511
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_114

    .line 512
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v1

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_d4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_e9
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v3, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    goto/16 :goto_1b6

    .line 515
    :cond_114
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-nez v1, :cond_1b6

    .line 516
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-eqz v1, :cond_15f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_15f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_15f

    .line 518
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v3, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    goto :goto_1b6

    .line 519
    :cond_15f
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v1, :cond_1b6

    .line 523
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v1

    if-eqz v1, :cond_178

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_178
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    if-eqz v1, :cond_18d

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_18d
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v3, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    .line 534
    :cond_1b6
    :goto_1b6
    return v2

    .line 537
    :cond_1b7
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 540
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_1f1

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v5, :cond_1c3

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v5, :cond_1f1

    .line 541
    :cond_1c3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v3, :cond_1f0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v5, :cond_1e3

    const-string/jumbo v5, "removed"

    goto :goto_1e6

    :cond_1e3
    const-string/jumbo v5, "sendingToBottom"

    :goto_1e6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1f0
    return v2

    .line 546
    :cond_1f1
    if-nez v0, :cond_210

    .line 547
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_20d

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp=null using new focus @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_20d
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 550
    return v4

    .line 553
    :cond_210
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v2

    if-nez v2, :cond_233

    .line 555
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_230

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp windows not focusable using new focus @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_230
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 558
    return v4

    .line 563
    :cond_233
    if-eqz v1, :cond_25f

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_25f

    .line 564
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-lez v2, :cond_25f

    .line 566
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_25b

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Reached focused app="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_25b
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 569
    return v4

    .line 573
    :cond_25f
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_279

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Found new focus @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_279
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 575
    return v4
.end method

.method public static synthetic lambda$new$4(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 582
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 584
    .local v0, "gone":Z
    :goto_19
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_fe

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_fe

    .line 585
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1ST PASS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": gone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mHaveFrame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLayoutAttached="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " screen changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 589
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_b1

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  GONE: mViewVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mRelayoutCalled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 590
    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hiddenRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_99

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_99

    move v6, v2

    goto :goto_9a

    :cond_99
    move v6, v1

    :goto_9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " parentHidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 593
    :cond_b1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  VIS: mViewVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mRelayoutCalled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 594
    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hiddenRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_e7

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_e7

    move v6, v2

    goto :goto_e8

    :cond_e7
    move v6, v1

    :goto_e8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " parentHidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 593
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_fe
    :goto_fe
    if-eqz v0, :cond_130

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v3, :cond_130

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-nez v3, :cond_130

    .line 603
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v3

    if-nez v3, :cond_114

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v3

    if-eqz v3, :cond_1c6

    .line 604
    :cond_114
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-nez v3, :cond_1c6

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_130

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_1c6

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1c6

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    if-eqz v3, :cond_1c6

    .line 608
    :cond_130
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_1c6

    .line 611
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->mIsIgnoreCameraNotch:Z

    if-eqz v3, :cond_153

    const-string v3, "com.oneplus.aod"

    .line 612
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_153

    const-string v3, "android"

    .line 613
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_153

    goto :goto_160

    .line 616
    :cond_153
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isNotchUnLimit()Z

    move-result v3

    if-eqz v3, :cond_160

    .line 618
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    or-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 621
    :cond_160
    :goto_160
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v3, :cond_166

    .line 623
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 625
    :cond_166
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_170

    .line 628
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 630
    :cond_170
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 631
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 632
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 633
    .local v1, "firstLayout":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 634
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 638
    if-eqz v1, :cond_18d

    .line 639
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 642
    :cond_18d
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_196

    .line 643
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 646
    :cond_196
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1c6

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  LAYOUT: mFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mContainingFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mDisplayFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .end local v1    # "firstLayout":Z
    :cond_1c6
    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 654
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_ab

    .line 655
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_3c

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2ND PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHaveFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mViewVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRelayoutCalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 662
    return-void

    .line 664
    :cond_4b
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_55

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_5d

    :cond_55
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_5d

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_b7

    .line 666
    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 668
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 670
    :cond_64
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 671
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 673
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 674
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_b7

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LAYOUT: mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContainingFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 678
    :cond_ab
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_b7

    .line 681
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 683
    :cond_b7
    :goto_b7
    return-void
.end method

.method public static synthetic lambda$new$6(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 686
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    if-eqz v0, :cond_2e

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking window @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fl=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 687
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$7(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 692
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public static synthetic lambda$new$8(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 13
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 696
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 697
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_10

    move v1, v4

    goto :goto_11

    :cond_10
    move v1, v3

    .line 699
    .local v1, "obscuredChanged":Z
    :goto_11
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 701
    .local v2, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 704
    .local v5, "someoneLosingFocus":Z
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v6, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 705
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v6, :cond_9a

    .line 706
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    .line 708
    .local v6, "isDisplayed":Z
    if-eqz v6, :cond_3c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 711
    iput-object p1, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 712
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v4, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 715
    :cond_3c
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v10, v10, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 716
    invoke-virtual {v2, p1, v9, v10}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 720
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_9a

    if-eqz v6, :cond_9a

    .line 721
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 722
    .local v7, "type":I
    const/16 v8, 0x7d8

    if-eq v7, v8, :cond_69

    const/16 v8, 0x7da

    if-eq v7, v8, :cond_69

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_6d

    .line 724
    :cond_69
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v4, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 726
    :cond_6d
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_86

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_86

    .line 728
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v9, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 731
    :cond_86
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v8, :cond_9a

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v8, :cond_9a

    .line 733
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v9, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 739
    .end local v6    # "isDisplayed":Z
    .end local v7    # "type":I
    :cond_9a
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_b3

    if-eqz v1, :cond_b3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_b3

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 740
    invoke-virtual {v6, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 743
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 746
    :cond_b3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 748
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 751
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 754
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_117

    .line 756
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v3

    .line 757
    .local v3, "committed":Z
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_117

    if-eqz v3, :cond_117

    .line 758
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v7, v8, :cond_e0

    .line 762
    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v7, v4

    iput v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 763
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v7, :cond_e0

    .line 764
    const-string v7, "dream and commitFinishDrawingLocked true"

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 769
    :cond_e0
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_117

    .line 770
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_103

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "First draw done in potential wallpaper target "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_103
    iput-boolean v4, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 773
    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 774
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v7, :cond_117

    .line 775
    const-string/jumbo v7, "wallpaper and commitFinishDrawingLocked true"

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 783
    .end local v3    # "committed":Z
    :cond_117
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 784
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_131

    .line 785
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 786
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v7

    .line 787
    .local v7, "updateAllDrawn":Z
    if-eqz v7, :cond_131

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_131

    .line 788
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v7    # "updateAllDrawn":Z
    :cond_131
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_147

    if-eqz v5, :cond_147

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne p1, v7, :cond_147

    .line 793
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v7

    if-eqz v7, :cond_147

    .line 794
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v4, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    .line 797
    :cond_147
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    .line 798
    return-void
.end method

.method public static synthetic lambda$onSeamlessRotationTimeout$25(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3213
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_5

    .line 3214
    return-void

    .line 3216
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3217
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3218
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 3219
    return-void
.end method

.method public static synthetic lambda$onWindowFreezeTimeout$23(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2912
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2913
    return-void

    .line 2915
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 2916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 2918
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force clearing orientation change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    return-void
.end method

.method static synthetic lambda$startKeyguardExitOnNonAppWindows$19(Lcom/android/server/policy/WindowManagerPolicy;ZZLcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 2765
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    invoke-interface {p0, p3}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2766
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2767
    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2769
    :cond_1d
    return-void
.end method

.method public static synthetic lambda$updateRotationUnchecked$10(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 1176
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->seamlesslyRotateWindow(Landroid/view/SurfaceControl$Transaction;II)V

    .line 1178
    return-void
.end method

.method public static synthetic lambda$updateRotationUnchecked$11(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "rotateSeamlessly"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1185
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    if-nez p1, :cond_2d

    .line 1186
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_21

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set mOrientationChanging of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_21
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1188
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1189
    iput v2, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1191
    :cond_2d
    iput-boolean v1, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 1192
    return-void
.end method

.method static synthetic lambda$updateRotationUnchecked$9(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method static synthetic lambda$updateSystemUiVisibility$22(IILcom/android/server/wm/WindowState;)V
    .registers 8
    .param p0, "visibility"    # I
    .param p1, "globalDiff"    # I
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 2890
    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2891
    .local v0, "curValue":I
    xor-int v1, v0, p0

    and-int/2addr v1, p1

    .line 2892
    .local v1, "diff":I
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, p0, v1

    or-int/2addr v2, v3

    .line 2893
    .local v2, "newValue":I
    if-eq v2, v0, :cond_14

    .line 2894
    iget v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 2895
    iput v2, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2897
    :cond_14
    if-ne v2, v0, :cond_1c

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v3, v3, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v3, :cond_23

    .line 2898
    :cond_1c
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v3, v4, p0, v2, v1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 2903
    .end local v0    # "curValue":I
    .end local v1    # "diff":I
    .end local v2    # "newValue":I
    :cond_23
    goto :goto_25

    .line 2901
    :catch_24
    move-exception v0

    .line 2904
    :goto_25
    return-void
.end method

.method public static synthetic lambda$waitForAllWindowsDrawn$24(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 2926
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    .line 2927
    .local v0, "keyguard":Z
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_12

    if-eqz v0, :cond_43

    .line 2928
    :cond_12
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2930
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2933
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3c

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " drawn."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2937
    :cond_43
    return-void
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I
    .registers 16
    .param p1, "curSize"    # I
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dm"    # Landroid/util/DisplayMetrics;
    .param p5, "dw"    # I
    .param p6, "dh"    # I
    .param p7, "displayId"    # I

    .line 1474
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move v6, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1476
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 1478
    const/4 v0, 0x0

    invoke-static {p4, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 1479
    .local v0, "scale":F
    iget v1, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1480
    .local v1, "size":I
    if-eqz p1, :cond_35

    if-ge v1, p1, :cond_36

    .line 1481
    :cond_35
    move p1, v1

    .line 1483
    :cond_36
    return p1
.end method

.method private reduceConfigLayout(IIFIIII)I
    .registers 18
    .param p1, "curLayout"    # I
    .param p2, "rotation"    # I
    .param p3, "density"    # F
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "uiMode"    # I
    .param p7, "displayId"    # I

    move-object v0, p0

    .line 1529
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v3, p4

    move v4, p5

    move v5, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v2 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1531
    .local v1, "w":I
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v4, p4

    move v5, p5

    move v6, p2

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v9}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v2

    .line 1535
    .local v2, "h":I
    move v3, v1

    .line 1536
    .local v3, "longSize":I
    move v4, v2

    .line 1537
    .local v4, "shortSize":I
    if-ge v3, v4, :cond_2e

    .line 1538
    move v5, v3

    .line 1539
    .local v5, "tmp":I
    move v3, v4

    .line 1540
    move v4, v5

    .line 1542
    .end local v5    # "tmp":I
    :cond_2e
    int-to-float v5, v3

    div-float/2addr v5, p3

    float-to-int v3, v5

    .line 1543
    int-to-float v5, v4

    div-float/2addr v5, p3

    float-to-int v4, v5

    .line 1544
    move v5, p1

    invoke-static {v5, v3, v4}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v6

    return v6
.end method

.method private resetAnimationBackgroundAnimator()V
    .registers 3

    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2064
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 2063
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2066
    .end local v0    # "stackNdx":I
    :cond_18
    return-void
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V
    .registers 4
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "targetWaitingAnim"    # Z

    .line 2675
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_d

    .line 2677
    return-void

    .line 2680
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 2681
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 2682
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2683
    return-void
.end method

.method private skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1712
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    .line 1721
    const/4 v0, 0x1

    return v0

    .line 1723
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .registers 13

    .line 1831
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 1832
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1833
    .local v0, "orientation":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    goto :goto_19

    :cond_17
    move v3, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v3, v2

    .line 1834
    .local v3, "rotated":Z
    :goto_1a
    if-eqz v3, :cond_21

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_25

    :cond_21
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1835
    .local v4, "newWidth":I
    :goto_25
    if-eqz v3, :cond_2c

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_30

    :cond_2c
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1836
    .local v5, "newHeight":I
    :goto_30
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1837
    .local v6, "newDensity":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1839
    .local v7, "newCutout":Landroid/view/DisplayCutout;
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v4, :cond_53

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v8, v5, :cond_53

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v8, v9, :cond_53

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 1842
    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    goto :goto_53

    :cond_51
    move v8, v1

    goto :goto_54

    :cond_53
    :goto_53
    move v8, v2

    .line 1844
    .local v8, "displayMetricsChanged":Z
    :goto_54
    if-eqz v8, :cond_90

    .line 1846
    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v9, v10, :cond_65

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v9, v10, :cond_63

    goto :goto_65

    :cond_63
    move v9, v1

    goto :goto_66

    :cond_65
    :goto_65
    move v9, v2

    .line 1848
    .local v9, "isDisplaySizeForced":Z
    :goto_66
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v10, v11, :cond_6e

    move v1, v2

    nop

    .line 1851
    .local v1, "isDisplayDensityForced":Z
    :cond_6e
    if-eqz v9, :cond_73

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_74

    .line 1852
    :cond_73
    move v2, v4

    :goto_74
    if-eqz v9, :cond_79

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_7a

    .line 1853
    :cond_79
    move v10, v5

    :goto_7a
    if-eqz v1, :cond_7f

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_80

    .line 1851
    :cond_7f
    move v11, v6

    :goto_80
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 1856
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1857
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1858
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 1859
    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 1860
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1862
    .end local v1    # "isDisplayDensityForced":Z
    .end local v9    # "isDisplaySizeForced":Z
    :cond_90
    return-void
.end method

.method private updateBounds()V
    .registers 2

    .line 3029
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/graphics/Rect;)V

    .line 3030
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setBounds(Landroid/graphics/Rect;)I

    .line 3031
    return-void
.end method

.method private updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;
    .registers 19
    .param p1, "uiMode"    # I

    move-object/from16 v0, p0

    .line 1238
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_d

    goto :goto_f

    :cond_d
    const/4 v2, 0x0

    nop

    :cond_f
    :goto_f
    move v1, v2

    .line 1239
    .local v1, "rotated":Z
    if-eqz v1, :cond_15

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_17

    :cond_15
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1240
    .local v2, "realdw":I
    :goto_17
    if-eqz v1, :cond_1c

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1e

    :cond_1c
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1241
    .local v4, "realdh":I
    :goto_1e
    move v5, v2

    .line 1242
    .local v5, "dw":I
    move v6, v4

    .line 1244
    .local v6, "dh":I
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    if-eqz v7, :cond_36

    .line 1245
    const v7, 0x3fa66666    # 1.3f

    if-le v2, v4, :cond_30

    .line 1247
    int-to-float v8, v4

    div-float/2addr v8, v7

    float-to-int v7, v8

    .line 1248
    .local v7, "maxw":I
    if-ge v7, v2, :cond_2f

    .line 1249
    move v5, v7

    .line 1251
    .end local v7    # "maxw":I
    :cond_2f
    goto :goto_36

    .line 1253
    :cond_30
    int-to-float v8, v2

    div-float/2addr v8, v7

    float-to-int v7, v8

    .line 1254
    .local v7, "maxh":I
    if-ge v7, v4, :cond_36

    .line 1255
    move v6, v7

    .line 1261
    .end local v7    # "maxh":I
    :cond_36
    :goto_36
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {v0, v7}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v14

    .line 1262
    .local v14, "wmDisplayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    invoke-virtual {v14}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v15

    .line 1264
    .local v15, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v8, v5

    move v9, v6

    move/from16 v11, p1

    move-object v13, v15

    invoke-interface/range {v7 .. v13}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v13

    .line 1266
    .local v13, "appWidth":I
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v3, v13

    move-object v13, v15

    .end local v13    # "appWidth":I
    .local v3, "appWidth":I
    invoke-interface/range {v7 .. v13}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 1268
    .local v7, "appHeight":I
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v9, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 1269
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1270
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1271
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v9, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1272
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v8, Landroid/view/DisplayInfo;->appWidth:I

    .line 1273
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v8, Landroid/view/DisplayInfo;->appHeight:I

    .line 1274
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_89

    .line 1275
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v11, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v8, v10, v11, v9}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1278
    :cond_89
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v15}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_93

    move-object v10, v9

    goto :goto_94

    :cond_93
    move-object v10, v15

    :goto_94
    iput-object v10, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1279
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v10}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 1280
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v8, :cond_ab

    .line 1281
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v8, Landroid/view/DisplayInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v10, v11

    iput v10, v8, Landroid/view/DisplayInfo;->flags:I

    goto :goto_b5

    .line 1283
    :cond_ab
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v8, Landroid/view/DisplayInfo;->flags:I

    const v11, -0x40000001    # -1.9999999f

    and-int/2addr v10, v11

    iput v10, v8, Landroid/view/DisplayInfo;->flags:I

    .line 1290
    :goto_b5
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    if-eqz v8, :cond_bc

    .line 1291
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    nop

    :cond_bc
    move-object v8, v9

    .line 1292
    .local v8, "overrideDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10, v8}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 1295
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1297
    iget-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_da

    .line 1298
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v9, v10}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v9

    iput v9, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 1302
    :cond_da
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    .line 1303
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v9
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p2, "index"    # I

    .line 1935
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 1930
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    .line 191
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 3

    .line 191
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method adjustForImeIfNeeded()V
    .registers 20

    .line 2169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2170
    .local v1, "imeWin":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2171
    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isImeHideRequested()Z

    move-result v4

    if-nez v4, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v2

    :goto_21
    move v8, v4

    .line 2172
    .local v8, "imeVisible":Z
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v9

    .line 2173
    .local v9, "dockVisible":Z
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 2174
    .local v10, "imeTargetStack":Lcom/android/server/wm/TaskStack;
    if-eqz v9, :cond_36

    if-eqz v10, :cond_36

    .line 2175
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v4

    goto :goto_37

    :cond_36
    const/4 v4, -0x1

    :goto_37
    move v11, v4

    .line 2176
    .local v11, "imeDockSide":I
    const/4 v4, 0x2

    if-ne v11, v4, :cond_3d

    move v4, v3

    goto :goto_3e

    :cond_3d
    move v4, v2

    :goto_3e
    move v12, v4

    .line 2177
    .local v12, "imeOnTop":Z
    const/4 v4, 0x4

    if-ne v11, v4, :cond_44

    move v5, v3

    goto :goto_45

    :cond_44
    move v5, v2

    :goto_45
    move v13, v5

    .line 2178
    .local v13, "imeOnBottom":Z
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v14

    .line 2179
    .local v14, "dockMinimized":Z
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result v15

    .line 2180
    .local v15, "imeHeight":I
    if-eqz v8, :cond_5e

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2181
    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->getImeHeightAdjustedFor()I

    move-result v5

    if-eq v15, v5, :cond_5e

    move v5, v3

    goto :goto_5f

    :cond_5e
    move v5, v2

    :goto_5f
    move/from16 v16, v5

    .line 2189
    .local v16, "imeHeightChanged":Z
    if-eqz v8, :cond_b2

    if-eqz v9, :cond_b2

    if-nez v12, :cond_69

    if-eqz v13, :cond_b2

    :cond_69
    if-nez v14, :cond_b2

    .line 2190
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_72
    if-ltz v5, :cond_a7

    .line 2191
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 2192
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    if-ne v7, v4, :cond_84

    move v7, v3

    goto :goto_85

    :cond_84
    move v7, v2

    .line 2193
    .local v7, "isDockedOnBottom":Z
    :goto_85
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_a0

    if-nez v13, :cond_8f

    if-eqz v7, :cond_a0

    .line 2194
    :cond_8f
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v17

    if-eqz v17, :cond_a0

    .line 2195
    if-eqz v13, :cond_9b

    if-eqz v16, :cond_9b

    move v4, v3

    goto :goto_9c

    :cond_9b
    move v4, v2

    :goto_9c
    invoke-virtual {v6, v1, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_a3

    .line 2197
    :cond_a0
    invoke-virtual {v6, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2190
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "isDockedOnBottom":Z
    :goto_a3
    add-int/lit8 v5, v5, -0x1

    const/4 v4, 0x4

    goto :goto_72

    .line 2200
    .end local v5    # "i":I
    :cond_a7
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, v13

    move-object v6, v1

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    goto :goto_d5

    .line 2203
    :cond_b2
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_b9
    if-ltz v2, :cond_cb

    .line 2204
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2205
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    xor-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2203
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_b9

    .line 2207
    .end local v2    # "i":I
    :cond_cb
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v9

    move-object v6, v1

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    .line 2210
    :goto_d5
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v2, v8, v15}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    .line 2211
    return-void
.end method

.method animateForIme(FFF)Z
    .registers 12
    .param p1, "interpolatedValue"    # F
    .param p2, "animationTarget"    # F
    .param p3, "dividerAnimationTarget"    # F

    .line 2118
    const/4 v0, 0x0

    .line 2120
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_5c

    .line 2121
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2122
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2123
    goto :goto_59

    .line 2126
    :cond_1c
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_30

    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_30

    cmpl-float v5, p3, v5

    if-nez v5, :cond_30

    .line 2127
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2128
    const/4 v0, 0x1

    goto :goto_52

    .line 2130
    :cond_30
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2131
    invoke-virtual {v6, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 2132
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2133
    invoke-virtual {v6, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 2134
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v5, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v6, v6, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2139
    :goto_52
    cmpl-float v4, p1, v4

    if-ltz v4, :cond_59

    .line 2140
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    .line 2120
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2144
    .end local v1    # "i":I
    :cond_5c
    return v0
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 6
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 4054
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_c

    .line 4055
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_f

    .line 4057
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 4060
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 4061
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4062
    return-void
.end method

.method applySurfaceChangesTransaction(Z)Z
    .registers 13
    .param p1, "recoveringMemory"    # Z

    .line 2943
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2944
    .local v0, "dw":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2945
    .local v1, "dh":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 2947
    .local v2, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 2949
    const/4 v3, 0x0

    move v4, v3

    .line 2951
    .local v4, "repeats":I
    :cond_13
    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 2952
    const/4 v6, 0x6

    if-le v4, v6, :cond_24

    .line 2953
    const-string v3, "WindowManager"

    const-string v6, "Animation repeat aborted after too many iterations"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 2955
    goto/16 :goto_bb

    .line 2958
    :cond_24
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v6, :cond_2f

    const-string v6, "On entry to LockedInner"

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 2965
    :cond_2f
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x4

    if-eqz v6, :cond_3e

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3e

    .line 2966
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V

    .line 2969
    :cond_3e
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_73

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_73

    .line 2970
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_53

    const-string v6, "WindowManager"

    const-string v8, "Computing new config from layout"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_53
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 2972
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2973
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2977
    :cond_73
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_7b

    .line 2978
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2982
    :cond_7b
    if-ge v4, v7, :cond_86

    .line 2983
    if-ne v4, v5, :cond_81

    move v6, v5

    goto :goto_82

    :cond_81
    move v6, v3

    :goto_82
    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_8d

    .line 2985
    :cond_86
    const-string v6, "WindowManager"

    const-string v7, "Layout repeat skipped after too many iterations"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :goto_8d
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2991
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_b7

    .line 2992
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    .line 2993
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v6, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2994
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2995
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v6, :cond_b7

    const-string v6, "after finishPostLayoutPolicyLw"

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 2998
    :cond_b7
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v6, :cond_13

    .line 3000
    :goto_bb
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 3002
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    .line 3003
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3004
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 3006
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v9, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 3012
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v3

    .line 3013
    .local v3, "wallpaperVisible":Z
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v3, v5, :cond_f3

    .line 3014
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 3015
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3018
    :cond_f3
    :goto_f3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_107

    .line 3019
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 3022
    .local v5, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateAllDrawn()V

    .line 3023
    .end local v5    # "atoken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_f3

    .line 3025
    :cond_107
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    return v5
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4082
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4083
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4084
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4086
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4087
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x1

    .line 4106
    .local v2, "needAssignIme":Z
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 4107
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isAppAnimating()Z

    move-result v3

    if-nez v3, :cond_37

    .line 4108
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4109
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4113
    const/4 v2, 0x0

    .line 4118
    :cond_37
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4119
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4120
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 4121
    if-ne v2, v1, :cond_48

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    .line 4120
    :goto_49
    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 4122
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4123
    return-void
.end method

.method assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 4135
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4136
    return-void
.end method

.method assignStackOrdering()V
    .registers 3

    .line 4157
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 4158
    return-void
.end method

.method assignWindowLayers(Z)V
    .registers 5
    .param p1, "setLayoutNeeded"    # Z

    .line 2500
    const-string v0, "assignWindowLayers"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2501
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 2502
    if-eqz p1, :cond_13

    .line 2503
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2510
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 2511
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2512
    return-void
.end method

.method beginImeAdjustAnimation()V
    .registers 4

    .line 2160
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 2161
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2162
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2163
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    .line 2160
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2166
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4
    .param p1, "rotation"    # I

    .line 1307
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method canAddToastWindowForUid(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 2445
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2447
    .local v0, "focusedWindowForUid":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 2448
    return v1

    .line 2450
    :cond_d
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2453
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 3

    .line 2102
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    .line 2104
    .local v0, "stillDeferringRemoval":Z
    if-nez v0, :cond_f

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v1, :cond_f

    .line 2105
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2106
    const/4 v1, 0x0

    return v1

    .line 2108
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method checkWaitingForWindows()Z
    .registers 8

    .line 2774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 2775
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 2776
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 2777
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 2779
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2798
    .local v2, "visibleWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_16

    .line 2800
    return v1

    .line 2805
    :cond_16
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2807
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v3, :cond_40

    move v3, v1

    goto :goto_41

    :cond_40
    move v3, v0

    .line 2811
    .local v3, "wallpaperEnabled":Z
    :goto_41
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v4, :cond_49

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v4, :cond_9f

    :cond_49
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "******** booted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveBoot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveWall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " wallEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveKeyguard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_9f
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v4, :cond_aa

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    if-nez v4, :cond_aa

    .line 2821
    return v1

    .line 2826
    :cond_aa
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v4, :cond_bf

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    if-nez v4, :cond_b8

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    if-eqz v4, :cond_be

    :cond_b8
    if-eqz v3, :cond_bf

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    if-nez v4, :cond_bf

    .line 2828
    :cond_be
    return v1

    .line 2831
    :cond_bf
    return v0
.end method

.method clearImeAdjustAnimation()Z
    .registers 6

    .line 2148
    const/4 v0, 0x0

    .line 2149
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_22

    .line 2150
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2151
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2152
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2153
    const/4 v0, 0x1

    .line 2149
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2156
    .end local v1    # "i":I
    :cond_22
    return v0
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .registers 11
    .param p1, "updateImeTarget"    # Z

    .line 2568
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 2570
    if-eqz p1, :cond_33

    .line 2571
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_2c

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving IM target from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to null since mInputMethodWindow is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 2575
    :cond_33
    return-object v1

    .line 2578
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 2579
    .local v0, "curTarget":Lcom/android/server/wm/WindowState;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 2580
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_49

    const-string v1, "WindowManager"

    const-string v2, "Defer updating IME target"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_49
    return-object v0

    .line 2587
    :cond_4a
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 2588
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2594
    .local v2, "target":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_66

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_66

    .line 2595
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2596
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_66

    .line 2597
    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppWindowToken;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2598
    .local v4, "betterTarget":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_66

    .line 2599
    move-object v2, v4

    .line 2604
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "betterTarget":Lcom/android/server/wm/WindowState;
    :cond_66
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_82

    if-eqz p1, :cond_82

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposed new IME target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_82
    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_a4

    if-eqz v2, :cond_98

    .line 2611
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 2612
    :cond_98
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_a3

    const-string v1, "WindowManager"

    const-string v3, "New target is home while current target is closing, not changing"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_a3
    return-object v0

    .line 2617
    :cond_a4
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_c6

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Desired input method target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " updateImeTarget="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_c6
    const/4 v3, 0x4

    if-nez v2, :cond_111

    .line 2621
    if-eqz p1, :cond_110

    .line 2622
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v4, :cond_109

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving IM target from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v6, :cond_fd

    .line 2624
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ff

    :cond_fd
    const-string v3, ""

    :goto_ff
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2622
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_109
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 2628
    :cond_110
    return-object v1

    .line 2631
    :cond_111
    if-eqz p1, :cond_1d4

    .line 2632
    if-nez v0, :cond_116

    goto :goto_118

    :cond_116
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2633
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    :goto_118
    if-eqz v1, :cond_18f

    .line 2638
    const/4 v4, 0x0

    .line 2639
    .local v4, "highestTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v5

    if-eqz v5, :cond_125

    .line 2640
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2643
    :cond_125
    if-eqz v4, :cond_18f

    .line 2644
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2645
    .local v5, "appTransition":Lcom/android/server/wm/AppTransition;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_16e

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " animating="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2646
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " layer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " new layer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2645
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_16e
    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_179

    .line 2653
    invoke-direct {p0, v4, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 2654
    return-object v4

    .line 2655
    :cond_179
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v6

    if-eqz v6, :cond_18f

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v6, v8, :cond_18f

    .line 2660
    invoke-direct {p0, v4, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 2661
    return-object v4

    .line 2666
    .end local v4    # "highestTarget":Lcom/android/server/wm/WindowState;
    .end local v5    # "appTransition":Lcom/android/server/wm/AppTransition;
    :cond_18f
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v4, :cond_1d0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving IM target from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2667
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v6, :cond_1c4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c6

    :cond_1c4
    const-string v3, ""

    :goto_1c6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2666
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_1d0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 2671
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1d4
    return-object v2
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .registers 23
    .param p1, "config"    # Landroid/content/res/Configuration;

    move-object/from16 v10, p0

    .line 1334
    move-object/from16 v11, p1

    iget v0, v11, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v10, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    move-result-object v12

    .line 1336
    .local v12, "displayInfo":Landroid/view/DisplayInfo;
    iget v13, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1337
    .local v13, "dw":I
    iget v14, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1338
    .local v14, "dh":I
    const/4 v9, 0x1

    if-gt v13, v14, :cond_13

    move v0, v9

    goto :goto_14

    :cond_13
    const/4 v0, 0x2

    :goto_14
    iput v0, v11, Landroid/content/res/Configuration;->orientation:I

    .line 1341
    iget-object v0, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v9}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 1343
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1344
    .local v8, "density":F
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v12, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v11, Landroid/content/res/Configuration;->uiMode:I

    iget v5, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v6, v12, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1345
    move v1, v13

    move v2, v14

    invoke-interface/range {v0 .. v6}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1347
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v12, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v11, Landroid/content/res/Configuration;->uiMode:I

    iget v5, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v6, v12, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1348
    invoke-interface/range {v0 .. v6}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1351
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, v12, Landroid/view/DisplayInfo;->rotation:I

    iget-object v4, v12, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v5, v10, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    move v2, v13

    move v3, v14

    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 1353
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1354
    .local v7, "leftInset":I
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 1356
    .local v6, "topInset":I
    iget-object v0, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v1, v12, Landroid/view/DisplayInfo;->appWidth:I

    add-int/2addr v1, v7

    iget v2, v12, Landroid/view/DisplayInfo;->appHeight:I

    add-int/2addr v2, v6

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 1359
    iget v0, v12, Landroid/view/DisplayInfo;->rotation:I

    const/4 v5, 0x3

    const/16 v16, 0x0

    if-eq v0, v9, :cond_7c

    iget v0, v12, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v5, :cond_79

    goto :goto_7c

    :cond_79
    move/from16 v3, v16

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v3, v9

    .line 1362
    .local v3, "rotated":Z
    :goto_7d
    iget v2, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v4, v11, Landroid/content/res/Configuration;->uiMode:I

    move-object v0, v10

    move-object v1, v12

    move v15, v5

    move v5, v13

    move/from16 v17, v6

    move v6, v14

    .end local v6    # "topInset":I
    .local v17, "topInset":I
    move/from16 v18, v7

    move v7, v8

    .end local v7    # "leftInset":I
    .local v18, "leftInset":I
    move/from16 v19, v8

    move-object v8, v11

    .end local v8    # "density":F
    .local v19, "density":F
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V

    .line 1365
    iget v0, v11, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0x301

    .line 1366
    iget v1, v12, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9e

    .line 1367
    const/16 v1, 0x200

    goto :goto_a0

    .line 1368
    :cond_9e
    const/16 v1, 0x100

    :goto_a0
    or-int/2addr v0, v1

    iput v0, v11, Landroid/content/res/Configuration;->screenLayout:I

    .line 1370
    iget v0, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    iget v1, v10, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1371
    iget v0, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    iget v1, v10, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1372
    iget v6, v11, Landroid/content/res/Configuration;->uiMode:I

    iget v0, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object v4, v10

    move v5, v3

    move v7, v13

    move v8, v14

    move v1, v9

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIIII)I

    move-result v0

    iput v0, v11, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1374
    iget v0, v12, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, v11, Landroid/content/res/Configuration;->densityDpi:I

    .line 1376
    nop

    .line 1377
    invoke-virtual {v12}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1378
    const/16 v0, 0x8

    goto :goto_d4

    .line 1379
    :cond_d3
    const/4 v0, 0x4

    .line 1380
    :goto_d4
    invoke-virtual {v12}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v2

    if-eqz v2, :cond_e5

    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 1381
    nop

    .line 1382
    const/4 v2, 0x2

    goto :goto_e6

    :cond_e5
    move v2, v1

    :goto_e6
    or-int/2addr v0, v2

    iput v0, v11, Landroid/content/res/Configuration;->colorMode:I

    .line 1386
    iput v1, v11, Landroid/content/res/Configuration;->touchscreen:I

    .line 1387
    iput v1, v11, Landroid/content/res/Configuration;->keyboard:I

    .line 1388
    iput v1, v11, Landroid/content/res/Configuration;->navigation:I

    .line 1390
    const/4 v0, 0x0

    .line 1391
    .local v0, "keyboardPresence":I
    const/4 v2, 0x0

    .line 1392
    .local v2, "navigationPresence":I
    iget-object v4, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v4

    .line 1393
    .local v4, "devices":[Landroid/view/InputDevice;
    if-eqz v4, :cond_fd

    array-length v5, v4

    goto :goto_ff

    :cond_fd
    move/from16 v5, v16

    .line 1394
    .local v5, "len":I
    :goto_ff
    move v6, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v6, "keyboardPresence":I
    :goto_102
    if-ge v0, v5, :cond_15d

    .line 1395
    aget-object v7, v4, v0

    .line 1396
    .local v7, "device":Landroid/view/InputDevice;
    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v8

    if-nez v8, :cond_158

    .line 1397
    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    .line 1398
    .local v8, "sources":I
    invoke-virtual {v7}, Landroid/view/InputDevice;->isExternal()Z

    move-result v9

    if-eqz v9, :cond_119

    .line 1399
    nop

    .line 1400
    const/4 v9, 0x2

    goto :goto_11a

    :cond_119
    move v9, v1

    .line 1403
    .local v9, "presenceFlag":I
    :goto_11a
    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v1, :cond_12c

    .line 1404
    and-int/lit16 v1, v8, 0x1002

    const/16 v15, 0x1002

    if-ne v1, v15, :cond_12a

    .line 1406
    const/4 v1, 0x3

    iput v1, v11, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_130

    .line 1412
    :cond_12a
    const/4 v1, 0x3

    goto :goto_130

    .line 1409
    :cond_12c
    move v1, v15

    const/4 v15, 0x1

    iput v15, v11, Landroid/content/res/Configuration;->touchscreen:I

    .line 1412
    :goto_130
    const v15, 0x10004

    and-int v1, v8, v15

    if-ne v1, v15, :cond_13d

    .line 1413
    const/4 v1, 0x3

    iput v1, v11, Landroid/content/res/Configuration;->navigation:I

    .line 1414
    or-int/2addr v2, v9

    .line 1421
    :cond_13b
    const/4 v1, 0x2

    goto :goto_14d

    .line 1415
    :cond_13d
    const/4 v1, 0x3

    and-int/lit16 v15, v8, 0x201

    const/16 v1, 0x201

    if-ne v15, v1, :cond_13b

    iget v1, v11, Landroid/content/res/Configuration;->navigation:I

    const/4 v15, 0x1

    if-ne v1, v15, :cond_13b

    .line 1417
    const/4 v1, 0x2

    iput v1, v11, Landroid/content/res/Configuration;->navigation:I

    .line 1418
    or-int/2addr v2, v9

    .line 1421
    :goto_14d
    invoke-virtual {v7}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v15

    if-ne v15, v1, :cond_158

    .line 1422
    iput v1, v11, Landroid/content/res/Configuration;->keyboard:I

    .line 1423
    or-int v1, v6, v9

    .line 1394
    .end local v6    # "keyboardPresence":I
    .end local v7    # "device":Landroid/view/InputDevice;
    .end local v8    # "sources":I
    .end local v9    # "presenceFlag":I
    .local v1, "keyboardPresence":I
    move v6, v1

    .end local v1    # "keyboardPresence":I
    .restart local v6    # "keyboardPresence":I
    :cond_158
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    const/4 v15, 0x3

    goto :goto_102

    .line 1428
    .end local v0    # "i":I
    :cond_15d
    iget v0, v11, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16d

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v0, :cond_16d

    .line 1429
    const/4 v0, 0x2

    iput v0, v11, Landroid/content/res/Configuration;->navigation:I

    .line 1430
    or-int/lit8 v2, v2, 0x1

    .line 1435
    :cond_16d
    iget v0, v11, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_175

    const/16 v16, 0x1

    nop

    :cond_175
    move/from16 v0, v16

    .line 1436
    .local v0, "hardKeyboardAvailable":Z
    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v0, v1, :cond_191

    .line 1437
    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 1438
    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x16

    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1439
    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1443
    :cond_191
    const/4 v1, 0x1

    iput v1, v11, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1444
    iput v1, v11, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1445
    iput v1, v11, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1446
    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v11, v6, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .line 1447
    return-void
.end method

.method configureDisplayPolicy()V
    .registers 6

    .line 1224
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setInitialDisplaySize(Landroid/view/Display;III)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 1228
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 1227
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1229
    return-void
.end method

.method continueUpdateImeTarget()V
    .registers 3

    .line 4172
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_5

    .line 4173
    return-void

    .line 4176
    :cond_5
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 4177
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_12

    .line 4178
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 4180
    :cond_12
    return-void
.end method

.method createStack(IZLcom/android/server/wm/StackWindowController;)Lcom/android/server/wm/TaskStack;
    .registers 7
    .param p1, "stackId"    # I
    .param p2, "onTop"    # Z
    .param p3, "controller"    # Lcom/android/server/wm/StackWindowController;

    .line 1904
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_24

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create new stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_24
    new-instance v0, Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1, p3}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/StackWindowController;)V

    .line 1908
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 1909
    return-object v0
.end method

.method deferUpdateImeTarget()V
    .registers 2

    .line 4164
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 4165
    return-void
.end method

.method destroyLeakedSurfaces()Z
    .registers 3

    .line 2534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2535
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2559
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    nop

    :cond_12
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2321
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2322
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display: mDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2324
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "init="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2325
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2326
    const-string v1, "dpi"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2327
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v1, v2, :cond_5b

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v1, v2, :cond_5b

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v1, v2, :cond_7f

    .line 2330
    :cond_5b
    const-string v1, " base="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2331
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2332
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "dpi"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2334
    :cond_7f
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_88

    .line 2335
    const-string v1, " noscale"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    :cond_88
    const-string v1, " cur="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2338
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2339
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2340
    const-string v1, " app="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2341
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2342
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2343
    const-string v1, " rng="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2344
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2345
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2346
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mTouchExcludeRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2352
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLayoutSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2354
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Application tokens in top down Z order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2356
    .local v1, "stackNdx":I
    :goto_155
    if-ltz v1, :cond_176

    .line 2357
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 2358
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/TaskStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2356
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v1, v1, -0x1

    goto :goto_155

    .line 2361
    .end local v1    # "stackNdx":I
    :cond_176
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2362
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b8

    .line 2363
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2364
    const-string v1, "  Exiting tokens:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2365
    .local v1, "i":I
    :goto_191
    if-ltz v1, :cond_1b8

    .line 2366
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 2367
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2368
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2369
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 2370
    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2365
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_191

    .line 2374
    .end local v1    # "i":I
    :cond_1b8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2377
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 2378
    .local v1, "homeStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_1dd

    .line 2379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "homeStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2381
    :cond_1dd
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 2382
    .local v2, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_1ff

    .line 2383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pinnedStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2385
    :cond_1ff
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 2386
    .local v3, "splitScreenPrimaryStack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_221

    .line 2387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "splitScreenPrimaryStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2390
    :cond_221
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2391
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2392
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2393
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2395
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2396
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2397
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 2732
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2733
    return-void

    .line 2735
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2737
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2738
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 2739
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2741
    if-eqz p2, :cond_4a

    .line 2742
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 2743
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_4d

    .line 2745
    :cond_4a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2747
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :goto_4d
    goto :goto_29

    .line 2748
    :cond_4e
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "subPrefix"    # Ljava/lang/String;

    .line 2751
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2752
    .local v0, "index":[I
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2757
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 1693
    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 2468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2470
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 2474
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2475
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2476
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2477
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2478
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->updateTouchWindowUidChange(Ljava/util/HashSet;)V

    .line 2480
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2487
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->findFocusedWindow()V

    .line 2488
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-virtual {v1}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->onFindFocusedWindow()V

    .line 2491
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_5b

    .line 2492
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v1, :cond_5a

    const-string v1, "WindowManager"

    const-string v2, "findFocusedWindow: No focusable windows."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_5a
    return-object v0

    .line 2495
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1977
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1978
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->reset()V

    .line 1979
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_15
    const/4 v2, 0x0

    if-ltz v1, :cond_59

    .line 1980
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 1981
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1982
    return-object v2

    .line 1987
    :cond_2b
    sget-boolean v4, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v4, :cond_46

    .line 1988
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickReply: skip resize for stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    return-object v2

    .line 1993
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v3, p1, p2, v0, v2}, Lcom/android/server/wm/TaskStack;->findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V

    .line 1994
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    if-eqz v2, :cond_56

    .line 1995
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v2

    .line 1979
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 1998
    .end local v1    # "stackNdx":I
    :cond_59
    return-object v2
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 1758
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 9
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 1730
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_26

    .line 1731
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_48

    .line 1732
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 1733
    .local v3, "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1734
    goto :goto_23

    .line 1737
    :cond_1c
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1738
    return v1

    .line 1731
    .end local v3    # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1742
    .end local v2    # "i":I
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1743
    .local v2, "count":I
    move v3, v0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v2, :cond_48

    .line 1744
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 1745
    .local v4, "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1746
    goto :goto_45

    .line 1749
    :cond_3e
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1750
    return v1

    .line 1743
    .end local v4    # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    :cond_45
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1754
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_48
    return v0
.end method

.method getAltOrientation()Z
    .registers 2

    .line 998
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    return v0
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 882
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_8

    .line 883
    const/4 v1, 0x0

    return-object v1

    .line 885
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3049
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/graphics/Rect;)V

    .line 3050
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .registers 2

    .line 969
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .line 873
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .registers 2

    .line 1570
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 1589
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getLastOrientation()I
    .registers 2

    .line 990
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method getLastWindowForcedOrientation()I
    .registers 2

    .line 1006
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v0
.end method

.method getLayerForAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 4
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 2219
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$Po0ivnfO2TfRfOth5ZIOFcmugs4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$Po0ivnfO2TfRfOth5ZIOFcmugs4;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2222
    .local v0, "visibleWallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_f

    .line 2223
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1

    .line 2225
    :cond_f
    iget v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 7
    .param p1, "top"    # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2686
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 2687
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v0, v2, :cond_10

    move v1, v2

    nop

    :cond_10
    return v1

    .line 2691
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2694
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2714
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_27

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v2, :cond_27

    move v1, v2

    nop

    :cond_27
    return v1
.end method

.method getOrientation()I
    .registers 5

    .line 1763
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1765
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_67

    .line 1766
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    .line 1767
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_35

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is frozen, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_35
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v1

    .line 1774
    :cond_38
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1780
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_64

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is frozen while keyguard locked, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_64
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v1

    .line 1785
    :cond_67
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getOrientation()I

    move-result v1

    .line 1786
    .local v1, "orientation":I
    const/4 v2, -0x2

    if-eq v1, v2, :cond_71

    .line 1787
    return v1

    .line 1792
    .end local v1    # "orientation":I
    :cond_71
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getOrientation()I

    move-result v1

    return v1
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 1613
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .registers 2

    .line 1574
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getRotation()I
    .registers 2

    .line 981
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 4018
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 1596
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1597
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 1609
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 1900
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1901
    return-void
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 1633
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1638
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;
    .registers 3
    .param p1, "windowingMode"    # I

    .line 1625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .registers 6
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .line 2416
    float-to-int v0, p1

    .line 2417
    .local v0, "x":I
    float-to-int v1, p2

    .line 2418
    .local v1, "y":I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2438
    .local v2, "touchedWin":Lcom/android/server/wm/WindowState;
    return-object v2
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 1642
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 877
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method public getWindowingLayer()Landroid/view/SurfaceControl;
    .registers 2

    .line 4196
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method hasAccess(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1581
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .registers 3

    .line 2882
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2884
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method hasSplitScreenPrimaryStack()Z
    .registers 2

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method initializeDisplayBaseInfo()V
    .registers 5

    .line 1808
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1809
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v0, :cond_13

    .line 1811
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1812
    .local v1, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_13

    .line 1813
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1817
    .end local v1    # "newDisplayInfo":Landroid/view/DisplayInfo;
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 1819
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1820
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1821
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 1822
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 1823
    return-void
.end method

.method inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 2857
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2858
    .local v1, "imFocus":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_8

    .line 2859
    return v0

    .line 2862
    :cond_8
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_56

    .line 2863
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired input method target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :cond_56
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 2870
    .local v2, "imeClient":Lcom/android/internal/view/IInputMethodClient;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_aa

    .line 2871
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IM target client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    if-eqz v2, :cond_aa

    .line 2873
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IM target client binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting client binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    :cond_aa
    if-eqz v2, :cond_b8

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_b8

    const/4 v0, 0x1

    nop

    :cond_b8
    return v0
.end method

.method isLayoutNeeded()Z
    .registers 2

    .line 2728
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isPrivate()Z
    .registers 2

    .line 1585
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isReady()Z
    .registers 2

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRemovalDeferred()Z
    .registers 2

    .line 2113
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return v0
.end method

.method isStackVisible(I)Z
    .registers 4
    .param p1, "windowingMode"    # I

    .line 2410
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2411
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isVisible()Z
    .registers 2

    .line 1698
    const/4 v0, 0x1

    return v0
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .registers 4

    .line 2518
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2519
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2521
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2523
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2526
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 2527
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2528
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2529
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 4023
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    .line 4024
    .local v0, "s":Landroid/view/SurfaceSession;
    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 4025
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    .line 4027
    if-nez p1, :cond_1b

    .line 4028
    return-object v1

    .line 4031
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4032
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 4031
    return-object v2
.end method

.method makeOverlay()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 4042
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 4043
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4042
    return-object v0
.end method

.method makeSurface(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 4
    .param p1, "s"    # Landroid/view/SurfaceSession;

    .line 4012
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4013
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4012
    return-object v0
.end method

.method moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"    # Z

    .line 1913
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1914
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_3c

    .line 1918
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v1, v2, :cond_19

    .line 1923
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    .line 1924
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 1925
    return-void

    .line 1919
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to its current displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1915
    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " which is not currently attached to any display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method okToAnimate()Z
    .registers 2

    .line 3262
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3263
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 3262
    :goto_17
    return v0
.end method

.method okToDisplay()Z
    .registers 5

    .line 3254
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_20

    .line 3255
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3256
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3255
    move v1, v2

    goto :goto_1f

    .line 3256
    :cond_1e
    nop

    .line 3255
    :goto_1f
    return v1

    .line 3258
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_29

    move v1, v2

    nop

    :cond_29
    return v1
.end method

.method onAppTransitionDone()V
    .registers 3

    .line 1703
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 1704
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1705
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1651
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1656
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 1660
    .local v0, "dividerController":Lcom/android/server/wm/DockedStackDividerController;
    if-eqz v0, :cond_15

    .line 1661
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->onConfigurationChanged()V

    .line 1664
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 1666
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-eqz v1, :cond_22

    .line 1667
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    .line 1669
    :cond_22
    return-void
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 3249
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3250
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 3251
    return-void
.end method

.method onParentSet()V
    .registers 1

    .line 4076
    return-void
.end method

.method onSeamlessRotationTimeout()V
    .registers 3

    .line 3210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3212
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3221
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    .line 3222
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3224
    :cond_17
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 1646
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 1647
    return-void
.end method

.method onWindowFreezeTimeout()V
    .registers 3

    .line 2908
    const-string v0, "WindowManager"

    const-string v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 2911
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2920
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2921
    return-void
.end method

.method performLayout(ZZ)V
    .registers 10
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .line 3067
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3068
    return-void

    .line 3070
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 3072
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3073
    .local v0, "dw":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3074
    .local v1, "dh":I
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_48

    .line 3075
    const-string v2, "WindowManager"

    const-string v3, "-------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performLayout: needed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    :cond_48
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 3080
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    .line 3079
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 3083
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 3084
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 3085
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_84

    .line 3087
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v4

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    .line 3088
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3091
    :cond_84
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 3092
    .local v2, "seq":I
    if-gez v2, :cond_8b

    const/4 v2, 0x0

    .line 3093
    :cond_8b
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 3097
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3098
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 3102
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    sput-object v6, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 3106
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3110
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    .line 3111
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3116
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3119
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 3120
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3121
    if-eqz p2, :cond_bd

    .line 3122
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3125
    :cond_bd
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3126
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p3, "includingParents"    # Z

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1954
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 191
    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/TaskStack;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/TaskStack;

    .line 1957
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 1959
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 2229
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2230
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2231
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 2229
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2233
    .end local v0    # "stackNdx":I
    :cond_18
    return-void
.end method

.method prepareSurfaces()V
    .registers 10

    .line 4140
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 4141
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 4142
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4143
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4144
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v5, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x3

    aget v6, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x1

    aget v7, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x4

    aget v8, v1, v2

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 4147
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4149
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4150
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    .line 4149
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 4153
    :cond_5a
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 4154
    return-void
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .registers 5
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 937
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 938
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-ne v0, p0, :cond_7

    .line 939
    return-void

    .line 941
    :cond_7
    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 942
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_20

    .line 945
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 948
    :cond_20
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 949
    return-void
.end method

.method reapplyMagnificationSpec()V
    .registers 3

    .line 4065
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_d

    .line 4066
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 4068
    :cond_d
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 952
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 953
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_1e

    .line 954
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 958
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 960
    .local v1, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_43

    .line 961
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove non-App token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void

    .line 965
    :cond_43
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 966
    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 1942
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_8

    .line 1943
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1944
    return-void

    .line 1946
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 191
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .registers 4

    .line 3236
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 3237
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 3238
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_1b

    .line 3239
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3236
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3244
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeExistingAppTokensIfPossible()V

    .line 3245
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 2070
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 2072
    return-void

    .line 2074
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2075
    return-void
.end method

.method removeImmediately()V
    .registers 5

    .line 2079
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2081
    const/4 v0, 0x0

    :try_start_4
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2082
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v1, :cond_21

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2084
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v1, :cond_34

    .line 2085
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2087
    :cond_34
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    if-eqz v1, :cond_47

    .line 2088
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2091
    :cond_47
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_5b

    .line 2093
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2094
    nop

    .line 2096
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 2097
    return-void

    .line 2093
    :catchall_5b
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    throw v1
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 929
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_13

    .line 930
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 932
    :cond_13
    return-object v0
.end method

.method reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;

    .line 4050
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 4051
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .registers 8
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 2236
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 2240
    invoke-static {p2, p1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 2241
    .local v0, "deltaRotation":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 2243
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2244
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2245
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2246
    return-void
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 2457
    if-eqz p1, :cond_14

    if-eqz p2, :cond_b

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 2462
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2464
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2465
    return-void

    .line 2458
    :cond_14
    :goto_14
    return-void
.end method

.method screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 3135
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 3136
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_16

    .line 3137
    const-string v0, "WindowManager"

    const-string v2, "Attempted to take screenshot while display was off."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :cond_16
    return-object v1

    .line 3142
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3143
    .local v0, "dw":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3145
    .local v9, "dh":I
    if-lez v0, :cond_81

    if-gtz v9, :cond_25

    goto/16 :goto_81

    .line 3149
    :cond_25
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v2

    .line 3152
    .local v10, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 3154
    .local v2, "rot":I
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3b

    if-ne v2, v4, :cond_39

    goto :goto_3b

    .line 3160
    .end local v2    # "rot":I
    .local v11, "rot":I
    :cond_39
    :goto_39
    move v11, v2

    goto :goto_41

    .line 3155
    .end local v11    # "rot":I
    .restart local v2    # "rot":I
    :cond_3b
    :goto_3b
    if-ne v2, v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v4, v5

    :goto_3f
    move v2, v4

    goto :goto_39

    .line 3160
    .end local v2    # "rot":I
    .restart local v11    # "rot":I
    :goto_41
    invoke-static {v10, v11, v0, v9}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 3162
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 3163
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v12

    .line 3164
    .local v12, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_56

    .line 3165
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_56

    move v3, v5

    nop

    :cond_56
    move v13, v3

    .line 3166
    .local v13, "inRotation":Z
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_64

    if-eqz v13, :cond_64

    const-string v2, "WindowManager"

    const-string v3, "Taking screenshot while rotating"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_64
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v10

    move v3, v0

    move v4, v9

    move v7, v13

    move v8, v11

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3172
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_79

    .line 3173
    const-string v3, "WindowManager"

    const-string v4, "Failed to take screenshot"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    return-object v1

    .line 3179
    :cond_79
    invoke-virtual {v2, p1}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3180
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3181
    return-object v1

    .line 3146
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v11    # "rot":I
    .end local v12    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v13    # "inRotation":Z
    :cond_81
    :goto_81
    return-object v1
.end method

.method setAltOrientation(Z)V
    .registers 2
    .param p1, "altOrientation"    # Z

    .line 1002
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    .line 1003
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 4
    .param p1, "hasVisible"    # Z

    .line 3227
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_17

    .line 3228
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 3227
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3232
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->setExitingTokensHasVisible(Z)V

    .line 3233
    return-void
.end method

.method setLastOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 994
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 995
    return-void
.end method

.method setLayoutNeeded()V
    .registers 4

    .line 2718
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_20

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayoutNeeded: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 2720
    return-void
.end method

.method setMaxUiWidth(I)V
    .registers 5
    .param p1, "width"    # I

    .line 1866
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_26

    .line 1867
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting max ui width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :cond_26
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 1873
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 1874
    return-void
.end method

.method setRotation(I)V
    .registers 2
    .param p1, "newRotation"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 986
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 987
    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "focusedTask"    # Lcom/android/server/wm/Task;

    .line 2004
    if-nez p1, :cond_8

    .line 2005
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_51

    .line 2007
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2008
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 2009
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2010
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_24
    if-ltz v1, :cond_40

    .line 2011
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/wm/TaskStack;

    .line 2012
    .local v8, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object v2, v8

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskStack;->setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2010
    .end local v8    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 2018
    .end local v1    # "stackNdx":I
    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 2019
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2022
    .end local v0    # "delta":I
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2023
    .local v0, "inputMethod":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2027
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2028
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v2, :cond_74

    .line 2029
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_7c

    .line 2033
    :cond_74
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 2036
    :cond_7c
    :goto_7c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_84
    if-ltz v1, :cond_9f

    .line 2037
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2038
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2039
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2036
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_84

    .line 2041
    .end local v1    # "i":I
    :cond_9f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_a7
    if-ltz v1, :cond_b9

    .line 2042
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2043
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2041
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a7

    .line 2046
    .end local v1    # "i":I
    :cond_b9
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_da

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_da

    .line 2047
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 2048
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2049
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2051
    :cond_da
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v1, :cond_e5

    .line 2052
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 2054
    :cond_e5
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZ)V
    .registers 6
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z

    .line 2763
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2764
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZ)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2770
    return-void
.end method

.method switchUser()V
    .registers 3

    .line 2058
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 2059
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2060
    return-void
.end method

.method taskIdFromPoint(II)I
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1962
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_8
    const/4 v1, -0x1

    if-ltz v0, :cond_1d

    .line 1963
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 1964
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskStack;->taskIdFromPoint(II)I

    move-result v3

    .line 1965
    .local v3, "taskId":I
    if-eq v3, v1, :cond_1a

    .line 1966
    return v3

    .line 1962
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "taskId":I
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1969
    .end local v0    # "stackNdx":I
    :cond_1d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBaseDisplayMetrics(III)V
    .registers 8
    .param p1, "baseWidth"    # I
    .param p2, "baseHeight"    # I
    .param p3, "baseDensity"    # I

    .line 1878
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1879
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1880
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1882
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_65

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-le v0, v1, :cond_65

    .line 1883
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1884
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1885
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1887
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_65

    .line 1888
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying config restraints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at density:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1888
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1896
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    .line 1897
    return-void
.end method

.method updateDisplayInfo()V
    .registers 4

    .line 1797
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 1799
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1800
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1802
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_2a

    .line 1803
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    .line 1802
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1805
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method updateRotationUnchecked()Z
    .registers 2

    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationUnchecked(Z)Z
    .registers 26
    .param p1, "forceUpdate"    # Z

    move-object/from16 v1, p0

    .line 1031
    const/4 v0, 0x0

    if-nez p1, :cond_47

    .line 1032
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v2, :cond_17

    .line 1035
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_16

    const-string v2, "WindowManager"

    const-string v3, "Deferring rotation, rotation is paused."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_16
    return v0

    .line 1039
    :cond_17
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1040
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 1041
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1045
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_34

    const-string v3, "WindowManager"

    const-string v4, "Deferring rotation, animation in progress."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_34
    return v0

    .line 1048
    :cond_35
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v3, :cond_47

    .line 1052
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_46

    const-string v3, "WindowManager"

    const-string v4, "Deferring rotation, still finishing previous rotation"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_46
    return v0

    .line 1058
    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_47
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v2, :cond_59

    .line 1060
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_58

    const-string v2, "WindowManager"

    const-string v3, "Deferring rotation, display is not enabled."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_58
    return v0

    .line 1064
    :cond_59
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1065
    .local v2, "oldRotation":I
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1066
    .local v3, "lastOrientation":I
    iget-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    .line 1067
    .local v4, "oldAltOrientation":Z
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    invoke-interface {v5, v3, v2, v6}, Lcom/android/server/policy/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result v5

    .line 1069
    .local v5, "rotation":I
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_9d

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Computed rotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for display id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " based on lastOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and oldRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_9d
    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v2, v5}, Lcom/android/server/policy/WindowManagerPolicy;->shouldRotateSeamlessly(II)Z

    move-result v6

    .line 1075
    .local v6, "mayRotateSeamlessly":Z
    if-eqz v6, :cond_d9

    .line 1076
    sget-object v7, Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 1077
    .local v7, "seamlessRotated":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_b2

    if-nez p1, :cond_b2

    .line 1082
    return v0

    .line 1087
    :cond_b2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 1088
    const/4 v6, 0x0

    .line 1090
    :cond_b9
    move v8, v0

    .line 1090
    .local v8, "i":I
    :goto_ba
    iget-object v9, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_d9

    .line 1091
    iget-object v9, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Session;

    invoke-virtual {v9}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces()Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 1092
    const/4 v6, 0x0

    .line 1093
    goto :goto_d9

    .line 1090
    :cond_d6
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 1097
    .end local v7    # "seamlessRotated":Lcom/android/server/wm/WindowState;
    .end local v8    # "i":I
    :cond_d9
    :goto_d9
    move v14, v6

    .line 1104
    .local v14, "rotateSeamlessly":Z
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7, v3, v5}, Lcom/android/server/policy/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v7

    const/4 v13, 0x1

    xor-int/2addr v7, v13

    move v12, v7

    .line 1107
    .local v12, "altOrientation":Z
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_126

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " selected orientation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", got rotation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " which has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    if-eqz v12, :cond_115

    const-string/jumbo v9, "incompatible"

    goto :goto_117

    :cond_115
    const-string v9, "compatible"

    :goto_117
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " metrics"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1107
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_126
    if-ne v2, v5, :cond_12b

    if-ne v4, v12, :cond_12b

    .line 1114
    return v0

    .line 1117
    :cond_12b
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_173

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rotation changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1119
    if-eqz v12, :cond_14d

    const-string v9, " (alt)"

    goto :goto_14f

    :cond_14d
    const-string v9, ""

    :goto_14f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1120
    if-eqz v4, :cond_15f

    const-string v9, " (alt)"

    goto :goto_161

    :cond_15f
    const-string v9, ""

    :goto_161
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", lastOrientation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1117
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_173
    invoke-static {v5, v2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_17e

    .line 1123
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v13, v7, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 1126
    :cond_17e
    iput v5, v1, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1127
    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    .line 1128
    iget-boolean v7, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_18d

    .line 1129
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7, v5}, Lcom/android/server/policy/WindowManagerPolicy;->setRotationLw(I)V

    .line 1132
    :cond_18d
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v13, v7, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1133
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1134
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1138
    new-array v9, v8, [I

    .line 1139
    .local v9, "anim":[I
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7, v9}, Lcom/android/server/policy/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    .line 1141
    if-nez v14, :cond_1c6

    .line 1142
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    aget v0, v9, v0

    aget v8, v9, v13

    invoke-virtual {v7, v0, v8, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1144
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 1161
    .local v8, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :goto_1c4
    move-object v8, v0

    goto :goto_1cd

    .line 1151
    .end local v8    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_1c6
    const/4 v0, 0x0

    .line 1153
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->startSeamlessRotation()V

    goto :goto_1c4

    .line 1161
    .end local v0    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v8    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :goto_1cd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    .line 1165
    if-eqz v8, :cond_217

    .line 1166
    invoke-virtual {v8}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_217

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const-wide/16 v15, 0x2710

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1168
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v17

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v10, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1167
    move/from16 v18, v7

    move-object v7, v8

    move-object/from16 v19, v8

    move-object v8, v0

    .line 1167
    .end local v8    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .local v19, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    move-object/from16 v20, v9

    move v9, v5

    .line 1167
    .end local v9    # "anim":[I
    .local v20, "anim":[I
    move/from16 v21, v3

    move/from16 v22, v4

    move v0, v10

    const-wide/16 v3, 0x7d0

    move-wide v10, v15

    .line 1167
    .end local v3    # "lastOrientation":I
    .end local v4    # "oldAltOrientation":Z
    .local v21, "lastOrientation":I
    .local v22, "oldAltOrientation":Z
    move v15, v12

    move/from16 v12, v17

    .line 1167
    .end local v12    # "altOrientation":Z
    .local v15, "altOrientation":Z
    move v3, v13

    move/from16 v13, v18

    move v4, v14

    move v14, v0

    .line 1167
    .end local v14    # "rotateSeamlessly":Z
    .local v4, "rotateSeamlessly":Z
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z

    move-result v0

    if-eqz v0, :cond_222

    .line 1170
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_222

    .line 1174
    .end local v15    # "altOrientation":Z
    .end local v19    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v20    # "anim":[I
    .end local v21    # "lastOrientation":I
    .end local v22    # "oldAltOrientation":Z
    .restart local v3    # "lastOrientation":I
    .local v4, "oldAltOrientation":Z
    .restart local v8    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v9    # "anim":[I
    .restart local v12    # "altOrientation":Z
    .restart local v14    # "rotateSeamlessly":Z
    :cond_217
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move v15, v12

    move v3, v13

    move v4, v14

    .line 1174
    .end local v3    # "lastOrientation":I
    .end local v8    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v9    # "anim":[I
    .end local v12    # "altOrientation":Z
    .end local v14    # "rotateSeamlessly":Z
    .local v4, "rotateSeamlessly":Z
    .restart local v15    # "altOrientation":Z
    .restart local v19    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v20    # "anim":[I
    .restart local v21    # "lastOrientation":I
    .restart local v22    # "oldAltOrientation":Z
    :cond_222
    :goto_222
    if-eqz v4, :cond_22c

    .line 1175
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1181
    :cond_22c
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 1184
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;-><init>(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1194
    if-eqz v4, :cond_256

    .line 1195
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x36

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1196
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1200
    :cond_256
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1200
    .local v0, "i":I
    :goto_25f
    move v7, v0

    .line 1200
    .end local v0    # "i":I
    .local v7, "i":I
    if-ltz v7, :cond_27d

    .line 1201
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 1202
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 1203
    .local v8, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget v0, v8, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v0, v9, :cond_27a

    .line 1205
    :try_start_273
    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v0, v5}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_273 .. :try_end_278} :catch_279

    .line 1208
    goto :goto_27a

    .line 1206
    :catch_279
    move-exception v0

    .line 1200
    .end local v8    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :cond_27a
    :goto_27a
    add-int/lit8 v0, v7, -0x1

    .line 1200
    .end local v7    # "i":I
    .restart local v0    # "i":I
    goto :goto_25f

    .line 1215
    .end local v0    # "i":I
    :cond_27d
    if-nez v19, :cond_290

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_290

    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_290

    .line 1217
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1220
    :cond_290
    return v3
.end method

.method updateStackBoundsAfterConfigChange(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .line 1676
    .local p1, "changedStackList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 1677
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1678
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateBoundsAfterConfigChange()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1679
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1686
    .end local v0    # "i":I
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1687
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged()V

    .line 1689
    :cond_29
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .registers 5
    .param p1, "visibility"    # I
    .param p2, "globalDiff"    # I

    .line 2888
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2905
    return-void
.end method

.method updateWallpaperForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .registers 5
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 2840
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 2843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2844
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 2846
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2848
    iget-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_44

    .line 2849
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_3a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detached wallpaper changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 2852
    iget v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 2854
    :cond_44
    return-void
.end method

.method updateWindowsForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .registers 4
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 2835
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 2836
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2837
    return-void
.end method

.method waitForAllWindowsDrawn()V
    .registers 4

    .line 2924
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2925
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2938
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 2286
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2287
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2288
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2289
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1e
    if-ltz v2, :cond_33

    .line 2290
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2291
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/TaskStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2289
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 2293
    .end local v2    # "stackNdx":I
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2294
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/PinnedStackController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2295
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_4f
    if-ltz v2, :cond_64

    .line 2296
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2297
    .local v3, "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000006L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2295
    .end local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_4f

    .line 2299
    .end local v2    # "i":I
    :cond_64
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_6c
    if-ltz v2, :cond_81

    .line 2300
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2301
    .restart local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000007L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2299
    .end local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_6c

    .line 2303
    .end local v2    # "i":I
    :cond_81
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_89
    if-ltz v2, :cond_9e

    .line 2304
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2305
    .restart local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000008L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2303
    .end local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_89

    .line 2307
    .end local v2    # "i":I
    :cond_9e
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2308
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2309
    const-wide v2, 0x1050000000bL

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2310
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2311
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 2312
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v2, :cond_d0

    .line 2313
    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ScreenRotationAnimation;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2315
    :cond_d0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/DisplayFrames;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2316
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2317
    return-void
.end method
