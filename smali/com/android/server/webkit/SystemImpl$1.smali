.class Lcom/android/server/webkit/SystemImpl$1;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SystemImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/webkit/SystemImpl;->uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/SystemImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/webkit/SystemImpl;Landroid/content/Context;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/server/webkit/SystemImpl$1;->this$0:Lcom/android/server/webkit/SystemImpl;

    iput-object p2, p0, Lcom/android/server/webkit/SystemImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    .line 233
    iget-object p2, p0, Lcom/android/server/webkit/SystemImpl$1;->this$0:Lcom/android/server/webkit/SystemImpl;

    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/webkit/SystemImpl;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 234
    return-void
.end method
