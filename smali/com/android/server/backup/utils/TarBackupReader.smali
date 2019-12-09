.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 94
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 95
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 96
    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 97
    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    array-length v0, p0

    .line 655
    if-ge p1, v0, :cond_2

    .line 660
    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 661
    aget-byte v2, p0, v1

    .line 664
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 665
    goto :goto_1

    .line 660
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_1
    :goto_1
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    invoke-direct {v2, p0, p1, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v2, p2, v0

    .line 669
    add-int/lit8 v1, v1, 0x1

    .line 670
    return v1

    .line 656
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractRadix([BIII)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    nop

    .line 750
    add-int/2addr p2, p1

    .line 751
    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    .line 752
    aget-byte v2, p0, p1

    .line 754
    if-eqz v2, :cond_2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 755
    goto :goto_1

    .line 757
    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_1

    .line 761
    int-to-long v3, p3

    mul-long/2addr v3, v0

    add-int/lit8 v2, v2, -0x30

    int-to-long v0, v2

    add-long/2addr v0, v3

    .line 751
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 758
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid number in header: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' for radix "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 763
    :cond_2
    :goto_1
    return-wide v0
.end method

.method private static extractString([BII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    add-int/2addr p2, p1

    .line 768
    nop

    .line 770
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    new-instance p2, Ljava/lang/String;

    sub-int/2addr v0, p1

    const-string v1, "US-ASCII"

    invoke-direct {p2, p0, p1, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p2
.end method

.method private static hexLog([B)V
    .locals 10

    .line 777
    nop

    .line 778
    array-length v0, p0

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 780
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lez v0, :cond_2

    .line 781
    const-string v4, "%04x   "

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const/16 v4, 0x10

    if-le v0, v4, :cond_0

    goto :goto_1

    .line 783
    :cond_0
    move v4, v0

    :goto_1
    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_1

    .line 784
    const-string v7, "%02x "

    new-array v8, v5, [Ljava/lang/Object;

    add-int v9, v3, v6

    aget-byte v9, p0, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 786
    :cond_1
    const-string v5, "hexdump"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 788
    sub-int/2addr v0, v4

    .line 789
    add-int/2addr v3, v4

    .line 790
    goto :goto_0

    .line 791
    :cond_2
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    if-lez p3, :cond_2

    .line 250
    const/4 v0, 0x0

    .line 251
    :goto_0
    if-ge v0, p3, :cond_1

    .line 252
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 253
    if-gtz v1, :cond_0

    .line 257
    goto :goto_1

    .line 259
    :cond_0
    add-int/2addr v0, v1

    .line 263
    goto :goto_0

    .line 264
    :cond_1
    :goto_1
    return v0

    .line 245
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    .line 695
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v2, 0x1ff

    add-long/2addr v0, v2

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 696
    mul-int/lit16 v0, v0, 0x200

    new-array v0, v0, [B

    .line 697
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_7

    .line 700
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v2, v0

    int-to-long v4, v2

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 702
    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v1, v1

    .line 703
    nop

    .line 706
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .line 707
    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v4, v0, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 710
    :cond_1
    if-ge v2, v1, :cond_6

    .line 715
    sub-int v4, v2, v3

    const/16 v5, 0xa

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v4

    long-to-int v4, v4

    .line 716
    add-int/lit8 v2, v2, 0x1

    .line 717
    add-int/2addr v3, v4

    add-int/lit8 v4, v3, -0x1

    .line 719
    add-int/lit8 v5, v2, 0x1

    :goto_1
    aget-byte v6, v0, v5

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_2

    if-gt v5, v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 722
    :cond_2
    if-gt v5, v4, :cond_5

    .line 727
    new-instance v6, Ljava/lang/String;

    sub-int v7, v5, v2

    const-string v8, "UTF-8"

    invoke-direct {v6, v0, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 729
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-string v9, "UTF-8"

    invoke-direct {v7, v0, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 731
    const-string/jumbo v4, "path"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 732
    iput-object v7, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_2

    .line 733
    :cond_3
    const-string/jumbo v4, "size"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 734
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_2

    .line 737
    :cond_4
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled pax key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_2
    nop

    .line 742
    if-lt v3, v1, :cond_0

    .line 744
    return v5

    .line 723
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid pax declaration"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid pax data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 698
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to read full pax header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 690
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspiciously large pax header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - aborting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanity failure: pax header size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTarHeader([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result p1

    .line 675
    if-nez p1, :cond_0

    .line 676
    return v2

    .line 678
    :cond_0
    if-lt p1, v1, :cond_1

    .line 681
    iget-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v0, 0x200

    invoke-interface {p1, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 682
    const/4 p1, 0x1

    return p1

    .line 679
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to read full block header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 5

    .line 391
    if-nez p4, :cond_0

    .line 392
    sget-object p1, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object p1

    .line 395
    :cond_0
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 399
    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v4, 0x8000000

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 402
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 403
    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 406
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    const-string p4, "BackupManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is system level with no agent"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p5, 0x26

    const/4 v3, 0x2

    invoke-static {p4, p5, p1, v3, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_1

    .line 416
    :cond_2
    :goto_0
    invoke-static {p4, p1, p5}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 417
    iget-object p4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p5, 0x20000

    and-int/2addr p4, p5

    if-eqz p4, :cond_3

    .line 419
    const-string p4, "BackupManagerService"

    const-string p5, "Package has restoreAnyVersion; taking data"

    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p5, 0x22

    invoke-static {p4, p5, p1, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 426
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_1

    .line 427
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p4

    iget-wide v3, p3, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long p4, p4, v3

    if-ltz p4, :cond_4

    .line 428
    const-string p4, "BackupManagerService"

    const-string p5, "Sig + version match; taking data"

    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 430
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p5, 0x23

    invoke-static {p4, p5, p1, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_1

    .line 440
    :cond_4
    if-eqz p2, :cond_5

    .line 441
    const-string p4, "BackupManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data version "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {p5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is newer than installed version "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {p5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " - requiring apk"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-static {p4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_1

    .line 448
    :cond_5
    const-string p4, "BackupManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data requires newer version "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {p5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; ignoring"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p5, 0x24

    const-string v0, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v3, p3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 456
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    .line 451
    invoke-static {p4, p5, p1, v1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 461
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1

    .line 465
    :cond_6
    const-string p4, "BackupManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore manifest signatures do not match installed application for "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p5, 0x25

    invoke-static {p4, p5, p1, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_1

    .line 487
    :cond_7
    const-string p4, "BackupManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore manifest from "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but allowBackup=false"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p5, 0x27

    invoke-static {p4, p5, p1, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_1
    goto :goto_4

    .line 497
    :catch_0
    move-exception p1

    .line 501
    if-eqz p2, :cond_8

    .line 503
    const-string p1, "BackupManagerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Package "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " not installed; requiring apk in dataset"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object p1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    .line 510
    :goto_2
    move-object v0, p1

    goto :goto_3

    .line 508
    :cond_8
    sget-object p1, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_2

    .line 510
    :goto_3
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p4, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v2, p1, p4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 513
    const-string p4, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {p1, p4, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 516
    iget-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p4, 0x28

    invoke-static {p2, p4, v2, v1, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 524
    :goto_4
    sget-object p1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v0, p1, :cond_9

    iget-boolean p1, p3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez p1, :cond_9

    .line 525
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot restore package "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " without the matching .apk"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p2, 0x29

    const-string p4, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 532
    invoke-static {v2, p4, p3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 527
    invoke-static {p1, p2, v2, v1, p3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 536
    :cond_9
    return-object v0
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 282
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 287
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 293
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 294
    nop

    .line 297
    const/4 v4, 0x3

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v6

    .line 298
    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 299
    if-ne v7, v1, :cond_4

    .line 300
    invoke-static {v0, v6, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    .line 301
    aget-object v6, v2, v3

    .line 303
    iget-object v7, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 304
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    .line 305
    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 306
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    .line 309
    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 310
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    .line 311
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    aget-object v6, v2, v3

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    iput-object v6, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 312
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    .line 313
    aget-object v6, v2, v3

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 314
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    .line 315
    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 316
    if-lez v6, :cond_2

    .line 317
    new-array v7, v6, [Landroid/content/pm/Signature;

    .line 318
    move v8, v1

    move v1, v3

    :goto_1
    if-ge v1, v6, :cond_1

    .line 319
    invoke-static {v0, v8, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    .line 320
    new-instance v9, Landroid/content/pm/Signature;

    aget-object v10, v2, v3

    invoke-direct {v9, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v1

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_1
    return-object v7

    .line 324
    :cond_2
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing signature on backed-up package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x2a

    const-string v2, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 330
    invoke-static {v5, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 325
    invoke-static {v0, v1, v5, v4, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 333
    goto :goto_2

    .line 334
    :cond_3
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but restore manifest claims "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 338
    const-string v1, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v0, v1, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x2b

    invoke-static {v1, v2, v5, v4, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 348
    :goto_2
    goto :goto_3

    .line 349
    :cond_4
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown restore manifest version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 353
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v2, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x2c

    invoke-static {v1, v2, v5, v4, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 372
    :catch_0
    move-exception p1

    .line 373
    const-string v0, "BackupManagerService"

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 363
    :catch_1
    move-exception v0

    .line 364
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corrupt restore manifest for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x2e

    const-string v2, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 370
    invoke-static {v5, v2, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 365
    invoke-static {v0, v1, v5, v4, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 374
    :goto_3
    nop

    .line 376
    :goto_4
    return-object v5

    .line 290
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected EOF in manifest"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore manifest too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 566
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 567
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    .line 568
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 573
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 574
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 575
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 576
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v5, v1, :cond_4

    .line 577
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    .line 578
    aget-object v2, v2, v3

    .line 579
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 582
    new-instance v2, Ljava/io/ByteArrayInputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 584
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 585
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    .line 586
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 587
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 588
    const/high16 v4, 0x10000

    if-gt v3, v4, :cond_1

    .line 592
    const v4, 0x1ffed01

    if-eq v1, v4, :cond_0

    .line 603
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring metadata blob "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1

    .line 597
    :cond_0
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 598
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 599
    nop

    .line 610
    :goto_1
    goto :goto_0

    .line 589
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Datum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " too big; corrupt? size="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_2
    goto :goto_2

    .line 612
    :cond_3
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metadata mismatch: package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but widget data for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 618
    const-string v0, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {p1, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 620
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x2f

    invoke-static {v0, v1, v7, v6, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 627
    :goto_2
    goto :goto_3

    .line 628
    :cond_4
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported metadata version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 631
    invoke-static {v7, v0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 633
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v1, v5

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    .line 635
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x30

    invoke-static {v0, v1, v7, v6, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 642
    :goto_3
    return-void

    .line 570
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected EOF in widget data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 104
    nop

    .line 106
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v1

    .line 107
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 110
    :try_start_0
    new-instance v1, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v1}, Lcom/android/server/backup/FileMetadata;-><init>()V

    .line 111
    const/16 v3, 0x7c

    const/16 v4, 0xc

    const/16 v5, 0x8

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 115
    const/16 v3, 0x88

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 119
    const/16 v3, 0x64

    invoke-static {v0, v3, v5, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 124
    const/16 v4, 0x159

    const/16 v5, 0x9b

    invoke-static {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 127
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2f

    if-lez v5, :cond_1

    .line 131
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 138
    :cond_1
    const/16 v3, 0x9c

    aget-byte v5, v0, v3

    .line 139
    const/16 v7, 0x78

    if-ne v5, v7, :cond_4

    .line 141
    invoke-direct {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5

    .line 142
    if-eqz v5, :cond_2

    .line 145
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v5

    .line 147
    :cond_2
    if-eqz v5, :cond_3

    .line 151
    aget-byte v5, v0, v3

    goto :goto_0

    .line 148
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad or missing pax header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_4
    :goto_0
    if-eqz v5, :cond_c

    const/16 v0, 0x30

    const/4 v2, 0x1

    if-eq v5, v0, :cond_6

    const/16 v0, 0x35

    if-ne v5, v0, :cond_5

    .line 159
    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 160
    iget-wide v7, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "BackupManagerService"

    const-string v3, "Directory entry with nonzero size in header"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-wide v9, v1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_1

    .line 174
    :cond_5
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tar entity type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_6
    iput v2, v1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 157
    nop

    .line 182
    :cond_7
    :goto_1
    const-string/jumbo v0, "shared/"

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "shared/"

    .line 183
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 182
    invoke-virtual {v0, v4, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 185
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v2, "shared/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 186
    const-string v0, "com.android.sharedstoragebackup"

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "shared"

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 189
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File in shared storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 191
    :cond_8
    const-string v0, "apps/"

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v5, "apps/"

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 191
    invoke-virtual {v0, v4, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "apps/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 199
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 200
    if-ltz v0, :cond_a

    .line 203
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 204
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 208
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_manifest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 211
    if-ltz v0, :cond_9

    .line 215
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 216
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_2

    .line 212
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal semantic path in non-manifest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal semantic path in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_b
    :goto_2
    goto :goto_3

    .line 171
    :cond_c
    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error in header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    throw v0

    .line 229
    :cond_d
    move-object v1, v2

    :goto_3
    return-object v1
.end method

.method public skipTarPadding(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    const-wide/16 v0, 0x200

    add-long/2addr p1, v0

    rem-long/2addr p1, v0

    .line 543
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 544
    long-to-int p1, p1

    rsub-int p1, p1, 0x200

    .line 548
    new-array p2, p1, [B

    .line 549
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 550
    iget-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_0

    .line 552
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected EOF in padding"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 555
    :cond_1
    :goto_0
    return-void
.end method