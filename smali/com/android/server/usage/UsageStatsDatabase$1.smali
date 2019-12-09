.class Lcom/android/server/usage/UsageStatsDatabase$1;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsDatabase;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase$1;->this$0:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 200
    const-string p1, ".bak"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
