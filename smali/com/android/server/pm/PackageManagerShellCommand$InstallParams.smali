.class Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallParams"
.end annotation


# instance fields
.field installerPackageName:Ljava/lang/String;

.field sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerShellCommand$1;

    .line 2132
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>()V

    return-void
.end method
