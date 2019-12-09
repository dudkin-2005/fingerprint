.class public Lcom/android/server/OnePlusDiagnosisUtil;
.super Ljava/lang/Object;
.source "OnePlusDiagnosisUtil.java"


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field public static final STANDBY_DIAGNOSIS_FOLDER:Ljava/lang/String; = "/data/system/power"

.field public static final TAG:Ljava/lang/String; = "OnePlusDiagnosisUtil"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private final mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLines:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "maxLines"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    .line 51
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    .line 53
    iput-object p1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    move-object v2, v1

    .line 58
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_18
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 61
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 62
    nop

    .line 63
    .local v1, "line":Ljava/lang/String;
    :goto_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_3d

    .line 64
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    goto :goto_32

    .line 66
    .end local v1    # "line":Ljava/lang/String;
    :cond_3d
    goto :goto_58

    .line 67
    :cond_3e
    sget-boolean v1, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_58

    const-string v1, "OnePlusDiagnosisUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t existed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_58} :catch_63
    .catchall {:try_start_18 .. :try_end_58} :catchall_61

    .line 74
    :cond_58
    :goto_58
    if-eqz v2, :cond_60

    .line 75
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_60

    .line 76
    :catch_5e
    move-exception v1

    .line 78
    goto :goto_84

    .line 77
    :cond_60
    :goto_60
    goto :goto_84

    .line 73
    :catchall_61
    move-exception v1

    goto :goto_85

    .line 69
    :catch_63
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    :try_start_64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const-string v3, "OnePlusDiagnosisUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_64 .. :try_end_7e} :catchall_61

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_60

    .line 75
    :try_start_80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_5e

    goto :goto_60

    .line 79
    :goto_84
    return-void

    .line 73
    :goto_85
    nop

    .line 74
    if-eqz v2, :cond_8e

    .line 75
    :try_start_88
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_8e

    .line 76
    :catch_8c
    move-exception v3

    nop

    .line 77
    :cond_8e
    :goto_8e
    throw v1
.end method

.method private declared-synchronized append(Ljava/lang/String;)V
    .registers 4
    .param p1, "logLine"    # Ljava/lang/String;

    monitor-enter p0

    .line 228
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-lt v0, v1, :cond_11

    .line 229
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 231
    :cond_11
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 232
    monitor-exit p0

    return-void

    .line 227
    .end local p1    # "logLine":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw p1
.end method


# virtual methods
.method public declared-synchronized deleteFile()V
    .registers 3

    monitor-enter p0

    .line 269
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 271
    .local v0, "f":Ljava/io/File;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 274
    iget-object v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 277
    :cond_16
    goto :goto_18

    .line 276
    :catch_17
    move-exception v1

    .line 278
    :goto_18
    monitor-exit p0

    return-void

    .line 268
    .end local v0    # "f":Ljava/io/File;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0
.end method

.method public declared-synchronized dumpRecords()V
    .registers 5

    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 235
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 236
    sget-boolean v1, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_7

    const-string v1, "OnePlusDiagnosisUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    goto :goto_7

    .line 238
    :cond_2c
    monitor-exit p0

    return-void

    .line 233
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_2e
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0
.end method

.method public declared-synchronized flushToFile()V
    .registers 8

    monitor-enter p0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "theDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 242
    .local v1, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 244
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/power"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 248
    :cond_15
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 249
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 250
    iget-object v3, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 251
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 252
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_4d
    .catchall {:try_start_4 .. :try_end_3b} :catchall_4b

    goto :goto_29

    .line 260
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3c
    nop

    .line 261
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_43

    .line 264
    :catch_41
    move-exception v3

    goto :goto_48

    .line 262
    :goto_43
    nop

    .line 263
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_41
    .catchall {:try_start_3d .. :try_end_47} :catchall_7c

    goto :goto_4a

    .line 264
    :goto_48
    nop

    .line 266
    goto :goto_73

    .line 265
    :cond_4a
    :goto_4a
    goto :goto_73

    .line 259
    :catchall_4b
    move-exception v3

    goto :goto_75

    .line 255
    :catch_4d
    move-exception v3

    .line 256
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    const-string v4, "OnePlusDiagnosisUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_4b

    .line 260
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_6d

    .line 261
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 262
    :cond_6d
    if-eqz v1, :cond_4a

    .line 263
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_72} :catch_41
    .catchall {:try_start_6a .. :try_end_72} :catchall_7c

    goto :goto_4a

    .line 267
    :goto_73
    monitor-exit p0

    return-void

    .line 259
    :goto_75
    nop

    .line 260
    if-eqz v2, :cond_80

    .line 261
    :try_start_78
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_80

    .line 239
    .end local v0    # "theDir":Ljava/io/File;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :catchall_7c
    move-exception v0

    goto :goto_88

    .line 264
    .restart local v0    # "theDir":Ljava/io/File;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :catch_7e
    move-exception v4

    goto :goto_86

    .line 262
    :cond_80
    :goto_80
    if-eqz v1, :cond_87

    .line 263
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_85} :catch_7e
    .catchall {:try_start_78 .. :try_end_85} :catchall_7c

    goto :goto_87

    .line 264
    :goto_86
    nop

    .line 265
    :cond_87
    :goto_87
    :try_start_87
    throw v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_7c

    .line 239
    .end local v0    # "theDir":Ljava/io/File;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :goto_88
    monitor-exit p0

    .line 239
    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0
