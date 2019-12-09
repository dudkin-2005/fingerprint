.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransition$SettingsObserver;
    }
.end annotation


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field private static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivityAnimations:[I

.field private mAnimationDuration:I

.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field private mIsResId:Z

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowRamRecentsEnabled:Z

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFlags:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 158
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 161
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 177
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 199
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 235
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 244
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 249
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    .line 251
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 253
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 254
    const-wide/16 v2, 0x150

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 257
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 268
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 270
    new-instance p2, Lcom/android/server/wm/AppTransition$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/AppTransition$SettingsObserver;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    .line 271
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    invoke-virtual {p2}, Lcom/android/server/wm/AppTransition$SettingsObserver;->observe()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    .line 273
    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 275
    const p2, 0x10c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 277
    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x10e0000

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 281
    const p2, 0x10c0003

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 283
    new-instance p1, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 295
    new-instance p1, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 306
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 308
    const-string/jumbo p1, "ro.recents.grid"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 309
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/AppTransition;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .line 2130
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2138
    :pswitch_0
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2136
    :pswitch_1
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2134
    :pswitch_2
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2132
    :pswitch_3
    const-string v0, "APP_STATE_IDLE"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 2

    .line 2056
    packed-switch p0, :pswitch_data_0

    .line 2124
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2121
    :pswitch_1
    const-string p0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object p0

    .line 2118
    :pswitch_2
    const-string p0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object p0

    .line 2115
    :pswitch_3
    const-string p0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object p0

    .line 2112
    :pswitch_4
    const-string p0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object p0

    .line 2109
    :pswitch_5
    const-string p0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object p0

    .line 2106
    :pswitch_6
    const-string p0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object p0

    .line 2103
    :pswitch_7
    const-string p0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object p0

    .line 2100
    :pswitch_8
    const-string p0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object p0

    .line 2097
    :pswitch_9
    const-string p0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object p0

    .line 2094
    :pswitch_a
    const-string p0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object p0

    .line 2091
    :pswitch_b
    const-string p0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object p0

    .line 2088
    :pswitch_c
    const-string p0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object p0

    .line 2085
    :pswitch_d
    const-string p0, "TRANSIT_WALLPAPER_OPEN"

    return-object p0

    .line 2082
    :pswitch_e
    const-string p0, "TRANSIT_WALLPAPER_CLOSE"

    return-object p0

    .line 2079
    :pswitch_f
    const-string p0, "TRANSIT_TASK_TO_BACK"

    return-object p0

    .line 2076
    :pswitch_10
    const-string p0, "TRANSIT_TASK_TO_FRONT"

    return-object p0

    .line 2073
    :pswitch_11
    const-string p0, "TRANSIT_TASK_CLOSE"

    return-object p0

    .line 2070
    :pswitch_12
    const-string p0, "TRANSIT_TASK_OPEN"

    return-object p0

    .line 2067
    :pswitch_13
    const-string p0, "TRANSIT_ACTIVITY_CLOSE"

    return-object p0

    .line 2064
    :pswitch_14
    const-string p0, "TRANSIT_ACTIVITY_OPEN"

    return-object p0

    .line 2061
    :pswitch_15
    const-string p0, "TRANSIT_NONE"

    return-object p0

    .line 2058
    :pswitch_16
    const-string p0, "TRANSIT_UNSET"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 0

    .line 803
    if-nez p1, :cond_0

    .line 804
    const-wide/16 p1, 0x150

    return-wide p1

    .line 806
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 807
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 806
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 808
    const/high16 p2, 0x43a80000    # 336.0f

    const/high16 p3, 0x42a80000    # 84.0f

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    float-to-long p1, p2

    return-wide p1
.end method

.method private canOverridePendingAppTransition()Z
    .locals 2

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static computePivot(IF)F
    .locals 2

    .line 676
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 677
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 678
    int-to-float p0, p0

    return p0

    .line 680
    :cond_0
    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1321
    iget-object p3, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object p1

    return-object p1
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1328
    iget-object p3, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object p1

    return-object p1
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1334
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1335
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    .line 1338
    if-eqz p4, :cond_0

    div-float v9, v5, v7

    .line 1339
    :goto_0
    move v12, v9

    goto :goto_1

    .line 1338
    :cond_0
    div-float v9, v7, v5

    goto :goto_0

    .line 1339
    :goto_1
    if-eqz p4, :cond_1

    div-float v9, v6, v8

    .line 1340
    :goto_2
    move v14, v9

    goto :goto_3

    .line 1339
    :cond_1
    div-float v9, v8, v6

    goto :goto_2

    .line 1340
    :goto_3
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1341
    const/4 v10, 0x0

    if-nez v3, :cond_2

    .line 1342
    nop

    .line 1343
    move v11, v10

    goto :goto_4

    .line 1342
    :cond_2
    iget v11, v3, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v13

    .line 1343
    :goto_4
    if-nez v3, :cond_3

    .line 1344
    goto :goto_5

    :cond_3
    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v3

    .line 1347
    :goto_5
    if-eqz p4, :cond_4

    move v5, v7

    :cond_4
    int-to-float v3, v11

    add-float/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v5, v3

    .line 1348
    if-eqz p4, :cond_5

    move v6, v8

    :cond_5
    int-to-float v5, v10

    add-float/2addr v6, v5

    div-float v16, v6, v3

    .line 1349
    if-eqz p4, :cond_6

    .line 1350
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v10, v3

    move v11, v12

    move v12, v5

    move v13, v14

    move v14, v6

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_6

    .line 1351
    :cond_6
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1352
    :goto_6
    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1353
    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v6, v1

    .line 1354
    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    .line 1355
    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v7, v2

    .line 1356
    if-eqz p4, :cond_7

    sub-int/2addr v5, v1

    goto :goto_7

    :cond_7
    sub-int v5, v1, v5

    .line 1357
    :goto_7
    if-eqz p4, :cond_8

    sub-int/2addr v6, v7

    goto :goto_8

    :cond_8
    sub-int v6, v7, v6

    .line 1358
    :goto_8
    const/4 v1, 0x0

    if-eqz p4, :cond_9

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v5

    int-to-float v5, v6

    invoke-direct {v2, v4, v1, v5, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 1359
    :cond_9
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v5

    int-to-float v5, v6

    invoke-direct {v2, v1, v4, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1360
    :goto_9
    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1361
    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1363
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1364
    if-eqz v1, :cond_a

    .line 1365
    new-instance v2, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1378
    :cond_a
    return-object v9
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 815
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p2, :cond_6

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 821
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 823
    nop

    .line 824
    if-lez v14, :cond_0

    .line 825
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_0

    .line 827
    :cond_0
    move v6, v4

    :goto_0
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float/2addr v8, v6

    float-to-int v6, v8

    add-int/2addr v7, v6

    .line 828
    nop

    .line 829
    nop

    .line 830
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 831
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 832
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 833
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 834
    sub-int v11, v6, v9

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int v12, v11, v12

    .line 835
    sub-int/2addr v8, v10

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int v10, v8, v10

    .line 836
    nop

    .line 841
    iget v13, v2, Landroid/graphics/Rect;->top:I

    const/4 v15, 0x0

    if-le v13, v8, :cond_1

    .line 842
    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v8, v7

    .line 843
    nop

    .line 844
    nop

    .line 845
    nop

    .line 847
    move v13, v7

    move v10, v15

    move/from16 v16, v10

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v13, v7

    move/from16 v16, v13

    move v7, v15

    :goto_1
    iget v8, v2, Landroid/graphics/Rect;->left:I

    if-le v8, v11, :cond_2

    .line 848
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v7, v11, v7

    .line 849
    nop

    .line 850
    nop

    .line 852
    move v8, v7

    move v12, v15

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v8, v15

    :goto_2
    iget v11, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    if-ge v11, v6, :cond_3

    .line 853
    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v6, v2

    .line 854
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v12, v1, v2

    .line 855
    nop

    .line 857
    move v6, v12

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v7

    move v6, v12

    :goto_3
    move v12, v8

    int-to-float v7, v12

    int-to-float v8, v13

    move-object/from16 v9, p4

    move/from16 v18, v12

    move/from16 v17, v13

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v12

    .line 861
    new-instance v11, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 862
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v6

    invoke-direct {v11, v6, v9, v15, v1}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 863
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 864
    long-to-float v6, v12

    const/high16 v9, 0x40200000    # 2.5f

    div-float/2addr v6, v9

    float-to-long v5, v6

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 866
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v7, v4, v8, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 867
    if-eqz v2, :cond_4

    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_4

    .line 868
    :cond_4
    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 867
    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 869
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 871
    new-instance v4, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 872
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v8, v10, v6

    const/4 v9, 0x0

    const/16 v19, 0x0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object v6, v4

    move-object/from16 v20, v7

    move v7, v10

    move v10, v14

    move-object/from16 v21, v11

    move/from16 v11, v16

    move-wide/from16 v22, v12

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v24, v13

    move/from16 v25, v17

    move-object/from16 v13, v20

    invoke-direct/range {v6 .. v13}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 876
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 877
    move-wide/from16 v6, v22

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 880
    const-wide/16 v8, 0x4

    div-long v12, v6, v8

    .line 881
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v8, v9, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 882
    invoke-virtual {v8, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 883
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 885
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 886
    move-object/from16 v9, v21

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 887
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 888
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 889
    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 890
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 891
    invoke-virtual {v3, v1, v14, v1, v14}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 892
    nop

    .line 893
    iput-boolean v4, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 894
    iput-wide v6, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 898
    if-eqz v2, :cond_5

    .line 899
    move/from16 v7, v25

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move/from16 v8, v24

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    nop

    :cond_5
    iput v15, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 900
    goto :goto_8

    .line 902
    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 908
    const-wide/16 v5, 0x150

    goto :goto_5

    .line 905
    :pswitch_0
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v5, v2

    .line 906
    nop

    .line 911
    :goto_5
    const/16 v2, 0xe

    if-eq v1, v2, :cond_8

    const/16 v2, 0xf

    if-ne v1, v2, :cond_7

    goto :goto_6

    .line 921
    :cond_7
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 923
    move-object v3, v1

    const/4 v2, 0x1

    goto :goto_7

    .line 917
    :cond_8
    :goto_6
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 918
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 923
    move-object v3, v1

    :goto_7
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 924
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 925
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 927
    :goto_8
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 2

    .line 1141
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 1145
    new-instance p2, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {p2, p1}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object p2

    .line 1142
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .locals 8

    .line 1150
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 1151
    invoke-virtual {v7, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1153
    cmpl-float v0, p3, p4

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f666666    # 0.9f

    if-lez v0, :cond_0

    .line 1155
    mul-float/2addr v2, p3

    mul-float/2addr v1, p4

    add-float v4, v2, v1

    move-object v0, v7

    move v1, p1

    move v2, p3

    move v3, p2

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 1158
    :cond_0
    mul-float/2addr v1, p3

    mul-float/2addr v2, p4

    add-float v4, v1, v2

    move-object v0, v7

    move v1, p1

    move v2, p3

    move v3, p1

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1160
    :goto_0
    return-object v7
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 10

    .line 1493
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1494
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1495
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1496
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1498
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1499
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1500
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1501
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 1502
    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 1506
    iget-object v8, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 1507
    nop

    .line 1508
    cmpg-float v9, v4, v6

    if-gtz v9, :cond_0

    cmpg-float v9, v7, v8

    if-gtz v9, :cond_0

    .line 1512
    new-instance p2, Landroid/view/animation/ClipRectAnimation;

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {p2, v4, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1516
    :cond_0
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    div-float/2addr v4, v6

    div-float v6, v7, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v9, v6, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1520
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, v7

    div-float/2addr p2, v8

    float-to-int v5, p2

    .line 1526
    :goto_0
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v5

    int-to-float p1, v1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1528
    invoke-virtual {v2, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1529
    const-wide/16 p1, 0x150

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1530
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1531
    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 12

    .line 686
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 687
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 688
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 689
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 691
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    int-to-float v4, v0

    div-float v6, p2, v4

    .line 692
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float v4, p3

    div-float v8, p2, v4

    .line 693
    new-instance p2, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 694
    invoke-static {v4, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 695
    invoke-static {v4, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    move-object v5, p2

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 696
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 698
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 699
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 701
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 702
    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 703
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 704
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 705
    nop

    .line 706
    goto :goto_1

    :cond_0
    const/16 p2, 0xe

    if-eq p1, p2, :cond_2

    const/16 p2, 0xf

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 716
    :cond_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    .line 712
    :cond_2
    :goto_0
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p2, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 713
    invoke-virtual {p2, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 723
    move-object v1, p2

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 729
    const-wide/16 p1, 0x150

    goto :goto_2

    .line 726
    :pswitch_0
    iget p1, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long p1, p1

    .line 727
    nop

    .line 732
    :goto_2
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 733
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 734
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 735
    invoke-virtual {v1, v0, p3, v0, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 736
    return-object v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_0

    .line 2020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2021
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2023
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2024
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2042
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    .line 1164
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1165
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1167
    :cond_0
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1172
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1175
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 4

    .line 524
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "android"

    .line 529
    :goto_0
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 530
    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_1

    .line 531
    const-string v0, "android"

    .line 535
    :cond_1
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    return-object p1

    .line 538
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3

    .line 544
    if-eqz p1, :cond_1

    .line 545
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 546
    const-string p1, "android"

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    return-object p1

    .line 553
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 742
    :cond_1
    :goto_0
    const-string v0, "WindowManager"

    const-string v1, "Starting rect for app requested, but none available"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 747
    :goto_1
    return-void
.end method

.method static isActivityTransit(I)Z
    .locals 1

    .line 2313
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isKeyguardGoingAwayTransit(I)Z
    .locals 1

    .line 2290
    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isKeyguardTransit(I)Z
    .locals 1

    .line 2295
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isTaskOpenTransit(I)Z
    .locals 1

    .line 2307
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isTaskTransit(I)Z
    .locals 1

    .line 2300
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$fetchAppTransitionSpecsFromFuture$0(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .locals 4

    .line 2025
    nop

    .line 2027
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2028
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    goto :goto_0

    .line 2029
    :catch_0
    move-exception p1

    .line 2030
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch app transition specs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2033
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 2034
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2037
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 2038
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2039
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2040
    return-void

    .line 2038
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 1

    .line 590
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    .line 592
    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 596
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .locals 5

    .line 1844
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1845
    const/4 p1, 0x0

    return-object p1

    .line 1847
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1849
    move v0, v1

    goto :goto_0

    .line 1847
    :cond_1
    nop

    .line 1849
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v4, 0x15

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {v3, v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method private needsBoosting()Z
    .locals 5

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 481
    move v0, v2

    goto :goto_0

    .line 480
    :cond_0
    nop

    .line 481
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method private notifyAppTransitionCancelledLocked(I)V
    .locals 2

    .line 504
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .line 498
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .locals 14

    move-object v0, p0

    .line 512
    nop

    .line 513
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 514
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v3

    or-int/2addr v2, v3

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_0
    return v2
.end method

.method private prepare()Z
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 408
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 409
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 410
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 411
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 412
    const/4 v0, 0x1

    return v0

    .line 414
    :cond_0
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V
    .locals 2

    .line 765
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, -0x1

    invoke-direct {v0, p1, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 767
    return-void
.end method

.method private setAppTransition(II)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 326
    iget p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 327
    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1, p1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 329
    return-void
.end method

.method private setAppTransitionState(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 467
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 468
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .locals 1

    .line 2322
    iget-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .line 2145
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 2165
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2163
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2151
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2161
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2159
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2157
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2155
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2153
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2149
    :pswitch_8
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2147
    :pswitch_9
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSettings()V
    .locals 5

    .line 2346
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2347
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 2348
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    sget-object v4, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 2347
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2350
    :cond_0
    const-string v2, "animation_controls_duration"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2351
    mul-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    .line 2352
    return-void
.end method

.method private updateToTranslucentAnimIfNeeded(II)I
    .locals 1

    .line 600
    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    const v0, 0x10a000f

    if-ne p1, v0, :cond_0

    .line 601
    const p1, 0x10a0012

    return p1

    .line 603
    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    const p2, 0x10a000e

    if-ne p1, p2, :cond_1

    .line 604
    const p1, 0x10a0011

    return p1

    .line 606
    :cond_1
    return p1
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 3

    .line 1540
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method clear()V
    .locals 2

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 451
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 452
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 453
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 454
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 455
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 1188
    move/from16 v8, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 1189
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 1190
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v11}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1191
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 1192
    if-lez v11, :cond_0

    int-to-float v13, v11

    goto :goto_0

    .line 1193
    :cond_0
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_0
    iget-object v14, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 1194
    if-lez v14, :cond_1

    int-to-float v15, v14

    goto :goto_1

    .line 1195
    :cond_1
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_1
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move/from16 v16, v10

    iget v10, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v10

    iget v10, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v10

    .line 1196
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v12

    iget v12, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v12

    .line 1198
    const/4 v12, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1311
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :pswitch_0
    const/16 v1, 0xe

    if-ne v2, v1, :cond_2

    .line 1304
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v12, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_c

    .line 1306
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1308
    goto/16 :goto_c

    .line 1290
    :pswitch_1
    const/16 v1, 0xe

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v2, v1, :cond_3

    .line 1293
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_c

    .line 1295
    :cond_3
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1297
    goto/16 :goto_c

    .line 1201
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-nez p1, :cond_4

    .line 1202
    move v1, v2

    goto :goto_2

    .line 1201
    :cond_4
    nop

    .line 1202
    move v1, v12

    :goto_2
    if-eqz p9, :cond_5

    if-eqz v1, :cond_5

    .line 1203
    invoke-direct {v0, v3, v5, v8}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_c

    .line 1205
    :cond_5
    if-eqz p9, :cond_6

    .line 1206
    invoke-direct {v0, v3, v5, v8}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_c

    .line 1209
    :cond_6
    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1212
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1213
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1217
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1218
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1221
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1222
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1224
    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct {v0, v7, v8}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1226
    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int v7, v9, v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v12, v13, v7

    .line 1228
    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_7

    .line 1229
    div-float/2addr v15, v12

    float-to-int v7, v15

    .line 1230
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v7

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 1233
    :cond_7
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1235
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    .line 1236
    if-eqz v1, :cond_8

    move/from16 v19, v12

    goto :goto_3

    :cond_8
    const/high16 v19, 0x3f800000    # 1.0f

    :goto_3
    if-eqz v1, :cond_9

    .line 1237
    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_9
    move/from16 v20, v12

    :goto_4
    if-eqz v1, :cond_a

    move/from16 v21, v12

    goto :goto_5

    :cond_a
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_5
    if-eqz v1, :cond_b

    .line 1238
    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    move/from16 v22, v12

    :goto_6
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float v23, v8, v10

    .line 1239
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float v24, v8, v11

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v24}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1240
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    .line 1241
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    .line 1242
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    mul-float/2addr v13, v12

    sub-float/2addr v11, v13

    .line 1243
    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget v14, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    .line 1244
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    .line 1245
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v12

    sub-float/2addr v14, v3

    .line 1249
    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v3, :cond_c

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_c

    if-eqz v1, :cond_c

    .line 1250
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v12, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v12

    iput v10, v3, Landroid/graphics/Rect;->top:I

    .line 1251
    iget v3, v6, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v14, v3

    .line 1253
    :cond_c
    sub-float/2addr v8, v11

    .line 1254
    sub-float/2addr v13, v14

    .line 1255
    if-eqz v1, :cond_d

    .line 1256
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6, v10}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 1257
    :cond_d
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6, v10}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1258
    :goto_7
    if-eqz v1, :cond_e

    .line 1259
    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v13, v1

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1, v13, v1}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_8

    .line 1260
    :cond_e
    const/4 v1, 0x0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v13, v4

    invoke-direct {v0, v1, v8, v1, v13}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1262
    :goto_8
    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1263
    invoke-virtual {v5, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1266
    goto :goto_b

    .line 1268
    :cond_f
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v14

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 1269
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v11

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 1271
    if-eqz v1, :cond_10

    .line 1272
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_9

    .line 1273
    :cond_10
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1274
    :goto_9
    if-eqz v1, :cond_11

    .line 1275
    move/from16 v12, v17

    int-to-float v1, v12

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    int-to-float v4, v10

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v4, v6}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_a

    .line 1277
    :cond_11
    move/from16 v12, v17

    const/4 v6, 0x0

    int-to-float v1, v12

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    int-to-float v4, v10

    invoke-direct {v0, v6, v1, v6, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1280
    :goto_a
    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1281
    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1283
    :goto_b
    nop

    .line 1284
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1286
    nop

    .line 1314
    move-object v1, v5

    .line 1315
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1314
    move v2, v9

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .locals 6

    .line 992
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 993
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 995
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 996
    invoke-virtual {v1, v0, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 997
    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 998
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1000
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1001
    sub-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v5, p2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v4, v5, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1006
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v0, 0x106000b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1007
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1008
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 1010
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 9

    .line 1014
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1016
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1017
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1016
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1027
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    .line 1028
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    int-to-float v5, v3

    goto :goto_0

    .line 1029
    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1032
    int-to-float v8, v7

    div-float v5, v8, v5

    .line 1033
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v9, p4

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1040
    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct {v0, v8, v9}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1041
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 1042
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 1046
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v11, v5, v4

    mul-float/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1047
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    div-float v12, v4, v5

    sub-float v12, v4, v12

    mul-float/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1048
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    .line 1049
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    div-float/2addr v13, v5

    .line 1050
    iget-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v14, :cond_1

    .line 1053
    int-to-float v14, v6

    sub-float/2addr v9, v14

    .line 1054
    mul-float/2addr v14, v5

    sub-float/2addr v11, v14

    .line 1064
    :cond_1
    move v14, v12

    move v12, v8

    move v8, v13

    move v13, v10

    :goto_1
    move v10, v9

    goto :goto_2

    .line 1057
    :cond_2
    nop

    .line 1058
    nop

    .line 1059
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 1060
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 1061
    iget v10, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    .line 1062
    iget v11, v1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    .line 1064
    move v12, v8

    move v13, v10

    const/4 v8, 0x0

    const/4 v14, 0x0

    goto :goto_1

    :goto_2
    move/from16 v17, v12

    move/from16 v16, v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v12

    .line 1065
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 1066
    iget-boolean v15, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v15, :cond_7

    .line 1068
    new-instance v15, Landroid/view/animation/ScaleAnimation;

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v4, v9

    move-object v9, v15

    move/from16 v20, v10

    move/from16 v10, v18

    move/from16 v21, v11

    move v11, v5

    move-wide/from16 v22, v12

    move/from16 v13, v17

    move/from16 v12, v19

    move/from16 v25, v13

    move/from16 v24, v16

    move v13, v5

    move/from16 v26, v7

    move-object v7, v15

    const/4 v2, 0x0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1069
    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1070
    move-wide/from16 v12, v22

    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1071
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1072
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v2, v9, :cond_3

    .line 1073
    sget-object v2, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1072
    :goto_3
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1074
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v2, v9, :cond_4

    .line 1075
    const-wide/16 v9, 0x2

    div-long v9, v12, v9

    goto :goto_4

    .line 1076
    :cond_4
    nop

    .line 1074
    move-wide v9, v12

    :goto_4
    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1077
    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v2, v24

    move/from16 v15, v25

    invoke-direct {v0, v15, v2, v10, v11}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1078
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1079
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1081
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1082
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1086
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1087
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 1088
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 1090
    move-object/from16 v3, p2

    if-eqz v3, :cond_5

    .line 1091
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iget v10, v3, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    iget v11, v3, Landroid/graphics/Rect;->right:I

    neg-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v11, v11

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v6, v9, v10, v11, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1097
    :cond_5
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1098
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1099
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1102
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1103
    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1104
    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v5, :cond_6

    .line 1106
    invoke-virtual {v4, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    :cond_6
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1109
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1110
    nop

    .line 1111
    nop

    .line 1134
    move-object v3, v4

    goto :goto_5

    .line 1113
    :cond_7
    move/from16 v26, v7

    move-object v4, v9

    move/from16 v2, v16

    move/from16 v15, v17

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v9, v6

    move/from16 v27, v10

    move v10, v5

    move/from16 v28, v11

    move v11, v7

    move-wide/from16 v29, v12

    move v12, v5

    move/from16 v13, v16

    move v5, v15

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1114
    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1115
    move-wide/from16 v7, v29

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1116
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1117
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1118
    invoke-virtual {v9, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1119
    move/from16 v3, v27

    move/from16 v11, v28

    invoke-direct {v0, v2, v5, v11, v3}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1120
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1121
    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1124
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1125
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    iget-boolean v4, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v4, :cond_8

    .line 1128
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1130
    :cond_8
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1131
    nop

    .line 1134
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v3

    move/from16 v2, v26

    move v3, v4

    move-wide v4, v5

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .locals 11

    .line 1429
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1430
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 1431
    invoke-virtual {p0, p4}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object p4

    .line 1433
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1434
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    goto :goto_0

    .line 1435
    :cond_0
    move v1, v0

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_1

    int-to-float v1, v1

    goto :goto_1

    .line 1436
    :cond_1
    move v1, v2

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p4

    goto :goto_2

    .line 1437
    :cond_2
    move p4, p2

    :goto_2
    if-lez p4, :cond_3

    int-to-float p4, p4

    goto :goto_3

    .line 1439
    :cond_3
    move p4, v2

    :goto_3
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1486
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid thumbnail transition state"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1470
    :pswitch_0
    int-to-float p1, v0

    div-float v6, v1, p1

    .line 1471
    int-to-float p1, p2

    div-float v8, p4, p1

    .line 1472
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object p4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    .line 1473
    invoke-static {p4, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    iget-object p4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 1474
    invoke-static {p4, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1476
    new-instance p4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p4, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1478
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1479
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1480
    invoke-virtual {v1, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1481
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1482
    nop

    .line 1483
    goto :goto_4

    .line 1465
    :pswitch_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1466
    goto :goto_4

    .line 1451
    :pswitch_2
    const/16 p1, 0xe

    if-ne p3, p1, :cond_4

    .line 1455
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_4

    .line 1458
    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1460
    goto :goto_4

    .line 1442
    :pswitch_3
    int-to-float p1, v0

    div-float v3, v1, p1

    .line 1443
    int-to-float p1, p2

    div-float v5, p4, p1

    .line 1444
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object p4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    .line 1445
    invoke-static {p4, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    iget-object p4, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 1446
    invoke-static {p4, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1447
    nop

    .line 1489
    move-object v1, p1

    :goto_4
    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .locals 10

    .line 1388
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1389
    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    .line 1390
    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    int-to-float v0, v0

    goto :goto_0

    .line 1391
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p4

    .line 1392
    if-lez p4, :cond_1

    int-to-float p4, p4

    goto :goto_1

    .line 1394
    :cond_1
    move p4, v1

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_2

    .line 1396
    int-to-float v2, p1

    div-float v5, v2, v0

    .line 1397
    int-to-float v0, p2

    div-float v7, v0, p4

    .line 1398
    new-instance p4, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    div-float v2, v1, v5

    .line 1399
    invoke-static {v0, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    div-float v2, v1, v7

    .line 1400
    invoke-static {v0, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, p4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1403
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1404
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1407
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1408
    invoke-virtual {v1, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1409
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1410
    nop

    .line 1411
    nop

    .line 1420
    move-object p4, v1

    goto :goto_2

    .line 1413
    :cond_2
    int-to-float v2, p1

    div-float v4, v2, v0

    .line 1414
    int-to-float v0, p2

    div-float v6, v0, p4

    .line 1415
    new-instance p4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    div-float v2, v1, v4

    .line 1416
    invoke-static {v0, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    div-float/2addr v1, v6

    .line 1417
    invoke-static {v0, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, p4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1420
    :goto_2
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 2178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2179
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 2181
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2182
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2194
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2197
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    goto/16 :goto_0

    .line 2215
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2219
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2220
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0

    .line 2200
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2201
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2203
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2207
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2209
    goto :goto_0

    .line 2186
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    nop

    .line 2224
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 2225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2228
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_2

    .line 2229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLastClosingApp="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method freeze()V
    .locals 3

    .line 458
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 459
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 460
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 461
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 462
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 463
    return-void
.end method

.method getAppStackClipMode()I
    .locals 2

    .line 1856
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1862
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1864
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1863
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 1860
    :goto_1
    return v0

    .line 1858
    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method getAppTransition()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/AppTransitionAnimationSpec;

    .line 365
    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 368
    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    .line 780
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    .line 773
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 751
    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 754
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    goto :goto_0

    .line 759
    :cond_1
    iget-object p1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 755
    :cond_2
    :goto_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting rect for task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requested, but not available"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 761
    :goto_1
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 0

    .line 971
    if-eqz p1, :cond_1

    .line 972
    iget-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz p1, :cond_0

    .line 973
    const/4 p1, 0x0

    return p1

    .line 975
    :cond_0
    const/4 p1, 0x2

    return p1

    .line 978
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz p1, :cond_2

    .line 979
    const/4 p1, 0x1

    return p1

    .line 981
    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method public getTransitFlags()I
    .locals 1

    .line 1868
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/AppWindowToken;",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)I"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p2

    move-object/from16 v1, p3

    .line 424
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 425
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 426
    const/4 v2, 0x2

    invoke-direct {v10, v2}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 427
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v3

    goto :goto_0

    .line 429
    :cond_0
    nop

    .line 430
    move-object v3, v2

    .line 431
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 432
    move-object v4, v0

    goto :goto_1

    .line 431
    :cond_1
    nop

    .line 432
    move-object v4, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 433
    move-object v5, v0

    goto :goto_2

    .line 432
    :cond_2
    nop

    .line 433
    move-object v5, v2

    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v0

    .line 434
    :goto_3
    move-wide v6, v0

    goto :goto_4

    .line 433
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_3

    .line 434
    :goto_4
    if-eqz v3, :cond_4

    .line 435
    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v0

    .line 436
    :goto_5
    move-wide v8, v0

    goto :goto_6

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_5

    :goto_6
    const-wide/16 v11, 0x78

    .line 430
    move-object v0, v10

    move v1, p1

    move-object v2, v4

    move-object v3, v5

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v0

    .line 438
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    .line 439
    move v2, p1

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 441
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_5

    .line 442
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    invoke-virtual {v1}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 444
    :cond_5
    return v0
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    .line 787
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .locals 2

    .line 394
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .locals 2

    .line 388
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isNextAppTransitionThumbnailUp()Z
    .locals 2

    .line 383
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 2

    .line 373
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .line 338
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method isRunning()Z
    .locals 2

    .line 348
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTimeout()Z
    .locals 2

    .line 356
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionEqual(I)Z
    .locals 1

    .line 317
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isTransitionSet()Z
    .locals 2

    .line 313
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v2, p3

    move-object/from16 v5, p6

    .line 1575
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1577
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    .line 1578
    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1579
    :cond_0
    const/16 v7, 0x16

    if-ne v4, v7, :cond_1

    .line 1580
    nop

    .line 1840
    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_1e

    .line 1581
    :cond_1
    const/16 v9, 0x17

    if-ne v4, v9, :cond_2

    if-nez v2, :cond_2

    .line 1582
    const v2, 0x10a00d6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1583
    :cond_2
    const/16 v10, 0x1a

    if-ne v4, v10, :cond_3

    .line 1584
    goto :goto_0

    .line 1585
    :cond_3
    const/16 v10, 0xa

    const/16 v11, 0x8

    const/4 v12, 0x6

    if-eqz p11, :cond_6

    if-eq v4, v12, :cond_4

    if-eq v4, v11, :cond_4

    if-ne v4, v10, :cond_6

    .line 1588
    :cond_4
    if-eqz v2, :cond_5

    .line 1589
    const v2, 0x10a00c9

    goto :goto_1

    .line 1590
    :cond_5
    const v2, 0x10a00ca

    .line 1588
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1595
    :cond_6
    const/16 v13, 0xb

    const/16 v14, 0x9

    const/4 v15, 0x7

    if-eqz p11, :cond_9

    if-eq v4, v15, :cond_7

    if-eq v4, v14, :cond_7

    if-ne v4, v13, :cond_9

    .line 1598
    :cond_7
    if-eqz v2, :cond_8

    .line 1599
    const v2, 0x10a00c7

    goto :goto_2

    .line 1600
    :cond_8
    const v2, 0x10a00c8

    .line 1598
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1605
    :cond_9
    const/16 v3, 0x12

    if-ne v4, v3, :cond_a

    .line 1606
    move-object/from16 v3, p8

    invoke-direct {v0, v5, v3}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1612
    :cond_a
    move-object/from16 v3, p8

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 1613
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1614
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_3

    :cond_b
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1613
    :goto_3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1620
    :cond_c
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v7, v15, :cond_d

    .line 1621
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1627
    :cond_d
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v7, v11, :cond_e

    .line 1628
    move-object/from16 v1, p7

    invoke-direct {v0, v4, v2, v5, v1}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1634
    :cond_e
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_f

    .line 1635
    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    goto/16 :goto_1e

    .line 1641
    :cond_f
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v13, 0x3

    if-eq v7, v13, :cond_39

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_10

    goto/16 :goto_1d

    .line 1655
    :cond_10
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v9, 0x5

    if-eq v7, v9, :cond_37

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v7, v12, :cond_11

    goto/16 :goto_1c

    .line 1670
    :cond_11
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v3, v14, :cond_12

    if-eqz v2, :cond_12

    .line 1671
    const-string v1, "android"

    const v2, 0x10a00b9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1673
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isEntrance=true Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1673
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1678
    :cond_12
    nop

    .line 1679
    const/16 v3, 0x13

    if-eq v4, v3, :cond_31

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 1826
    move v2, v6

    goto/16 :goto_1a

    .line 1682
    :pswitch_0
    const/4 v5, 0x4

    goto/16 :goto_15

    .line 1814
    :pswitch_1
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v10

    if-eqz v3, :cond_14

    .line 1815
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1816
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v10

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1817
    if-eqz v2, :cond_13

    .line 1818
    aget v2, v3, v8

    goto :goto_4

    .line 1819
    :cond_13
    aget v2, v3, v6

    .line 1820
    :goto_4
    goto/16 :goto_1a

    .line 1821
    :cond_14
    if-eqz v2, :cond_15

    .line 1822
    const/16 v2, 0x19

    goto/16 :goto_1a

    .line 1823
    :cond_15
    const/16 v2, 0x18

    goto/16 :goto_1a

    .line 1801
    :pswitch_2
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v14

    if-eqz v3, :cond_17

    .line 1802
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1803
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v14

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1804
    if-eqz v2, :cond_16

    .line 1805
    aget v2, v3, v8

    goto :goto_5

    .line 1806
    :cond_16
    aget v2, v3, v6

    .line 1807
    :goto_5
    goto/16 :goto_1a

    .line 1808
    :cond_17
    if-eqz v2, :cond_18

    .line 1809
    nop

    .line 1812
    const/16 v16, 0x16

    goto :goto_6

    .line 1810
    :cond_18
    nop

    .line 1812
    const/16 v16, 0x17

    .line 1826
    :goto_6
    move/from16 v2, v16

    goto/16 :goto_1a

    .line 1788
    :pswitch_3
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v11

    if-eqz v3, :cond_1a

    .line 1789
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1790
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v11

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1791
    if-eqz v2, :cond_19

    .line 1792
    aget v2, v3, v8

    goto :goto_7

    .line 1793
    :cond_19
    aget v2, v3, v6

    .line 1794
    :goto_7
    goto/16 :goto_1a

    .line 1795
    :cond_1a
    if-eqz v2, :cond_1b

    .line 1796
    const/16 v2, 0x14

    goto :goto_8

    .line 1797
    :cond_1b
    const/16 v2, 0x15

    .line 1799
    :goto_8
    goto/16 :goto_1a

    .line 1762
    :pswitch_4
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v12

    if-eqz v3, :cond_1d

    .line 1763
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1764
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v12

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1765
    if-eqz v2, :cond_1c

    .line 1766
    aget v2, v3, v8

    goto :goto_9

    .line 1767
    :cond_1c
    aget v2, v3, v6

    .line 1768
    :goto_9
    goto/16 :goto_1a

    .line 1769
    :cond_1d
    if-eqz v2, :cond_1e

    .line 1770
    const/16 v2, 0x10

    goto :goto_a

    .line 1771
    :cond_1e
    const/16 v2, 0x11

    .line 1773
    :goto_a
    goto/16 :goto_1a

    .line 1775
    :pswitch_5
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v15

    if-eqz v3, :cond_20

    .line 1776
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1777
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v15

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1778
    if-eqz v2, :cond_1f

    .line 1779
    aget v2, v3, v8

    goto :goto_b

    .line 1780
    :cond_1f
    aget v2, v3, v6

    .line 1781
    :goto_b
    goto/16 :goto_1a

    .line 1782
    :cond_20
    if-eqz v2, :cond_21

    .line 1783
    const/16 v2, 0x12

    goto :goto_c

    .line 1784
    :cond_21
    const/16 v2, 0x13

    .line 1786
    :goto_c
    goto/16 :goto_1a

    .line 1749
    :pswitch_6
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v9

    if-eqz v3, :cond_23

    .line 1750
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1751
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v9

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1752
    if-eqz v2, :cond_22

    .line 1753
    aget v2, v3, v8

    goto :goto_d

    .line 1754
    :cond_22
    aget v2, v3, v6

    .line 1755
    :goto_d
    goto/16 :goto_1a

    .line 1756
    :cond_23
    if-eqz v2, :cond_24

    .line 1757
    const/16 v2, 0xe

    goto :goto_e

    .line 1758
    :cond_24
    const/16 v2, 0xf

    .line 1760
    :goto_e
    goto/16 :goto_1a

    .line 1736
    :pswitch_7
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x4

    aget v3, v3, v5

    if-eqz v3, :cond_26

    .line 1737
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1738
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v5

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1739
    if-eqz v2, :cond_25

    .line 1740
    aget v2, v3, v8

    goto :goto_f

    .line 1741
    :cond_25
    aget v2, v3, v6

    .line 1742
    :goto_f
    goto/16 :goto_1a

    .line 1743
    :cond_26
    if-eqz v2, :cond_27

    .line 1744
    const/16 v2, 0xc

    goto :goto_10

    .line 1745
    :cond_27
    const/16 v2, 0xd

    .line 1747
    :goto_10
    goto/16 :goto_1a

    .line 1723
    :pswitch_8
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v13

    if-eqz v3, :cond_29

    .line 1724
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1725
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v13

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1726
    if-eqz v2, :cond_28

    .line 1727
    aget v2, v3, v8

    goto :goto_11

    .line 1728
    :cond_28
    aget v2, v3, v6

    .line 1729
    :goto_11
    goto/16 :goto_1a

    .line 1730
    :cond_29
    if-eqz v2, :cond_2a

    .line 1731
    nop

    .line 1734
    move/from16 v17, v10

    goto :goto_12

    .line 1732
    :cond_2a
    nop

    .line 1734
    const/16 v17, 0xb

    .line 1826
    :goto_12
    move/from16 v2, v17

    goto/16 :goto_1a

    .line 1696
    :pswitch_9
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v8

    if-eqz v3, :cond_2c

    .line 1697
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1698
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v8

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1699
    if-eqz v2, :cond_2b

    .line 1700
    aget v2, v3, v8

    goto :goto_13

    .line 1701
    :cond_2b
    aget v2, v3, v6

    .line 1702
    :goto_13
    goto :goto_1a

    .line 1703
    :cond_2c
    if-eqz v2, :cond_2d

    .line 1704
    goto :goto_14

    .line 1705
    :cond_2d
    nop

    .line 1707
    move v12, v15

    .line 1826
    :goto_14
    move v2, v12

    goto :goto_1a

    .line 1682
    :goto_15
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v6

    if-eqz v3, :cond_2f

    .line 1683
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1684
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v6

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1685
    if-eqz v2, :cond_2e

    .line 1686
    aget v2, v3, v8

    goto :goto_16

    .line 1687
    :cond_2e
    aget v2, v3, v6

    .line 1688
    :goto_16
    goto :goto_1a

    .line 1689
    :cond_2f
    if-eqz v2, :cond_30

    .line 1690
    goto :goto_17

    .line 1691
    :cond_30
    nop

    .line 1693
    move v5, v9

    .line 1826
    :goto_17
    move v2, v5

    goto :goto_1a

    .line 1710
    :cond_31
    :pswitch_a
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    if-eqz v3, :cond_33

    .line 1711
    iput-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1712
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v3, v3, v5

    invoke-static {v3}, Lcom/android/internal/util/aospextended/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v3

    .line 1713
    if-eqz v2, :cond_32

    .line 1714
    aget v2, v3, v8

    goto :goto_18

    .line 1715
    :cond_32
    aget v2, v3, v6

    .line 1716
    :goto_18
    goto :goto_1a

    .line 1717
    :cond_33
    if-eqz v2, :cond_34

    .line 1718
    goto :goto_19

    .line 1719
    :cond_34
    nop

    .line 1721
    move v11, v14

    .line 1826
    :goto_19
    move v2, v11

    :goto_1a
    if-eqz v2, :cond_35

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1827
    move-object v8, v1

    goto :goto_1b

    .line 1826
    :cond_35
    nop

    .line 1827
    const/4 v8, 0x0

    :goto_1b
    if-eqz v8, :cond_36

    .line 1828
    iget v1, v0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    if-lez v1, :cond_36

    .line 1829
    iget v1, v0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1832
    :cond_36
    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    goto :goto_1e

    .line 1657
    :cond_37
    :goto_1c
    iget v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v9, :cond_38

    move v6, v8

    nop

    :cond_38
    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1659
    nop

    .line 1660
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1659
    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p12

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_1e

    .line 1643
    :cond_39
    :goto_1d
    iget v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v13, :cond_3a

    move v6, v8

    nop

    :cond_3a
    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1645
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    move/from16 v2, p13

    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1840
    :goto_1e
    return-object v8

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .locals 3

    .line 557
    nop

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 559
    const/4 v1, 0x0

    if-ltz p2, :cond_1

    .line 560
    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    if-eqz v2, :cond_0

    .line 561
    goto :goto_0

    .line 563
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    .line 564
    if-eqz p1, :cond_1

    .line 565
    iget-object v0, p1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 566
    iget-object p1, p1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    goto :goto_0

    .line 570
    :cond_1
    move p2, v1

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result p1

    .line 571
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 572
    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 574
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 579
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object p1

    .line 581
    if-eqz p1, :cond_0

    .line 582
    iget-object v0, p1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 584
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 586
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2

    .line 492
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1

    .line 1991
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1993
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1994
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1995
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1997
    :cond_0
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1

    .line 1881
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1883
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1884
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1885
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1886
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1887
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1888
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1890
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6

    .line 1927
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1929
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1930
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1931
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1932
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1935
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1937
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 7

    .line 1904
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1906
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1907
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1908
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1910
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 8

    .line 1942
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1943
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1944
    if-eqz p4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1945
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1946
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1947
    if-eqz p1, :cond_2

    .line 1948
    const/4 p4, 0x0

    :goto_1
    array-length v0, p1

    if-ge p4, v0, :cond_2

    .line 1949
    aget-object v0, p1, p4

    .line 1950
    if-eqz v0, :cond_1

    .line 1951
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v2, v0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1952
    if-nez p4, :cond_1

    .line 1955
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1956
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 1957
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1956
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1948
    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 1962
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1963
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1964
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1966
    :cond_3
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1

    .line 1971
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1972
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1973
    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1974
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1975
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1976
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1977
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1979
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 3

    .line 1982
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1984
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1985
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1988
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 7

    .line 1894
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1896
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1897
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1898
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1900
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .locals 1

    .line 2003
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2005
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 2008
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .locals 7

    .line 1914
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1916
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1917
    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1918
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1919
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1920
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1921
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1923
    :cond_1
    return-void
.end method

.method postAnimationCallback()V
    .locals 4

    .line 1872
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1877
    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .locals 2

    .line 2253
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2255
    :goto_0
    if-nez p4, :cond_4

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p4

    if-eqz p4, :cond_4

    iget p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz p4, :cond_4

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2262
    :cond_1
    if-nez p2, :cond_5

    iget p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq p2, v1, :cond_5

    .line 2264
    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2266
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2267
    :cond_2
    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    const/4 p2, 0x7

    .line 2268
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2270
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2271
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2274
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2257
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2277
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result p1

    .line 2278
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2279
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2280
    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2282
    :cond_6
    return p1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 7

    .line 954
    packed-switch p4, :pswitch_data_0

    .line 960
    const/16 p4, 0x150

    goto :goto_0

    .line 957
    :pswitch_0
    iget p4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 958
    nop

    .line 963
    :goto_0
    int-to-long v4, p4

    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2

    .line 935
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 936
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 938
    :cond_0
    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 939
    if-eqz p6, :cond_1

    .line 940
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 942
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 943
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    .line 2239
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2240
    return-void
.end method

.method setIdle()V
    .locals 1

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 353
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .locals 1

    .line 332
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 335
    return-void
.end method

.method setReady()V
    .locals 1

    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 344
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 345
    return-void
.end method

.method setTimeout()V
    .locals 1

    .line 360
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBooster()V
    .locals 2

    .line 476
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 477
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 2170
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2171
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2172
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2173
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2174
    return-void
.end method
