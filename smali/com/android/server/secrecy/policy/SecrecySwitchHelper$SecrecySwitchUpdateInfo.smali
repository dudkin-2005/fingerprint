.class Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;
.super Ljava/lang/Object;
.source "SecrecySwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/policy/SecrecySwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecrecySwitchUpdateInfo"
.end annotation


# static fields
.field static final SWITCH_ACTIVITY:Ljava/lang/String; = "activity_sw"

.field static final SWITCH_ADB:Ljava/lang/String; = "adb_sw"

.field static final SWITCH_ID_TIMEOUT:Ljava/lang/String; = "id_timeout"

.field static final SWITCH_LOG:Ljava/lang/String; = "log_sw"

.field static final SWITCH_MAC_TIMEOUT:Ljava/lang/String; = "mac_timeout"

.field static final SWITCH_SUPPORT:Ljava/lang/String; = "support"


# instance fields
.field private final TAG_ACTIVITY:Ljava/lang/Object;

.field private mActivitySwitch:Z

.field private mAdbSwitch:Z

.field private final mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

.field private mIdTimeout:J

.field private mLogSwitch:Z

.field private mMacTimeout:J

.field private mSupportSwitch:Z

.field final synthetic this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V
    .registers 3
    .param p2, "switchUpdateListener"    # Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    .line 64
    iput-object p1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string p1, "activity"

    iput-object p1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->TAG_ACTIVITY:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    .line 66
    return-void
.end method


# virtual methods
.method public dumpToString()Ljava/lang/String;
    .registers 5

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const-string v1, "\nSecrecy Switch Info:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "log : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mac_timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id_timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActivitySwitch()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    return v0
.end method

.method public getAdbSwitch()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    return v0
.end method

.method public getIdTimeout()J
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    return-wide v0
.end method

.method public getLogSwitch()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    return v0
.end method

.method public getMacTimeout()J
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    return-wide v0
.end method

.method public getSupportSwitch()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    return v0
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .line 69
    if-nez p1, :cond_3

    .line 70
    return-void

    .line 72
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "configFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 75
    .local v1, "xmlReader":Ljava/io/FileReader;
    :try_start_9
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_149

    move-object v1, v2

    .line 80
    nop

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "updated":Z
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 85
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 86
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 87
    .local v4, "eventType":I
    iget-object v5, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    # getter for: Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;
    invoke-static {v5}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->access$000(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/secrecy/work/ActivityConfig;->clearActivityInfo()V

    .line 88
    :goto_25
    const/4 v5, 0x1

    if-eq v4, v5, :cond_f6

    .line 89
    if-eqz v4, :cond_ee

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2f

    goto/16 :goto_ef

    .line 93
    :cond_2f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "tmp":Ljava/lang/String;
    const-string/jumbo v6, "support"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 95
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    .line 96
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "currentText":Ljava/lang/String;
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    .line 98
    const/4 v2, 0x1

    goto/16 :goto_ef

    .line 99
    .end local v6    # "currentText":Ljava/lang/String;
    :cond_51
    const-string v6, "activity_sw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 100
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    .line 101
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 102
    .restart local v6    # "currentText":Ljava/lang/String;
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    .line 103
    const/4 v2, 0x1

    goto/16 :goto_ef

    .line 104
    .end local v6    # "currentText":Ljava/lang/String;
    :cond_6e
    const-string/jumbo v6, "log_sw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 105
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    .line 106
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 107
    .restart local v6    # "currentText":Ljava/lang/String;
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    .line 108
    const/4 v2, 0x1

    goto :goto_ef

    .line 109
    .end local v6    # "currentText":Ljava/lang/String;
    :cond_8b
    const-string v6, "adb_sw"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 110
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    .line 111
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 112
    .restart local v6    # "currentText":Ljava/lang/String;
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    .line 113
    const/4 v2, 0x1

    goto :goto_ef

    .line 114
    .end local v6    # "currentText":Ljava/lang/String;
    :cond_a7
    const-string/jumbo v6, "mac_timeout"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 115
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    .line 116
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 117
    .restart local v6    # "currentText":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    .line 118
    const/4 v2, 0x1

    goto :goto_ef

    .line 119
    .end local v6    # "currentText":Ljava/lang/String;
    :cond_c1
    const-string/jumbo v6, "id_timeout"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 120
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    .line 121
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 122
    .restart local v6    # "currentText":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    .line 123
    const/4 v2, 0x1

    goto :goto_ef

    .line 124
    .end local v6    # "currentText":Ljava/lang/String;
    :cond_db
    iget-object v6, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->TAG_ACTIVITY:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 125
    iget-object v6, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    # getter for: Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;
    invoke-static {v6}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->access$000(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/secrecy/work/ActivityConfig;->parseActivityInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 126
    const/4 v2, 0x1

    goto :goto_ef

    .line 91
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_ee
    nop

    .line 132
    :cond_ef
    :goto_ef
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_f3} :catch_11a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_f3} :catch_10a
    .catchall {:try_start_11 .. :try_end_f3} :catchall_108

    move v4, v5

    goto/16 :goto_25

    .line 142
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "eventType":I
    :cond_f6
    nop

    .line 143
    :try_start_f7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_107

    .line 145
    :catch_fb
    move-exception v3

    .line 146
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "SecrecyService.SecrecySwitchHelper"

    const-string v5, "Got execption close permReader."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_12a

    .line 148
    :goto_107
    goto :goto_12a

    .line 141
    :catchall_108
    move-exception v3

    goto :goto_136

    .line 137
    :catch_10a
    move-exception v3

    .line 138
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_10b
    const-string v4, "SecrecyService.SecrecySwitchHelper"

    const-string v5, "Got execption parsing permissions."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_115
    .catchall {:try_start_10b .. :try_end_115} :catchall_108

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 143
    :try_start_116
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_fb

    goto :goto_107

    .line 134
    :catch_11a
    move-exception v3

    .line 135
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_11b
    const-string v4, "SecrecyService.SecrecySwitchHelper"

    const-string v5, "Got execption parsing permissions."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_125
    .catchall {:try_start_11b .. :try_end_125} :catchall_108

    .line 142
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 143
    :try_start_126
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_fb

    goto :goto_107

    .line 150
    :goto_12a
    if-eqz v2, :cond_135

    iget-object v3, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    if-eqz v3, :cond_135

    .line 151
    iget-object v3, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    invoke-interface {v3}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;->onSecrecySwitchUpdate()V

    .line 153
    :cond_135
    return-void

    .line 141
    :goto_136
    nop

    .line 142
    nop

    .line 143
    :try_start_138
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13c

    goto :goto_148

    .line 145
    :catch_13c
    move-exception v4

    .line 146
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "SecrecyService.SecrecySwitchHelper"

    const-string v6, "Got execption close permReader."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 148
    :goto_148
    throw v3

    .line 76
    .end local v2    # "updated":Z
    :catch_149
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 79
    return-void
.end method
