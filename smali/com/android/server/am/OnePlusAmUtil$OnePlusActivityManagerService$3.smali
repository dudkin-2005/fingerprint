.class Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$stopReason:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    .line 361
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;->val$stopReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;->val$stopReason:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    .line 364
    return-void
.end method
