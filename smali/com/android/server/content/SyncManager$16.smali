.class Lcom/android/server/content/SyncManager$16;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/content/SyncManager$AuthoritySyncStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 2493
    iput-object p1, p0, Lcom/android/server/content/SyncManager$16;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I
    .locals 2

    .line 2497
    iget v0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    iget v1, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2498
    if-nez v0, :cond_0

    .line 2499
    iget-wide v0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    iget-wide p1, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2501
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2493
    check-cast p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    check-cast p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$16;->compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I

    move-result p1

    return p1
.end method
