.class public Lcom/oneplus/notification/NotificationLightController;
.super Ljava/lang/Object;
.source "NotificationLightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/NotificationLightController$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field static final MESSAGE_SAVE_LIGHT_POLICY_FILE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefLowBatteryWarningLevel:I

.field private mHandler:Lcom/oneplus/notification/NotificationLightController$WorkerHandler;

.field private mLightBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLightPolicyFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/oneplus/notification/NotificationLightController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/NotificationLightController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mLightBlockedPackages:Ljava/util/HashSet;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/oneplus/notification/NotificationLightController$WorkerHandler;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/notification/NotificationLightController$WorkerHandler;-><init>(Lcom/oneplus/notification/NotificationLightController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mHandler:Lcom/oneplus/notification/NotificationLightController$WorkerHandler;

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_led_policy.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/oneplus/notification/NotificationLightController;->mLightPolicyFile:Landroid/util/AtomicFile;

    .line 67
    invoke-direct {p0}, Lcom/oneplus/notification/NotificationLightController;->loadLightPolicyFile()V

    .line 68
    iput-object p1, p0, Lcom/oneplus/notification/NotificationLightController;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/notification/NotificationLightController;->mDefLowBatteryWarningLevel:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/notification/NotificationLightController;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/notification/NotificationLightController;

    .line 40
    invoke-direct {p0}, Lcom/oneplus/notification/NotificationLightController;->handleSaveLightPolicyFile()V

    return-void
.end method

.method private handleSaveLightPolicyFile()V
    .registers 8

    .line 133
    sget-object v0, Lcom/oneplus/notification/NotificationLightController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleSaveLightPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mLightPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 137
    :try_start_b
    iget-object v1, p0, Lcom/oneplus/notification/NotificationLightController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_88
    .catchall {:try_start_b .. :try_end_11} :catchall_86

    .line 141
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 140
    nop

    .line 143
    :try_start_13
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 144
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 145
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 146
    const-string/jumbo v4, "notification-policy"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const-string/jumbo v4, "version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const-string v3, "blocked-packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    iget-object v3, p0, Lcom/oneplus/notification/NotificationLightController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 150
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v6, "package"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const-string/jumbo v6, "name"

    invoke-interface {v2, v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string/jumbo v6, "package"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_42

    .line 154
    :cond_61
    const-string v3, "blocked-packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const-string/jumbo v3, "notification-policy"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 157
    iget-object v3, p0, Lcom/oneplus/notification/NotificationLightController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_74} :catch_75
    .catchall {:try_start_13 .. :try_end_74} :catchall_86

    .line 161
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_84

    .line 158
    :catch_75
    move-exception v2

    .line 159
    .local v2, "e":Ljava/io/IOException;
    :try_start_76
    sget-object v3, Lcom/oneplus/notification/NotificationLightController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to save light policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    if-eqz v1, :cond_84

    iget-object v3, p0, Lcom/oneplus/notification/NotificationLightController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 162
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_84
    :goto_84
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_86
    move-exception v1

    goto :goto_92

    .line 138
    :catch_88
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/oneplus/notification/NotificationLightController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to save light policy file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    monitor-exit v0

    return-void

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    :goto_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_86

    throw v1
.end method

.method private loadLightPolicyFile()V
    .registers 10

    .line 88
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mLightPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/oneplus/notification/NotificationLightController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_92

    .line 90
    const/4 v1, 0x0

    move-object v2, v1

    .line 92
    .local v2, "infile":Ljava/io/FileInputStream;
    :try_start_a
    iget-object v3, p0, Lcom/oneplus/notification/NotificationLightController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 93
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 94
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    :cond_18
    :goto_18
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .line 97
    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5d

    .line 98
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "tag":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_18

    .line 100
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 101
    :cond_2f
    :goto_2f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    if-eq v7, v6, :cond_18

    .line 102
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 103
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 104
    iget-object v7, p0, Lcom/oneplus/notification/NotificationLightController;->mLightBlockedPackages:Ljava/util/HashSet;

    const-string/jumbo v8, "name"

    .line 105
    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 106
    :cond_51
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_57} :catch_8b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_57} :catch_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_57} :catch_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_57} :catch_63
    .catchall {:try_start_a .. :try_end_57} :catchall_61

    if-eqz v7, :cond_2f

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2f

    .line 107
    goto :goto_18

    .line 122
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_5d
    :try_start_5d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_92

    goto :goto_8f

    :catchall_61
    move-exception v1

    goto :goto_87

    .line 119
    :catch_63
    move-exception v1

    .line 120
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_64
    sget-object v3, Lcom/oneplus/notification/NotificationLightController;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse notification light policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_61

    .line 122
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_92

    goto :goto_8f

    .line 117
    :catch_6f
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_70
    sget-object v3, Lcom/oneplus/notification/NotificationLightController;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse notification light policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_61

    .line 122
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :try_start_77
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_92

    goto :goto_8f

    .line 115
    :catch_7b
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    :try_start_7c
    sget-object v3, Lcom/oneplus/notification/NotificationLightController;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read notification light policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_61

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_83
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_8f

    :goto_87
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 113
    :catch_8b
    move-exception v1

    .line 122
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    :goto_8f
    nop

    .line 124
    .end local v2    # "infile":Ljava/io/FileInputStream;
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_83 .. :try_end_94} :catchall_92

    throw v1
