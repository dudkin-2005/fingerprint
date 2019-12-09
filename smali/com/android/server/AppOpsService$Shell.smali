.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# static fields
.field static final sBinder:Landroid/os/Binder;


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mToken:Landroid/os/IBinder;

.field mode:I

.field modeStr:Ljava/lang/String;

.field nonpackageUid:I

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2807
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .locals 1

    .line 2810
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2799
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2811
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 2812
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    .line 2814
    :try_start_0
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    sget-object p2, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    invoke-interface {p1, p2}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    goto :goto_0

    .line 2815
    :catch_0
    move-exception p1

    .line 2817
    :goto_0
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 0

    .line 2795
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 2

    .line 2848
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2849
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2850
    return v0

    .line 2848
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2854
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2855
    :catch_0
    move-exception v0

    .line 2857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    const/4 p0, -0x1

    return p0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 2

    .line 2832
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2833
    :catch_0
    move-exception v0

    .line 2836
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 2837
    :catch_1
    move-exception v0

    .line 2840
    :try_start_2
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    .line 2841
    :catch_2
    move-exception p0

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 0

    .line 2821
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .locals 1

    .line 2826
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2827
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 2828
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2862
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2864
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2865
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2866
    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2867
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 2869
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2870
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    .line 2871
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2872
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2873
    nop

    .line 2877
    :cond_3
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_4

    .line 2878
    const-string p1, "Error: Operation not specified."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    return v1

    .line 2881
    :cond_4
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2882
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v0, :cond_5

    .line 2883
    return v1

    .line 2885
    :cond_5
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2886
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez p1, :cond_7

    .line 2887
    return v1

    .line 2890
    :cond_6
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    .line 2892
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2896
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2897
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2898
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2899
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2900
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2901
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 2903
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 2904
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2905
    :cond_2
    iget-object v3, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2906
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2907
    nop

    .line 2911
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_4

    .line 2912
    const-string p1, "Error: Package name not specified."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    return v3

    .line 2914
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    .line 2915
    const-string p1, "Error: Operation not specified."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    return v3

    .line 2918
    :cond_5
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 2919
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2920
    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez p1, :cond_7

    .line 2921
    return v3

    .line 2924
    :cond_6
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2926
    :cond_7
    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne p1, v0, :cond_8

    .line 2927
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2929
    :cond_8
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 2931
    :try_start_0
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2933
    goto :goto_1

    .line 2932
    :catch_0
    move-exception p1

    .line 2934
    :goto_1
    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    const/4 v0, 0x0

    if-ne p1, v3, :cond_e

    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_e

    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x75

    if-ne p1, v4, :cond_e

    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v4, 0x2e

    .line 2935
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_e

    .line 2936
    nop

    .line 2937
    move p1, v2

    :goto_2
    iget-object v4, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ge p1, v4, :cond_9

    iget-object v4, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_9

    iget-object v4, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2938
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_9

    .line 2939
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2941
    :cond_9
    if-le p1, v2, :cond_e

    iget-object v4, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_e

    .line 2942
    iget-object v4, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2944
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2945
    iget-object v7, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2946
    add-int/2addr p1, v2

    .line 2947
    nop

    .line 2948
    move v2, p1

    :goto_3
    iget-object v8, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_a

    iget-object v8, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_a

    iget-object v8, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2949
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v5, :cond_a

    .line 2950
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2952
    :cond_a
    if-le v2, p1, :cond_d

    .line 2953
    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2955
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2956
    const/16 v2, 0x61

    if-ne v7, v2, :cond_b

    .line 2957
    add-int/lit16 p1, p1, 0x2710

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_4

    .line 2959
    :cond_b
    const/16 v2, 0x73

    if-ne v7, v2, :cond_c

    .line 2960
    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2963
    :cond_c
    :goto_4
    goto :goto_5

    .line 2962
    :catch_1
    move-exception p1

    .line 2966
    :cond_d
    :goto_5
    goto :goto_6

    .line 2965
    :catch_2
    move-exception p1

    .line 2969
    :cond_e
    :goto_6
    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    if-eq p1, v3, :cond_f

    .line 2970
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_7

    .line 2972
    :cond_f
    iget-object p1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/AppOpsService;->access$900(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 2973
    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez p1, :cond_10

    .line 2974
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v2, 0x2000

    iget v4, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-interface {p1, v1, v2, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 2977
    :cond_10
    iget p1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez p1, :cond_11

    .line 2978
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: No UID for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    return v3

    .line 2982
    :cond_11
    :goto_7
    return v0
.end method
