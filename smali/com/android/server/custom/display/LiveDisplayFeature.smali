.class public abstract Lcom/android/server/custom/display/LiveDisplayFeature;
.super Ljava/lang/Object;
.source "LiveDisplayFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "LiveDisplay"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private mSettingsObserver:Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;

.field private mState:Lcom/android/server/custom/display/LiveDisplayService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "LiveDisplay"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/custom/display/LiveDisplayFeature;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected final getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    const/4 v1, -0x2

    .line 94
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public abstract getCapabilities(Ljava/util/BitSet;)Z
.end method

.method protected final getInt(Ljava/lang/String;I)I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method protected final getMode()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    iget v0, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mMode:I

    return v0
.end method

.method protected final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final isLowPowerMode()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    iget-boolean v0, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mLowPowerMode:Z

    return v0
.end method

.method protected final isScreenOn()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    iget-boolean v0, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mScreenOn:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mSettingsObserver:Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->unregister()V

    .line 85
    return-void
.end method

.method protected onScreenStateChanged()V
    .locals 0

    .line 87
    return-void
.end method

.method protected abstract onSettingsChanged(Landroid/net/Uri;)V
.end method

.method public abstract onStart()V
.end method

.method protected abstract onUpdate()V
.end method

.method protected final putBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    const/4 v1, -0x2

    .line 99
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 101
    return-void
.end method

.method protected final putInt(Ljava/lang/String;I)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 111
    return-void
.end method

.method protected final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 121
    return-void
.end method

.method protected final varargs registerSettings([Landroid/net/Uri;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mSettingsObserver:Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->register([Landroid/net/Uri;)V

    .line 91
    return-void
.end method

.method start()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mSettingsObserver:Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;-><init>(Lcom/android/server/custom/display/LiveDisplayFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mSettingsObserver:Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/custom/display/LiveDisplayFeature;->onStart()V

    .line 81
    :cond_0
    return-void
.end method

.method update(ILcom/android/server/custom/display/LiveDisplayService$State;)V
    .locals 0

    .line 64
    iput-object p2, p0, Lcom/android/server/custom/display/LiveDisplayFeature;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    .line 65
    sget p2, Lcom/android/server/custom/display/LiveDisplayService;->DISPLAY_CHANGED:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/server/custom/display/LiveDisplayFeature;->onScreenStateChanged()V

    .line 68
    :cond_0
    sget p2, Lcom/android/server/custom/display/LiveDisplayService;->MODE_CHANGED:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/custom/display/LiveDisplayFeature;->onUpdate()V

    .line 71
    :cond_1
    sget p2, Lcom/android/server/custom/display/LiveDisplayService;->ALL_CHANGED:I

    if-ne p1, p2, :cond_2

    .line 72
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/custom/display/LiveDisplayFeature;->onSettingsChanged(Landroid/net/Uri;)V

    .line 74
    :cond_2
    return-void
.end method
