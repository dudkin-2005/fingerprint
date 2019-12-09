.class public Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;
.super Ljava/lang/Object;
.source "BatterySaverLocationPlugin.java"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatterySaverLocationPlugin"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 2

    .line 54
    nop

    .line 55
    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/BatterySaverPolicy;->getGpsMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_global_kill_switch"

    .line 63
    nop

    .line 62
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    return-void
.end method


# virtual methods
.method public onBatterySaverChanged(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 43
    return-void
.end method

.method public onSystemReady(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 51
    return-void
.end method