.end method

.method private saveLightPolicyFile()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mHandler:Lcom/oneplus/notification/NotificationLightController$WorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/NotificationLightController$WorkerHandler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mHandler:Lcom/oneplus/notification/NotificationLightController$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/NotificationLightController$WorkerHandler;->sendEmptyMessage(I)Z

    .line 130
    return-void
.end method


# virtual methods
.method public isLightEnabledImpl(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mustShow(Landroid/app/Notification;)Z
    .registers 6
    .param p1, "n"    # Landroid/app/Notification;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "mustShow":Z
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 198
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_d

    .line 199
    const-string/jumbo v2, "oneplus.mustShow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 201
    :cond_d
    return v0
.end method

.method public setLightStatusImpl(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .line 182
    if-eqz p2, :cond_8

    .line 183
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_d
    invoke-direct {p0}, Lcom/oneplus/notification/NotificationLightController;->saveLightPolicyFile()V

    .line 188
    return-void
.end method

.method public showLight(Lcom/android/server/notification/ZenModeHelper;)Z
    .registers 11
    .param p1, "zmHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 166
    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "oem_allow_led_light"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 168
    .local v0, "disableLedInZenMode":Z
    :goto_1a
    iget-object v3, p0, Lcom/oneplus/notification/NotificationLightController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 169
    .local v3, "batteryStatus":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 170
    .local v4, "lowBattery":Z
    const/4 v5, 0x0

    .line 171
    .local v5, "powerConnected":Z
    if-eqz v3, :cond_49

    .line 172
    const-string/jumbo v6, "level"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 173
    .local v6, "batteryLevel":I
    const-string/jumbo v7, "plugged"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 174
    .local v7, "chargePlug":I
    iget v8, p0, Lcom/oneplus/notification/NotificationLightController;->mDefLowBatteryWarningLevel:I

    if-gt v6, v8, :cond_41

    move v8, v2

    goto :goto_42

    :cond_41
    move v8, v1

    :goto_42
    move v4, v8

    .line 175
    if-eqz v7, :cond_47

    move v8, v2

    goto :goto_48

    :cond_47
    move v8, v1

    :goto_48
    move v5, v8

    .line 178
    .end local v6    # "batteryLevel":I
    .end local v7    # "chargePlug":I
    :cond_49
    if-nez v0, :cond_51

    if-eqz v4, :cond_50

    if-nez v5, :cond_50

    goto :goto_51

    :cond_50
    goto :goto_52

    :cond_51
    :goto_51
    move v1, v2

    :goto_52
    return v1
.end method
