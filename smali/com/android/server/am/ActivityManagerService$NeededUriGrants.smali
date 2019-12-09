.class Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
.super Ljava/util/ArrayList;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeededUriGrants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/am/ActivityManagerService$GrantUri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 10040
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10041
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 10042
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetUid:I

    .line 10043
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->flags:I

    .line 10044
    return-void
.end method


# virtual methods
.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    .line 10047
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 10048
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetPkg:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10049
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetUid:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10050
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->flags:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10052
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->size()I

    move-result v0

    .line 10053
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10054
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$GrantUri;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityManagerService$GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 10053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10056
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10057
    return-void
.end method
