.class final Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingTempWhitelist"
.end annotation


# instance fields
.field final duration:J

.field final tag:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->targetUid:I

    .line 1426
    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->duration:J

    .line 1427
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    .line 1428
    return-void
.end method


# virtual methods
.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 1431
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1432
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->targetUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1433
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->duration:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1434
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1435
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1436
    return-void
.end method
