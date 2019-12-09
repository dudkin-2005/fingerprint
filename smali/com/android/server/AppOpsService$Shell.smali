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
    .registers 1

    .line 2826
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .registers 5
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/AppOpsService;

    .line 2829
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2818
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2830
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 2831
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    .line 2833
    :try_start_a
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    sget-object v1, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 2835
    goto :goto_16

    .line 2834
    :catch_15
    move-exception v0

    .line 2836
    :goto_16
    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 2814
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4
    .param p0, "modeStr"    # Ljava/lang/String;
    .param p1, "err"    # Ljava/io/PrintWriter;

    .line 2867
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_15

    .line 2868
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2869
    return v0

    .line 2867
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 2873
    .end local v0    # "i":I
    :cond_15
    :try_start_15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1a

    return v0

    .line 2874
    :catch_1a
    move-exception v0

    .line 2876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    const/4 v0, -0x1

    return v0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 5
    .param p0, "op"    # Ljava/lang/String;
    .param p1, "err"    # Ljava/io/PrintWriter;

    .line 2851
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2852
    :catch_5
    move-exception v0

    .line 2855
    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 2856
    :catch_b
    move-exception v0

    .line 2859
    :try_start_c
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_10} :catch_11

    return v0

    .line 2860
    :catch_11
    move-exception v0

    .line 2861
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2840
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 2

    .line 2845
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2846
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 2847
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .registers 5
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2881
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2883
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2884
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "argument":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 2885
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2886
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_8

    .line 2888
    :cond_22
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 2889
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_8

    .line 2890
    :cond_29
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 2891
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2892
    nop

    .line 2896
    .end local v1    # "argument":Ljava/lang/String;
    :cond_30
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_3b

    .line 2897
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    return v1

    .line 2900
    :cond_3b
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2901
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v0, :cond_48

    .line 2902
    return v1

    .line 2904
    :cond_48
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 2905
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v0, :cond_59

    .line 2906
    return v1

    .line 2909
    :cond_57
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    .line 2911
    :cond_59
    const/4 v0, 0x0

    return v0
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .registers 14
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2915
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2916
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2917
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2918
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    if-eqz v2, :cond_30

    .line 2919
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2920
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_8

    .line 2922
    :cond_22
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 2923
    iput-object v3, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_8

    .line 2924
    :cond_29
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 2925
    iput-object v3, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2926
    nop

    .line 2930
    .end local v3    # "argument":Ljava/lang/String;
    :cond_30
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_3b

    .line 2931
    const-string v0, "Error: Package name not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    return v3

    .line 2933
    :cond_3b
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_47

    if-eqz p1, :cond_47

    .line 2934
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    return v3

    .line 2937
    :cond_47
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v2, :cond_58

    .line 2938
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2939
    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v2, :cond_5a

    .line 2940
    return v3

    .line 2943
    :cond_58
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2945
    :cond_5a
    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne v2, v0, :cond_64

    .line 2946
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2948
    :cond_64
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 2950
    :try_start_66
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_6e} :catch_6f

    .line 2952
    goto :goto_70

    .line 2951
    :catch_6f
    move-exception v0

    .line 2953
    :goto_70
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    const/4 v2, 0x0

    if-ne v0, v3, :cond_114

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_114

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_114

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v5, 0x2e

    .line 2954
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_114

    .line 2955
    move v0, v4

    .line 2956
    .local v0, "i":I
    :goto_93
    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v0, v5, :cond_b2

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_b2

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2957
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v6, :cond_b2

    .line 2958
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 2960
    :cond_b2
    if-le v0, v4, :cond_114

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_114

    .line 2961
    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2963
    .local v4, "userStr":Ljava/lang/String;
    :try_start_c2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2964
    .local v5, "user":I
    iget-object v8, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_cc} :catch_112

    .line 2965
    .local v8, "type":C
    add-int/lit8 v0, v0, 0x1

    .line 2966
    move v9, v0

    .line 2967
    .local v0, "startTypeVal":I
    .local v9, "i":I
    :goto_cf
    :try_start_cf
    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_ea

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_ea

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2968
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v6, :cond_ea

    .line 2969
    add-int/lit8 v9, v9, 0x1

    goto :goto_cf

    .line 2971
    :cond_ea
    if-le v9, v0, :cond_10f

    .line 2972
    iget-object v6, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_f2
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_f2} :catch_110

    .line 2974
    .local v6, "typeValStr":Ljava/lang/String;
    :try_start_f2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2975
    .local v7, "typeVal":I
    const/16 v10, 0x61

    if-ne v8, v10, :cond_103

    .line 2976
    add-int/lit16 v10, v7, 0x2710

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_10d

    .line 2978
    :cond_103
    const/16 v10, 0x73

    if-ne v8, v10, :cond_10d

    .line 2979
    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_10d} :catch_10e

    .line 2982
    .end local v7    # "typeVal":I
    :cond_10d
    :goto_10d
    goto :goto_10f

    .line 2981
    :catch_10e
    move-exception v7

    .line 2985
    .end local v0    # "startTypeVal":I
    .end local v5    # "user":I
    .end local v6    # "typeValStr":Ljava/lang/String;
    .end local v8    # "type":C
    :cond_10f
    :goto_10f
    goto :goto_114

    .line 2984
    :catch_110
    move-exception v0

    goto :goto_114

    .end local v9    # "i":I
    .local v0, "i":I
    :catch_112
    move-exception v5

    move v9, v0

    .line 2988
    .end local v0    # "i":I
    .end local v4    # "userStr":Ljava/lang/String;
    :cond_114
    :goto_114
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    if-eq v0, v3, :cond_11b

    .line 2989
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_15c

    .line 2991
    :cond_11b
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/AppOpsService;->access$400(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 2992
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_137

    .line 2993
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    iget v5, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-interface {v0, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 2996
    :cond_137
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_15c

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: No UID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    return v3

    .line 3001
    :cond_15c
    :goto_15c
    return v2
.end method
