.class public Lcom/android/server/appwidget/AppWidgetService;
.super Lcom/android/server/SystemService;
.source "AppWidgetService.java"


# instance fields
.field private final mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 34
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    .line 45
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetService;->isSafeMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setSafeMode(Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onStart()V

    .line 39
    const-string v0, "appwidget"

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->register(Lcom/android/server/WidgetBackupProvider;)V

    .line 41
    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStopped(I)V

    .line 53
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 58
    return-void
.end method