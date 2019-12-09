.class Lcom/android/server/AppOpsService$1$1;
.super Landroid/os/AsyncTask;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$1;->run()V
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
.field final synthetic this$1:Lcom/android/server/AppOpsService$1;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$1;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/server/AppOpsService$1$1;->this$1:Lcom/android/server/AppOpsService$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/AppOpsService$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/android/server/AppOpsService$1$1;->this$1:Lcom/android/server/AppOpsService$1;

    iget-object p1, p1, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    invoke-virtual {p1}, Lcom/android/server/AppOpsService;->writeState()V

    .line 211
    const/4 p1, 0x0

    return-object p1
.end method
