.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;,
        Lcom/android/server/policy/BarController$BarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mContentFrame:Landroid/graphics/Rect;

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field protected mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 81
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 82
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 83
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 84
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 85
    iput p7, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    .line 86
    new-instance p1, Lcom/android/server/policy/BarController$BarHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/policy/BarController$BarHandler;-><init>(Lcom/android/server/policy/BarController;Lcom/android/server/policy/BarController$1;)V

    iput-object p1, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/BarController;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    return-object p0
.end method

.method private computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I
    .locals 5

    .line 205
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    .line 207
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result p3

    .line 208
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-nez p4, :cond_0

    if-nez v0, :cond_0

    .line 209
    return v2

    .line 210
    :cond_0
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 211
    return v4

    .line 212
    :cond_1
    if-eqz p4, :cond_3

    .line 213
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 214
    return v3

    .line 216
    :cond_2
    return v4

    .line 220
    :cond_3
    iget p1, p0, Lcom/android/server/policy/BarController;->mState:I

    return p1
.end method

.method private setTransientBarState(I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    .line 310
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 311
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 313
    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 316
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3

    .line 328
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "TRANSIENT_BAR_HIDING"

    return-object p0

    .line 329
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "TRANSIENT_BAR_SHOWING"

    return-object p0

    .line 330
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object p0

    .line 331
    :cond_2
    if-nez p0, :cond_3

    const-string p0, "TRANSIENT_BAR_NONE"

    return-object p0

    .line 332
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 2

    .line 224
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_0

    .line 225
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 227
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    const/4 p1, 0x1

    return p1

    .line 238
    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 132
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 133
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    .line 136
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 138
    :cond_1
    :goto_0
    return-void
.end method

.method public applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    .line 142
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    if-eqz v0, :cond_3

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_3

    .line 145
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p3, v0}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(ILandroid/view/WindowManager$LayoutParams;)I

    move-result p3

    .line 146
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 147
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v0

    goto :goto_1

    .line 149
    :cond_1
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v0, v0

    and-int/2addr p2, v0

    .line 151
    :goto_1
    const/high16 v0, -0x80000000

    and-int/2addr p3, v0

    if-eqz p3, :cond_2

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/policy/BarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    iget p1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p1, p2

    goto :goto_2

    .line 155
    :cond_2
    iget p1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int p1, p1

    and-int/2addr p1, p2

    .line 157
    :goto_2
    move p2, p1

    goto :goto_3

    .line 158
    :cond_3
    iget p1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int p1, p1

    and-int/2addr p1, p2

    iget p2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    .line 159
    iget p2, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int p2, p2

    and-int/2addr p1, p2

    iget p2, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr p2, p3

    or-int/2addr p2, p1

    .line 162
    :cond_4
    :goto_3
    return p2
.end method

.method public checkHiddenLw()Z
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    .line 246
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 249
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 251
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 253
    :cond_1
    return v2

    .line 256
    :cond_2
    return v1
.end method

.method public checkShowTransientBarLw()Z
    .locals 3

    .line 260
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 262
    return v1

    .line 263
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 265
    return v1

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_2

    .line 268
    return v1

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    return v1

    .line 273
    :cond_3
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 346
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTransientBar"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 348
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContentFrame="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 351
    :cond_0
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 321
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTransientShowRequested()Z
    .locals 2

    .line 121
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTransientShowing()Z
    .locals 2

    .line 117
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1

    .line 166
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setBarShowingLw(Z)Z
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 171
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 172
    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 173
    return v1

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 176
    iget-object v3, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 177
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    goto :goto_2

    .line 178
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v0

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    .line 179
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 180
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I

    move-result v2

    .line 181
    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v2

    .line 183
    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    if-eqz v3, :cond_5

    .line 184
    iget-object v3, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    :cond_5
    if-nez v4, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    nop

    :cond_7
    :goto_3
    return v0
.end method

.method public setContentFrame(Landroid/graphics/Rect;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    return-void
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V
    .locals 2

    .line 192
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    .line 193
    if-eqz p2, :cond_1

    .line 195
    iget-object p1, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 196
    iget p2, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 195
    :goto_0
    invoke-virtual {p1, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 198
    :cond_1
    return-void
.end method

.method public setShowTransparent(Z)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 105
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 106
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 108
    :cond_0
    return-void
.end method

.method public setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 91
    return-void
.end method

.method public showTransient()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 114
    :cond_0
    return-void
.end method

.method protected skipAnimation()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateVisibilityLw(ZII)I
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    return p3

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    :cond_1
    if-eqz p1, :cond_3

    .line 281
    iget p1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p1, p3

    .line 282
    iget p3, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr p3, p2

    if-nez p3, :cond_2

    .line 283
    iget p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p1, p3

    .line 285
    :cond_2
    move p3, p1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 290
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz p1, :cond_5

    .line 291
    iget p1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p3, p1

    .line 292
    iget-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz p1, :cond_5

    .line 293
    iget p1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, p1

    .line 294
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 297
    :cond_5
    iget p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz p1, :cond_6

    .line 298
    iget p1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p1, p3

    .line 299
    and-int/lit8 p3, p1, -0x2

    .line 301
    :cond_6
    iget p1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr p1, p3

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr p1, p2

    if-nez p1, :cond_7

    or-int p1, p3, p2

    iget p2, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_8

    .line 303
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 305
    :cond_8
    return p3
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 336
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 337
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 338
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 339
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 340
    return-void
.end method
