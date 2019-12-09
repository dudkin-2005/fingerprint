.class final Lcom/android/server/am/ActivityMetricsLogger$H;
.super Landroid/os/Handler;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Landroid/os/Looper;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$H;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 174
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$H;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ActivityMetricsLogger;->access$000(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 177
    :goto_0
    return-void
.end method
