.class Lcom/android/server/usage/UserUsageStatsService$5;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$pw:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$5;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-object p2, p0, Lcom/android/server/usage/UserUsageStatsService$5;->val$pw:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkin(Lcom/android/server/usage/IntervalStats;)Z
    .locals 6

    .line 561
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$5;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService$5;->val$pw:Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V

    .line 562
    const/4 p1, 0x1

    return p1
.end method