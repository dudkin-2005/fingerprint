.class final Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;
.super Lcom/android/server/custom/common/UserContentObserver;
.source "LiveDisplayFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/LiveDisplayFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/LiveDisplayFeature;


# direct methods
.method public constructor <init>(Lcom/android/server/custom/display/LiveDisplayFeature;Landroid/os/Handler;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->this$0:Lcom/android/server/custom/display/LiveDisplayFeature;

    .line 138
    invoke-direct {p0, p2}, Lcom/android/server/custom/common/UserContentObserver;-><init>(Landroid/os/Handler;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->this$0:Lcom/android/server/custom/display/LiveDisplayFeature;

    invoke-virtual {p1, p2}, Lcom/android/server/custom/display/LiveDisplayFeature;->onSettingsChanged(Landroid/net/Uri;)V

    .line 163
    return-void
.end method

.method public varargs register([Landroid/net/Uri;)V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->this$0:Lcom/android/server/custom/display/LiveDisplayFeature;

    iget-object v0, v0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 144
    const/4 v5, -0x1

    invoke-virtual {v0, v4, v2, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->observe()V

    .line 148
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->this$0:Lcom/android/server/custom/display/LiveDisplayFeature;

    iget-object v0, v0, Lcom/android/server/custom/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->unobserve()V

    .line 153
    return-void
.end method

.method protected update()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayFeature$SettingsObserver;->this$0:Lcom/android/server/custom/display/LiveDisplayFeature;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/custom/display/LiveDisplayFeature;->onSettingsChanged(Landroid/net/Uri;)V

    .line 158
    return-void
.end method
