.class public final Lcom/android/server/policy/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final BUFFER:I = 0x200

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "fileName"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    .line 44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1e
    .catchall {:try_start_2 .. :try_end_13} :catchall_1c

    move-object v0, v2

    .line 49
    nop

    .line 50
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1b

    .line 52
    :catch_19
    move-exception v2

    .line 55
    goto :goto_3b

    .line 54
    :cond_1b
    :goto_1b
    goto :goto_3b

    .line 48
    :catchall_1c
    move-exception v2

    goto :goto_3c

    .line 45
    :catch_1e
    move-exception v2

    .line 46
    .local v2, "e":Ljava/io/IOException;
    :try_start_1f
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    .line 49
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1b

    .line 50
    :try_start_37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_19

    goto :goto_1b

    .line 57
    :goto_3b
    return-object v0

    .line 48
    :goto_3c
    nop

    .line 49
    if-eqz v1, :cond_45

    .line 50
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_45

    .line 52
    :catch_43
    move-exception v3

    nop

    .line 54
    :cond_45
    :goto_45
    throw v2
.end method

.method public static writeByteArray(Ljava/lang/String;[B)Z
    .registers 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .line 108
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 110
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 111
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_11

    .line 115
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 117
    const/4 v0, 0x1

    return v0

    .line 112
    :catch_11
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v1, 0x0

    return v1
.end method

.method public static writeIntLine(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 90
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 91
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_11

    .line 95
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 97
    const/4 v0, 0x1

    return v0

    .line 92
    :catch_11
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v1, 0x0

    return v1
.end method

.method public static writeLine(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 68
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 70
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 71
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_15

    .line 75
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 77
    const/4 v0, 0x1

    return v0

    .line 72
    :catch_15
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    const/4 v1, 0x0

    return v1
.end method
