.class Lcom/android/server/AppOpsService$3$1;
.super Landroid/os/AsyncTask;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$3;->scheduleAskOperation(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$3;

.field final synthetic val$code:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$3;IILjava/lang/String;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/android/server/AppOpsService$3$1;->this$1:Lcom/android/server/AppOpsService$3;

    iput p2, p0, Lcom/android/server/AppOpsService$3$1;->val$code:I

    iput p3, p0, Lcom/android/server/AppOpsService$3$1;->val$uid:I

    iput-object p4, p0, Lcom/android/server/AppOpsService$3$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 793
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/AppOpsService$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 795
    iget-object p1, p0, Lcom/android/server/AppOpsService$3$1;->this$1:Lcom/android/server/AppOpsService$3;

    iget-object p1, p1, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    iget v0, p0, Lcom/android/server/AppOpsService$3$1;->val$code:I

    iget v1, p0, Lcom/android/server/AppOpsService$3$1;->val$uid:I

    iget-object v2, p0, Lcom/android/server/AppOpsService$3$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    .line 796
    const/4 p1, 0x0

    return-object p1
.end method
