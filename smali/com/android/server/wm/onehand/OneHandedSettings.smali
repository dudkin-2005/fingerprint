.class Lcom/android/server/wm/onehand/OneHandedSettings;
.super Ljava/lang/Object;
.source "OneHandedSettings.java"


# static fields
.field private static final SETTINGS_FEATURE_ENABLED:Ljava/lang/String; = "com.android.onehand.onehanded_mode"

.field private static final SETTINGS_GRAVITY:Ljava/lang/String; = "com.android.onehand.gravity"

.field private static final SETTINGS_SCALE:Ljava/lang/String; = "com.android.onehand.scale"

.field private static final SETTINGS_XADJ:Ljava/lang/String; = "com.android.onehand.xadj"

.field private static final SETTINGS_YADJ:Ljava/lang/String; = "com.android.onehand.yadj"

.field static final sSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/onehand/OneHandedSettings;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSavedGravity(Landroid/content/Context;I)I
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.gravity"

    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static getSavedScale(Landroid/content/Context;F)F
    .locals 2

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.scale"

    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method static getSavedXAdj(Landroid/content/Context;I)I
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.xadj"

    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static getSavedYAdj(Landroid/content/Context;I)I
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.yadj"

    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static isFeatureEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 59
    const/4 p0, 0x1

    return p0
.end method

.method static isFeatureEnabledSettingNotFound(Landroid/content/Context;I)Z
    .locals 1

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.onehanded_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const/4 p0, 0x0

    return p0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const/4 p0, 0x1

    return p0
.end method

.method static registerFeatureEnableDisableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.onehanded_mode"

    .line 74
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    return-void
.end method

.method static saveGravity(Landroid/content/Context;I)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.gravity"

    .line 20
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    .line 19
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 21
    return-void
.end method

.method static saveScale(Landroid/content/Context;F)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.scale"

    .line 25
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    .line 24
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 26
    return-void
.end method

.method static saveXAdj(Landroid/content/Context;I)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.xadj"

    .line 30
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    .line 29
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 31
    return-void
.end method

.method static saveYAdj(Landroid/content/Context;I)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.yadj"

    .line 35
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v1

    .line 34
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 36
    return-void
.end method

.method static setFeatureEnabled(Landroid/content/Context;ZI)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.onehand.onehanded_mode"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 40
    return-void
.end method
