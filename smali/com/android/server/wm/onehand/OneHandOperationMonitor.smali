.class public Lcom/android/server/wm/onehand/OneHandOperationMonitor;
.super Ljava/lang/Object;
.source "OneHandOperationMonitor.java"


# static fields
.field private static final ACTION_ENTER:Ljava/lang/String; = "enter"

.field private static final ACTION_EXIT_HOME:Ljava/lang/String; = "exit_home"

.field private static final ACTION_EXIT_OUTSIDE:Ljava/lang/String; = "exit_outside"

.field private static final ACTION_MOVE:Ljava/lang/String; = "move"

.field private static final ACTION_RESIZE:Ljava/lang/String; = "resize"

.field private static final ACTION_SWIPE_LEFT:Ljava/lang/String; = "swipe_left"

.field private static final ACTION_SWIPE_RIGHT:Ljava/lang/String; = "swipe_right"

.field private static final TAG:Ljava/lang/String; = "OneHandOperationMonitor"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getCurrentApp()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 58
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "KEYGUARD"

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1
    const-string v0, "UNKOWN"

    return-object v0
.end method


# virtual methods
.method public pushEnter()V
    .locals 2

    .line 28
    const-string v0, "enter"

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->getCurrentApp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/EventLogTags;->writeOnehandAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public pushExitByHomeButtonTouch()V
    .locals 2

    .line 36
    const-string v0, "exit_home"

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->getCurrentApp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/EventLogTags;->writeOnehandAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public pushExitByOutsideScreenTouch()V
    .locals 2

    .line 32
    const-string v0, "exit_outside"

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->getCurrentApp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/EventLogTags;->writeOnehandAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public pushMove()V
    .locals 2

    .line 40
    const-string v0, "move"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/EventLogTags;->writeOnehandAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public pushResize()V
    .locals 2

    .line 44
    const-string/jumbo v0, "resize"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/EventLogTags;->writeOnehandAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public pushSwipeLeft()V
    .locals 2

    .line 48
    const-string/jumbo v0, "swipe_left"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/EventLogTags;->writeOnehandAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public pushSwipeRight()V
    .locals 2

    .line 52
    const-string/jumbo v0, "swipe_right"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/EventLogTags;->writeOnehandAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
