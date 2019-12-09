.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .registers 9
    .param p1, "properties"    # Ljava/util/Properties;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "count":I
    const-string v1, "XTRA_SERVER_1"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "server1":Ljava/lang/String;
    const-string v2, "XTRA_SERVER_2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "server2":Ljava/lang/String;
    const-string v3, "XTRA_SERVER_3"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "server3":Ljava/lang/String;
    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_1a
    if-eqz v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_1e
    if-eqz v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_22
    const-string v4, "XTRA_USER_AGENT"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "agent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 64
    const-string v5, "Android"

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_35

    .line 66
    :cond_33
    iput-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 69
    :goto_35
    if-nez v0, :cond_42

    .line 70
    const-string v5, "GpsXtraDownloader"

    const-string v6, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    goto :goto_6d

    .line 73
    :cond_42
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 75
    if-eqz v1, :cond_50

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .local v6, "count":I
    aput-object v1, v5, v0

    .line 76
    .end local v0    # "count":I
    move v0, v6

    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_50
    if-eqz v2, :cond_59

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .restart local v6    # "count":I
    aput-object v2, v5, v0

    .line 77
    .end local v0    # "count":I
    move v0, v6

    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_59
    if-eqz v3, :cond_62

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .restart local v6    # "count":I
    aput-object v3, v5, v0

    .line 80
    .end local v0    # "count":I
    move v0, v6

    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_62
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 81
    .local v5, "random":Ljava/util/Random;
    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 83
    .end local v5    # "random":Ljava/util/Random;
    :goto_6d
    return-void
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 15
    .param p1, "url"    # Ljava/lang/String;

    .line 115
    sget-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "GpsXtraDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading XTRA data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1a
    const/4 v0, 0x0

    move-object v1, v0

    .line 119
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_1c
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v1, v2

    .line 120
    const-string v2, "Accept"

    const-string v3, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v2, "x-wap-profile"

    const-string/jumbo v3, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget v2, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    sget v2, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 130
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 131
    .local v2, "statusCode":I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_6e

    .line 132
    sget-boolean v3, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v3, :cond_67

    const-string v3, "GpsXtraDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP error downloading gps XTRA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_67} :catch_d5
    .catchall {:try_start_1c .. :try_end_67} :catchall_d3

    .line 133
    :cond_67
    nop

    .line 152
    if-eqz v1, :cond_6d

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    :cond_6d
    return-object v0

    .line 136
    :cond_6e
    :try_start_6e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_d5
    .catchall {:try_start_6e .. :try_end_72} :catchall_d3

    .line 137
    .local v3, "in":Ljava/io/InputStream;
    :try_start_72
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v4, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 140
    .local v5, "buffer":[B
    :cond_7b
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .line 140
    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_aa

    .line 141
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 142
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    int-to-long v8, v6

    const-wide/32 v10, 0xf4240

    cmp-long v6, v8, v10

    if-lez v6, :cond_7b

    .line 143
    sget-boolean v6, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v6, :cond_9e

    const-string v6, "GpsXtraDownloader"

    const-string v8, "XTRA file too large"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_9e} :catch_bc
    .catchall {:try_start_72 .. :try_end_9e} :catchall_b9

    .line 144
    :cond_9e
    nop

    .line 148
    if-eqz v3, :cond_a4

    :try_start_a1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_d5
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_d3

    .line 152
    :cond_a4
    if-eqz v1, :cond_a9

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    :cond_a9
    return-object v0

    .line 147
    :cond_aa
    :try_start_aa
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_ae} :catch_bc
    .catchall {:try_start_aa .. :try_end_ae} :catchall_b9

    .line 148
    if-eqz v3, :cond_b3

    :try_start_b0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_d5
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_d3

    .line 152
    :cond_b3
    if-eqz v1, :cond_b8

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    :cond_b8
    return-object v6

    .line 148
    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buffer":[B
    .end local v7    # "count":I
    :catchall_b9
    move-exception v4

    move-object v5, v0

    goto :goto_c2

    .line 136
    :catch_bc
    move-exception v4

    :try_start_bd
    throw v4
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    .line 148
    :catchall_be
    move-exception v5

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    :goto_c2
    if-eqz v3, :cond_d2

    if-eqz v5, :cond_cf

    :try_start_c6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_c9} :catch_ca
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_d5
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_d3

    goto :goto_d2

    :catch_ca
    move-exception v6

    :try_start_cb
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d2

    :cond_cf
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_d2
    :goto_d2
    throw v4
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d3} :catch_d5
    .catchall {:try_start_cb .. :try_end_d3} :catchall_d3

    .line 152
    .end local v2    # "statusCode":I
    .end local v3    # "in":Ljava/io/InputStream;
    :catchall_d3
    move-exception v0

    goto :goto_e7

    .line 149
    :catch_d5
    move-exception v2

    .line 150
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_d6
    sget-boolean v3, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v3, :cond_e1

    const-string v3, "GpsXtraDownloader"

    const-string v4, "Error downloading gps XTRA: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e1
    .catchall {:try_start_d6 .. :try_end_e1} :catchall_d3

    .line 152
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_e1
    if-eqz v1, :cond_e6

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    :cond_e6
    return-object v0

    .line 152
    :goto_e7
    if-eqz v1, :cond_ec

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ec
    throw v0
.end method

.method downloadXtraData()[B
    .registers 6

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 89
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_9

    .line 90
    const/4 v2, 0x0

    return-object v2

    .line 94
    :cond_9
    :goto_9
    if-nez v0, :cond_3b

    .line 95
    const/16 v2, -0xbc

    invoke-static {v2}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v2

    .line 97
    .local v2, "oldTag":I
    :try_start_11
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_36

    move-object v0, v3

    .line 99
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 100
    nop

    .line 103
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 104
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_30

    .line 105
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 108
    :cond_30
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v3, v1, :cond_35

    goto :goto_3b

    .line 109
    .end local v2    # "oldTag":I
    :cond_35
    goto :goto_9

    .line 99
    .restart local v2    # "oldTag":I
    :catchall_36
    move-exception v3

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v3

    .line 111
    .end local v2    # "oldTag":I
    :cond_3b
    :goto_3b
    return-object v0
.end method
