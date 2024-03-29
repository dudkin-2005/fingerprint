.class public Lcom/android/server/secrecy/policy/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static PATH_OF_DOWNLOAD_INTRANET:Ljava/lang/String; = null

.field private static PATH_OF_DOWNLOAD_TIME:Ljava/lang/String; = null

.field private static PATTERN_FOR_DATE:Ljava/lang/String; = null

.field private static PATTERN_FOR_TIME:Ljava/lang/String; = null

.field private static final SECITON_DOWNLOAD_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecrecyService.Utils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, "/sys/devices/download_info/upgrade_download_time1"

    sput-object v0, Lcom/android/server/secrecy/policy/util/Utils;->PATH_OF_DOWNLOAD_TIME:Ljava/lang/String;

    .line 23
    const-string v0, "/sys/devices/download_info/intranet"

    sput-object v0, Lcom/android/server/secrecy/policy/util/Utils;->PATH_OF_DOWNLOAD_INTRANET:Ljava/lang/String;

    .line 24
    const-string v0, "[1-9][0-9]{3}/[0-9]{2}/[0-9]{2}"

    sput-object v0, Lcom/android/server/secrecy/policy/util/Utils;->PATTERN_FOR_DATE:Ljava/lang/String;

    .line 25
    const-string v0, "[0-9]{2}:[0-9]{2}:[0-9]{2}"

    sput-object v0, Lcom/android/server/secrecy/policy/util/Utils;->PATTERN_FOR_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "downloadStatus"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/server/secrecy/policy/util/Utils;->PATTERN_FOR_DATE:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 94
    .local v0, "datePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 95
    .local v1, "dateMatcher":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 96
    .local v2, "dateStr":Ljava/lang/String;
    :goto_c
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 97
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v3, "SecrecyService.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dateMatcher = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 100
    :cond_2d
    return-object v2
.end method

.method public static getDownloadStatusString()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-static {}, Lcom/android/server/secrecy/policy/util/ParamReader;->getUpgradeTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "downloadStatus"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/android/server/secrecy/policy/util/Utils;->PATTERN_FOR_TIME:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 106
    .local v0, "timePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 107
    .local v1, "timeMatcher":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 108
    .local v2, "timeStr":Ljava/lang/String;
    :goto_c
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 109
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v3, "SecrecyService.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeMatcher = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 112
    :cond_2e
    return-object v2
.end method

.method private static getDownlodStatusFromUsageService()Ljava/lang/String;
    .registers 1

    .line 36
    const-string/jumbo v0, "none"

    .line 40
    .local v0, "downloadStatus":Ljava/lang/String;
    return-object v0
.end method

.method public static getFlashIimeInMillis(Ljava/lang/String;Ljava/lang/String;)J
    .registers 9
    .param p0, "downloadDate"    # Ljava/lang/String;
    .param p1, "downloadTime"    # Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "downloadExactTime":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "downloadExactTimeInMillis":J
    :try_start_1e
    const-string v4, "Asia/Shanghai"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-wide v2, v4

    .line 83
    const-string v4, "SecrecyService.Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/text/ParseException; {:try_start_1e .. :try_end_46} :catch_47

    .line 87
    goto :goto_4b

    .line 84
    :catch_47
    move-exception v4

    .line 86
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 88
    .end local v4    # "e":Ljava/text/ParseException;
    :goto_4b
    return-wide v2
.end method

.method public static isFlashedInternal()Z
    .registers 1

    .line 117
    invoke-static {}, Lcom/android/server/secrecy/policy/util/ParamReader;->isFlashedInternal()Z

    move-result v0

    return v0
.end method

.method private static isQCOMPlatform()Z
    .registers 2

    .line 45
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 54
    .local v1, "reader":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 57
    .local v2, "tempString":Ljava/lang/String;
    :try_start_8
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_3c
    .catchall {:try_start_8 .. :try_end_17} :catchall_3a

    move-object v2, v3

    .line 62
    nop

    .line 64
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 67
    :goto_1c
    goto :goto_67

    .line 65
    :catch_1d
    move-exception v3

    .line 66
    .local v3, "e1":Ljava/io/IOException;
    const-string v4, "SecrecyService.Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_25
    const-string/jumbo v6, "readStringFromFile io close exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e1":Ljava/io/IOException;
    goto :goto_1c

    .line 62
    :catchall_3a
    move-exception v3

    goto :goto_87

    .line 59
    :catch_3c
    move-exception v3

    .line 60
    .local v3, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v4, "SecrecyService.Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readStringFromFile io exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_3d .. :try_end_58} :catchall_3a

    .line 62
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_67

    .line 64
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_1c

    .line 65
    :catch_5e
    move-exception v3

    .line 66
    .local v3, "e1":Ljava/io/IOException;
    const-string v4, "SecrecyService.Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_25

    .line 71
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_67
    :goto_67
    const-string v3, "SecrecyService.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v2

    .line 62
    :goto_87
    if-eqz v1, :cond_a9

    .line 64
    :try_start_89
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 67
    goto :goto_a9

    .line 65
    :catch_8d
    move-exception v4

    .line 66
    .local v4, "e1":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readStringFromFile io close exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecrecyService.Utils"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_a9
    :goto_a9
    throw v3
.end method
