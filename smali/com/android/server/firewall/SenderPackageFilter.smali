.class public Lcom/android/server/firewall/SenderPackageFilter;
.super Ljava/lang/Object;
.source "SenderPackageFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/android/server/firewall/SenderPackageFilter$1;

    const-string/jumbo v1, "sender-package"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPackageFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 44
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    .line 46
    nop

    .line 50
    const/4 p2, 0x0

    const/4 p3, -0x1

    :try_start_0
    iget-object p5, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    const/high16 p6, 0x400000

    invoke-interface {p1, p5, p6, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 56
    move p1, p3

    :goto_0
    if-ne p1, p3, :cond_0

    .line 57
    return p2

    .line 60
    :cond_0
    invoke-static {p1, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    return p1
.end method
