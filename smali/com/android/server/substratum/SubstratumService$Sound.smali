.class Lcom/android/server/substratum/SubstratumService$Sound;
.super Ljava/lang/Object;
.source "SubstratumService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/substratum/SubstratumService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sound"
.end annotation


# instance fields
.field cachePath:Ljava/lang/String;

.field soundName:Ljava/lang/String;

.field soundPath:Ljava/lang/String;

.field themePath:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    .line 1052
    iput-object p2, p0, Lcom/android/server/substratum/SubstratumService$Sound;->cachePath:Ljava/lang/String;

    .line 1053
    iput-object p3, p0, Lcom/android/server/substratum/SubstratumService$Sound;->soundName:Ljava/lang/String;

    .line 1054
    iput-object p4, p0, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    .line 1055
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    .line 1059
    iput-object p2, p0, Lcom/android/server/substratum/SubstratumService$Sound;->cachePath:Ljava/lang/String;

    .line 1060
    iput-object p3, p0, Lcom/android/server/substratum/SubstratumService$Sound;->soundName:Ljava/lang/String;

    .line 1061
    iput-object p4, p0, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    .line 1062
    iput p5, p0, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    .line 1063
    return-void
.end method
