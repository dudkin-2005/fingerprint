.class Lcom/android/server/am/CompatModeDialog$2;
.super Ljava/lang/Object;
.source "CompatModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CompatModeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CompatModeDialog;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object p1, p1, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 69
    iget-object p2, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object p2, p2, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v1, v1, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    .line 70
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 69
    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 71
    iget-object p2, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {p2}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    .line 72
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p2
.end method
