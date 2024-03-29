.class public Lcom/android/server/secrecy/policy/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDownloadDate:Ljava/lang/String;

.field private mCurrentDownloadInternal:Z

.field private mCurrentDownloadStatus:Ljava/lang/String;

.field private mCurrentDownloadTime:Ljava/lang/String;

.field private mCurrentDownloadTimeInMillis:J

.field private mLastDownloadTimeInMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "SecrecyService.FlashInfo"

    sput-object v0, Lcom/android/server/secrecy/policy/DownloadInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDownloadInternal   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDownloadStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDownloadTimeInMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTimeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastDownloadTimeInMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public getCurrentDownloadTimeInMills()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTimeInMillis:J

    return-wide v0
.end method

.method public getLastDownloadTimeInMills()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    return-wide v0
.end method

.method public isCurrentDownloadInternal()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadInternal:Z

    return v0
.end method

.method public readDownloadInfo()V
    .registers 3

    .line 25
    invoke-static {}, Lcom/android/server/secrecy/policy/util/Utils;->getDownloadStatusString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/android/server/secrecy/policy/util/Utils;->isFlashedInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadInternal:Z

    .line 27
    iget-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/policy/util/Utils;->getDownloadDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadDate:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/policy/util/Utils;->getDownloadTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTime:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTime:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/Utils;->getFlashIimeInMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTimeInMillis:J

    .line 30
    return-void
.end method

.method public setLastDownloadTimeInMills(Ljava/lang/String;)V
    .registers 6
    .param p1, "lastDownloadTimeInMillis"    # Ljava/lang/String;

    .line 61
    if-eqz p1, :cond_8

    .line 62
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    .line 64
    :cond_8
    sget-object v0, Lcom/android/server/secrecy/policy/DownloadInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastDownloadTimeInMills, mLastDownloadTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastDownloadTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
