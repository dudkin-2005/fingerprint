.class Lcom/android/server/am/ActivityManagerService$25;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->reportMemUsage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/ProcessMemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 20103
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .locals 6

    .line 20105
    iget v0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 20106
    iget p1, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget p2, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ge p1, p2, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 20108
    :cond_1
    iget-wide v0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 20109
    iget-wide v0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide p1, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 20111
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20103
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$25;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    move-result p1

    return p1
.end method
