.class Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmartPixelsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartpixels/SmartPixelsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/smartpixels/SmartPixelsReceiver;Landroid/os/Handler;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    .line 81
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_pixels_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_pixels_on_power_save"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_pixels_pattern"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_pixels_shift_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->update()V

    .line 98
    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->update()V

    .line 103
    return-void
.end method

.method public update()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    .line 107
    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_pixels_enable"

    .line 106
    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$102(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z

    .line 109
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    .line 110
    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "smart_pixels_on_power_save"

    .line 109
    invoke-static {v1, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$202(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z

    .line 112
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$400(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$302(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z

    .line 114
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$100(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$200(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$500(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$700(Lcom/android/server/smartpixels/SmartPixelsReceiver;)V

    goto :goto_3

    .line 115
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$500(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$600(Lcom/android/server/smartpixels/SmartPixelsReceiver;)V

    .line 121
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$100(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$200(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$300(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$800(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0, v2}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$802(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z

    .line 125
    const-string v0, "SmartPixelsReceiver"

    const-string v1, "Started Smart Pixels Service by Power Save enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$300(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$800(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 128
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0, v4}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$802(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z

    .line 129
    const-string v0, "SmartPixelsReceiver"

    const-string v1, "Stopped Smart Pixels Service by Power Save disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$300(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$800(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 132
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    const-string v0, "SmartPixelsReceiver"

    const-string v1, "Restarted Smart Pixels Service by Power Save enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$100(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$800(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0, v2}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$802(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z

    .line 138
    const-string v0, "SmartPixelsReceiver"

    const-string v1, "Started Smart Pixels Service by enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$100(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$800(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 141
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0, v4}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$802(Lcom/android/server/smartpixels/SmartPixelsReceiver;Z)Z

    .line 142
    const-string v0, "SmartPixelsReceiver"

    const-string v1, "Stopped Smart Pixels Service by disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$100(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$800(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 145
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$1000(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsReceiver$SettingsObserver;->this$0:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsReceiver;->access$900(Lcom/android/server/smartpixels/SmartPixelsReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    const-string v0, "SmartPixelsReceiver"

    const-string v1, "Restarted Smart Pixels Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_a
    :goto_4
    return-void
.end method
