.class Lcom/android/server/companion/CompanionDeviceManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPackageRemoved$0(Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)Z
    .locals 0

    .line 143
    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$onPackageRemoved$1(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .line 142
    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$1$IwZz9SPheLuA45R-qkZX_v1sHV4;

    invoke-direct {v0, p0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$1$IwZz9SPheLuA45R-qkZX_v1sHV4;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->getChangingUserId()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V

    .line 153
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .line 141
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$1$EelUlD0Ldboon98oq6H5kDCPW9I;

    invoke-direct {v0, p1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$1$EelUlD0Ldboon98oq6H5kDCPW9I;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->getChangingUserId()I

    move-result p1

    .line 141
    invoke-static {p2, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$000(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V

    .line 145
    return-void
.end method
