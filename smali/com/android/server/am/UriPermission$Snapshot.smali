.class public Lcom/android/server/am/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field final persistedCreateTime:J

.field final persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method private constructor <init>(Lcom/android/server/am/UriPermission;)V
    .registers 4
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iget v0, p1, Lcom/android/server/am/UriPermission;->targetUserId:I

    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->targetUserId:I

    .line 376
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    .line 377
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    .line 378
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 379
    iget v0, p1, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedModeFlags:I

    .line 380
    iget-wide v0, p1, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedCreateTime:J

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/UriPermission;
    .param p2, "x1"    # Lcom/android/server/am/UriPermission$1;

    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;)V

    return-void
.end method
