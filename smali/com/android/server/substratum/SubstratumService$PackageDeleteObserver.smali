.class Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SubstratumService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/substratum/SubstratumService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/substratum/SubstratumService;


# direct methods
.method private constructor <init>(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/substratum/SubstratumService;Lcom/android/server/substratum/SubstratumService$1;)V
    .locals 0

    .line 1093
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;-><init>(Lcom/android/server/substratum/SubstratumService;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    .line 1096
    iget-object p2, p0, Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remover - successfully removed \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 1097
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$902(Lcom/android/server/substratum/SubstratumService;Z)Z

    .line 1098
    return-void
.end method