.end method

.method public declared-synchronized genRaw(JILjava/util/List;)Ljava/lang/String;
    .registers 26
    .param p1, "standbyMs"    # J
    .param p3, "batteryDrop"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 95
    .local p4, "str_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-wide/from16 v1, p1

    monitor-enter p0

    .line 95
    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 98
    .local v3, "calendarBegin":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 100
    .local v4, "utcNow":J
    long-to-float v6, v1

    const v7, 0x4a5bba00    # 3600000.0f

    div-float/2addr v6, v7

    .line 102
    .local v6, "standbyHrs":F
    sub-long v7, v4, v1

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 104
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 105
    .local v7, "tz":Ljava/util/TimeZone;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 109
    .local v11, "i":I
    :goto_2e
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_8f

    .line 110
    const-string v12, "%d,%d,%.3f,%d,%s,%s,%s\n"

    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/Object;

    sub-long v14, v4, v1

    const-wide/16 v16, 0x3e8

    move/from16 v18, v11

    div-long v10, v14, v16

    .line 111
    .end local v11    # "i":I
    .local v18, "i":I
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v13, v11

    move-object/from16 v19, v12

    div-long v11, v4, v16

    .line 112
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v13, v11

    const/4 v10, 0x2

    .line 113
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v13, v10

    const/4 v10, 0x3

    .line 114
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v10

    const/4 v10, 0x4

    .line 115
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v10

    const/4 v10, 0x5

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v10

    const/4 v10, 0x6

    .line 117
    move-object/from16 v11, p4

    move/from16 v12, v18

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 117
    .end local v18    # "i":I
    .local v12, "i":I
    aput-object v14, v13, v10

    .line 110
    move-object/from16 v10, v19

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v10, v12, 0x1

    .line 109
    .end local v12    # "i":I
    .local v10, "i":I
    move v11, v10

    goto :goto_2e

    .line 119
    .end local v10    # "i":I
    :cond_8f
    move-object/from16 v11, p4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_97

    monitor-exit p0

    return-object v10

    .line 94
    .end local v0    # "calendarNow":Ljava/util/Calendar;
    .end local v3    # "calendarBegin":Ljava/util/Calendar;
    .end local v4    # "utcNow":J
    .end local v6    # "standbyHrs":F
    .end local v7    # "tz":Ljava/util/TimeZone;
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "standbyMs":J
    .end local p3    # "batteryDrop":I
    .end local p4    # "str_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_97
    move-exception v0

    monitor-exit p0

    .line 94
    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0
.end method

