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
    .locals 3

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
    .locals 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    nop

    .line 54
    const-string v0, "XTRA_SERVER_1"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "XTRA_SERVER_2"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "XTRA_SERVER_3"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 58
    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 59
    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 62
    :cond_2
    const-string v6, "XTRA_USER_AGENT"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const-string p1, "Android"

    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_1

    .line 66
    :cond_3
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 69
    :goto_1
    if-nez v5, :cond_4

    .line 70
    const-string p1, "GpsXtraDownloader"

    const-string v0, "No XTRA servers were specified in the GPS configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    goto :goto_3

    .line 73
    :cond_4
    new-array p1, v5, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 74
    nop

    .line 75
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    aput-object v0, p1, v3

    .line 76
    move v3, v4

    :cond_5
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    aput-object v1, p1, v3

    goto :goto_2

    .line 77
    :cond_6
    move v0, v3

    :goto_2
    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v2, p1, v0

    .line 80
    move v0, v1

    :cond_7
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 81
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 83
    :goto_3
    return-void
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 9

    .line 115
    sget-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    nop

    .line 119
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 120
    :try_start_1
    const-string v1, "Accept"

    const-string v2, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "x-wap-profile"

    const-string v2, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget v1, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    sget v1, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 129
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 130
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 131
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 132
    sget-boolean v2, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GpsXtraDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP error downloading gps XTRA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 133
    :cond_1
    nop

    .line 152
    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    :cond_2
    return-object v0

    .line 136
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 137
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 140
    :cond_4
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 141
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 142
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xf4240

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 143
    sget-boolean v2, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "GpsXtraDownloader"

    const-string v3, "XTRA file too large"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :cond_5
    nop

    .line 148
    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 152
    :cond_6
    if-eqz p1, :cond_7

    .line 153
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    :cond_7
    return-object v0

    .line 147
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    if-eqz v1, :cond_9

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 152
    :cond_9
    if-eqz p1, :cond_a

    .line 153
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    :cond_a
    return-object v2

    .line 148
    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 148
    :catchall_1
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_0
    if-eqz v1, :cond_c

    if-eqz v3, :cond_b

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_9
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c
    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 149
    :catch_2
    move-exception v1

    goto :goto_2

    .line 152
    :catchall_2
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_3

    .line 149
    :catch_3
    move-exception v1

    move-object p1, v0

    .line 150
    :goto_2
    :try_start_a
    sget-boolean v2, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string v2, "GpsXtraDownloader"

    const-string v3, "Error downloading gps XTRA: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 152
    :cond_d
    if-eqz p1, :cond_e

    .line 153
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    :cond_e
    return-object v0

    .line 152
    :catchall_3
    move-exception v0

    :goto_3
    if-eqz p1, :cond_f

    .line 153
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw v0
.end method

.method downloadXtraData()[B
    .locals 4

    .line 86
    nop

    .line 87
    iget v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 89
    iget-object v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 90
    return-object v2

    .line 94
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 95
    const/16 v1, -0xbc

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 100
    nop

    .line 103
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 104
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne v1, v3, :cond_1

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 108
    :cond_1
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0

    .line 111
    :cond_3
    :goto_1
    return-object v2
.end method
