.class Lcom/android/server/am/ActivityManagerService$6;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 3214
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3216
    const/16 v0, 0x40

    if-ne p1, v0, :cond_15

    if-eqz p3, :cond_15

    .line 3217
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 3219
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->runInBackgroundDisabled(I)V

    .line 3222
    :cond_15
    return-void
.end method