.method public log(IJIFLjava/lang/String;)V
    .registers 24
    .param p1, "fault_type"    # I
    .param p2, "standbyMs"    # J
    .param p4, "batteryDrop"    # I
    .param p5, "mA"    # F
    .param p6, "msg"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 204
    iget v3, v0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v3, :cond_9

    .line 205
    return-void

    .line 207
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 208
    .local v3, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 210
    .local v4, "calendarBegin":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 212
    .local v5, "utcNow":J
    long-to-float v7, v1

    const v8, 0x4a5bba00    # 3600000.0f

    div-float/2addr v7, v8

    .line 214
    .local v7, "standbyHrs":F
    sub-long v8, v5, v1

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    .line 217
    .local v8, "tz":Ljava/util/TimeZone;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 218
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 220
    const-string v10, "%d,%d,%d,%.3f,%d,%.2f,%s,%s,%s"

    const/16 v11, 0x9

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sub-long v13, v5, v1

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    .line 221
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    div-long v13, v5, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 222
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 223
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    aput-object p6, v11, v12

    const/4 v12, 0x7

    .line 224
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    const/16 v12, 0x8

    .line 225
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    .line 220
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public log(ILjava/lang/String;)V
    .registers 13
    .param p1, "fault_type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 179
    iget v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v0, :cond_5

    .line 180
    return-void

    .line 182
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 183
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 184
    .local v1, "utc":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 185
    .local v3, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 187
    const-string v5, "%d,%d,%s,%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "fault_type"    # I
    .param p2, "msg1"    # Ljava/lang/String;
    .param p3, "msg2"    # Ljava/lang/String;

    .line 190
    iget v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v0, :cond_5

    .line 191
    return-void

    .line 193
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 194
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 195
    .local v1, "utc":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 196
    .local v3, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    const-string v5, "%d,%d,%s,%s,%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    .line 200
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p3, v6, v7

    .line 198
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 173
    iget v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v0, :cond_5

    .line 174
    return-void

    .line 176
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public declared-synchronized logRaw(JILjava/lang/String;Ljava/util/List;)V
    .registers 28
    .param p1, "standbyMs"    # J
    .param p3, "batteryDrop"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p5, "str_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    monitor-enter p0

    .line 122
    if-eqz v3, :cond_131

    if-eqz v4, :cond_131

    .line 123
    const/4 v5, 0x0

    .line 124
    .local v5, "theDir":Ljava/io/File;
    const/4 v6, 0x0

    .line 125
    .local v6, "fw":Ljava/io/FileWriter;
    const/4 v7, 0x0

    .line 127
    .local v7, "bw":Ljava/io/BufferedWriter;
    :try_start_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-object v8, v0

    .line 128
    .local v8, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-object v9, v0

    .line 130
    .local v9, "calendarBegin":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 132
    .local v10, "utcNow":J
    long-to-float v0, v1

    const v12, 0x4a5bba00    # 3600000.0f

    div-float v12, v0, v12

    .line 134
    .local v12, "standbyHrs":F
    sub-long v13, v10, v1

    invoke-virtual {v9, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 136
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    move-object v13, v0

    .line 137
    .local v13, "tz":Ljava/util/TimeZone;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 138
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v14, v13}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_12e

    .line 141
    :try_start_38
    new-instance v0, Ljava/io/File;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_ed
    .catchall {:try_start_38 .. :try_end_3a} :catchall_e7

    move-object v15, v5

    :try_start_3b
    const-string v5, "/data/system/power"

    .line 141
    .end local v5    # "theDir":Ljava/io/File;
    .local v15, "theDir":Ljava/io/File;
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_e4
    .catchall {:try_start_3b .. :try_end_40} :catchall_df

    move-object v5, v0

    .line 142
    .end local v15    # "theDir":Ljava/io/File;
    .restart local v5    # "theDir":Ljava/io/File;
    :try_start_41
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_db
    .catchall {:try_start_41 .. :try_end_45} :catchall_d6

    if-nez v0, :cond_4e

    .line 143
    :try_start_47
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_11a

    goto :goto_4e

    .line 158
    :catch_4b
    move-exception v0

    goto/16 :goto_ef

    .line 145
    :cond_4e
    :goto_4e
    :try_start_4e
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 146
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v7, v0

    .line 147
    const/4 v15, 0x0

    .line 147
    .local v15, "i":I
    :goto_5b
    move/from16 v16, v15

    .line 147
    .end local v15    # "i":I
    .local v16, "i":I
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v3, v16

    if-ge v3, v0, :cond_cc

    .line 148
    .end local v16    # "i":I
    .local v3, "i":I
    const-string v0, "%d,%d,%.3f,%d,%s,%s,%s"
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_67} :catch_db
    .catchall {:try_start_4e .. :try_end_67} :catchall_d6

    move-object/from16 v17, v5

    const/4 v5, 0x7

    .line 148
    .end local v5    # "theDir":Ljava/io/File;
    .local v17, "theDir":Ljava/io/File;
    :try_start_6a
    new-array v5, v5, [Ljava/lang/Object;

    sub-long v15, v10, v1

    const-wide/16 v18, 0x3e8

    div-long v1, v15, v18

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    move/from16 v20, v3

    div-long v2, v10, v18

    .line 150
    .end local v3    # "i":I
    .local v20, "i":I
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 151
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    .line 152
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    .line 153
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x5

    .line 154
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x6

    .line 155
    move/from16 v2, v20

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 155
    .end local v20    # "i":I
    .local v2, "i":I
    aput-object v3, v5, v1

    .line 148
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_bb} :catch_c8
    .catchall {:try_start_6a .. :try_end_bb} :catchall_c4

    .line 147
    add-int/lit8 v15, v2, 0x1

    .line 147
    .end local v2    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v5, v17

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    goto :goto_5b

    .line 162
    .end local v15    # "i":I
    :catchall_c4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11e

    .line 158
    :catch_c8
    move-exception v0

    move-object/from16 v5, v17

    goto :goto_ef

    .line 163
    .end local v17    # "theDir":Ljava/io/File;
    .restart local v5    # "theDir":Ljava/io/File;
    :cond_cc
    move-object/from16 v17, v5

    .line 164
    .end local v5    # "theDir":Ljava/io/File;
    .restart local v17    # "theDir":Ljava/io/File;
    :try_start_ce
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 165
    nop

    .line 166
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d5} :catch_10f
    .catchall {:try_start_ce .. :try_end_d5} :catchall_12e

    goto :goto_119

    .line 162
    .end local v17    # "theDir":Ljava/io/File;
    .restart local v5    # "theDir":Ljava/io/File;
    :catchall_d6
    move-exception v0

    move-object/from16 v17, v5

    move-object v1, v0

    .line 162
    .end local v5    # "theDir":Ljava/io/File;
    .restart local v17    # "theDir":Ljava/io/File;
    goto :goto_11e

    .line 158
    .end local v17    # "theDir":Ljava/io/File;
    .restart local v5    # "theDir":Ljava/io/File;
    :catch_db
    move-exception v0

    move-object/from16 v17, v5

    .line 158
    .end local v5    # "theDir":Ljava/io/File;
    .restart local v17    # "theDir":Ljava/io/File;
    goto :goto_ef

    .line 162
    .end local v17    # "theDir":Ljava/io/File;
    .local v15, "theDir":Ljava/io/File;
    :catchall_df
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v15

    goto :goto_11e

    .line 158
    :catch_e4
    move-exception v0

    move-object v5, v15

    goto :goto_ef

    .line 162
    .end local v15    # "theDir":Ljava/io/File;
    .restart local v5    # "theDir":Ljava/io/File;
    :catchall_e7
    move-exception v0

    move-object v15, v5

    move-object v1, v0

    move-object/from16 v17, v15

    .line 162
    .end local v5    # "theDir":Ljava/io/File;
    .restart local v15    # "theDir":Ljava/io/File;
    goto :goto_11e

    .line 158
    .end local v15    # "theDir":Ljava/io/File;
    .restart local v5    # "theDir":Ljava/io/File;
    :catch_ed
    move-exception v0

    move-object v15, v5

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :goto_ef
    :try_start_ef
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const-string v1, "OnePlusDiagnosisUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_ef .. :try_end_109} :catchall_11a

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_111

    .line 164
    :try_start_10b
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    goto :goto_111

    .line 167
    :catch_10f
    move-exception v0

    goto :goto_117

    .line 165
    :cond_111
    :goto_111
    if-eqz v6, :cond_119

    .line 166
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_116} :catch_10f
    .catchall {:try_start_10b .. :try_end_116} :catchall_12e

    goto :goto_119

    .line 167
    :goto_117
    nop

    .line 169
    goto :goto_131

    .line 168
    :cond_119
    :goto_119
    goto :goto_131

    .line 162
    :catchall_11a
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v5

    .line 163
    .end local v5    # "theDir":Ljava/io/File;
    .restart local v17    # "theDir":Ljava/io/File;
    :goto_11e
    if-eqz v7, :cond_126

    .line 164
    :try_start_120
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    goto :goto_126

    .line 167
    :catch_124
    move-exception v0

    goto :goto_12c

    .line 165
    :cond_126
    :goto_126
    if-eqz v6, :cond_12d

    .line 166
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_12b} :catch_124
    .catchall {:try_start_120 .. :try_end_12b} :catchall_12e

    goto :goto_12d

    .line 167
    :goto_12c
    nop

    .line 168
    :cond_12d
    :goto_12d
    :try_start_12d
    throw v1
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12e

    .line 121
    .end local v6    # "fw":Ljava/io/FileWriter;
    .end local v7    # "bw":Ljava/io/BufferedWriter;
    .end local v8    # "calendarNow":Ljava/util/Calendar;
    .end local v9    # "calendarBegin":Ljava/util/Calendar;
    .end local v10    # "utcNow":J
    .end local v12    # "standbyHrs":F
    .end local v13    # "tz":Ljava/util/TimeZone;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v17    # "theDir":Ljava/io/File;
    .end local p1    # "standbyMs":J
    .end local p3    # "batteryDrop":I
    .end local p4    # "filePath":Ljava/lang/String;
    .end local p5    # "str_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_12e
    move-exception v0

    monitor-exit p0

    .line 121
    .end local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    throw v0

    .line 171
    .restart local p0    # "this":Lcom/android/server/OnePlusDiagnosisUtil;
    .restart local p1    # "standbyMs":J
    .restart local p3    # "batteryDrop":I
    .restart local p4    # "filePath":Ljava/lang/String;
    .restart local p5    # "str_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_131
    :goto_131
    monitor-exit p0

    return-void
.end method

.method public resetAssitFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "f":Ljava/io/File;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 90
    :cond_e
    goto :goto_10

    .line 89
    :catch_f
    move-exception v1

    .line 91
    :goto_10
    return-void
.end method
