.class public Lcom/android/server/FontService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "FontService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FontService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field mService:Lcom/android/server/FontService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    .line 109
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 110
    const-string/jumbo p1, "vold.decrypt"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "trigger_restart_framework"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    :cond_0
    invoke-static {}, Lcom/android/server/FontService;->access$000()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/FontService;->access$100(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    invoke-static {}, Lcom/android/server/FontService;->access$200()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/FontService;->access$100(Ljava/io/File;)Z

    .line 115
    invoke-static {}, Lcom/android/server/FontService;->access$300()Z

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/android/server/FontService$Lifecycle;->mService:Lcom/android/server/FontService;

    invoke-static {p1}, Lcom/android/server/FontService;->access$400(Lcom/android/server/FontService;)V

    .line 120
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 103
    new-instance v0, Lcom/android/server/FontService;

    invoke-virtual {p0}, Lcom/android/server/FontService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/FontService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/FontService$Lifecycle;->mService:Lcom/android/server/FontService;

    .line 104
    const-string v0, "dufont"

    iget-object v1, p0, Lcom/android/server/FontService$Lifecycle;->mService:Lcom/android/server/FontService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FontService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 105
    return-void
.end method
