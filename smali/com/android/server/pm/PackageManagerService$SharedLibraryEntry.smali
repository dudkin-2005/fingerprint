.class public final Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field public final apk:Ljava/lang/String;

.field public final info:Landroid/content/pm/SharedLibraryInfo;

.field public final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;J)V
    .locals 9

    move-object v0, p0

    .line 919
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 920
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->path:Ljava/lang/String;

    .line 921
    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->apk:Ljava/lang/String;

    .line 922
    new-instance v8, Landroid/content/pm/SharedLibraryInfo;

    new-instance v6, Landroid/content/pm/VersionedPackage;

    move-object/from16 v1, p7

    move-wide/from16 v2, p8

    invoke-direct {v6, v1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->info:Landroid/content/pm/SharedLibraryInfo;

    .line 924
    return-void
.end method
