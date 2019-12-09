.class Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
.super Ljava/lang/Object;
.source "OemPackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OemPackageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeletedPkgInfos"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field versionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->packageName:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->versionCode:I

    .line 69
    return-void
.end method
