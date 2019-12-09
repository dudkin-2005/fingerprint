.class final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;,
        Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    }
.end annotation


# static fields
.field private static final CMDTIMEOUT:I = 0x2710

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field private static final START_MMI_TEST_INTENT:Ljava/lang/String; = "android.intent.action.START_OPPO_AT_SERVER"

.field private static final START_MMI_TEST_INTENT_NEW:Ljava/lang/String; = "oneplus.intent.action.START_OPPO_AT_SERVER"

.field private static final STOP_MMI_TEST_INTENT:Ljava/lang/String; = "android.intent.action.STOP_OPPO_AT_SERVER"

.field private static final STOP_MMI_TEST_INTENT_NEW:Ljava/lang/String; = "oneplus.intent.action.STOP_OPPO_AT_SERVER"

.field private static final mEngineerAction:Ljava/lang/String; = "com.oem.engineermode.EngineerModeMain"

.field private static final mOPPOEngineerAction:Ljava/lang/String; = "com.oppo.engineermode.EngineerModeMain"


# instance fields
.field private mActivityType:I

.field private mAgent:Ljava/lang/String;

.field private mAttachAgentDuringBind:Z

.field private mAutoStop:Z

.field private mDisplayId:I

.field final mDumping:Z

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field private mIsLockTask:Z

.field private mIsTaskOverlay:Z

.field final mPm:Landroid/content/pm/IPackageManager;

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mStreaming:Z

.field private mTaskId:I

.field private mUserId:I

.field private mWaitOption:Z

.field private mWindowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "dumping"    # Z

    .line 147
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 121
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 124
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 148
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 149
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 150
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 151
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    .line 152
    return-void
.end method

.method static synthetic access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 107
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    return p1
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .registers 13
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "surfaceSize"    # [I
    .param p4, "contextAttribs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1926
    .local p5, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1927
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 1929
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_b

    .line 1930
    return-void

    .line 1934
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 1935
    .local v1, "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_17

    .line 1936
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1937
    return-void

    .line 1941
    :cond_17
    invoke-interface {p0, p1, v1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1944
    const/16 v2, 0x1f03

    invoke-static {v2}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 1945
    .local v2, "extensionList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1948
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    .line 1949
    .local v6, "extension":Ljava/lang/String;
    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1948
    .end local v6    # "extension":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1954
    :cond_38
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1955
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1956
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1957
    return-void
.end method

.method private static argToBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 1717
    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1718
    const/4 v0, 0x0

    return-object v0

    .line 1720
    :cond_a
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private bucketNameToBucketValue(Ljava/lang/String;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 2225
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2226
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2227
    const/16 v1, 0xa

    return v1

    .line 2228
    :cond_f
    const-string/jumbo v1, "wo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2229
    const/16 v1, 0x14

    return v1

    .line 2230
    :cond_1b
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2231
    const/16 v1, 0x1e

    return v1

    .line 2232
    :cond_26
    const-string/jumbo v1, "ra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2233
    const/16 v1, 0x28

    return v1

    .line 2234
    :cond_32
    const-string/jumbo v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2235
    const/16 v1, 0x32

    return v1

    .line 2238
    :cond_3e
    :try_start_3e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_42} :catch_43

    .line 2239
    .local v1, "bucket":I
    return v1

    .line 2240
    .end local v1    # "bucket":I
    :catch_43
    move-exception v1

    .line 2241
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;Z)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "dumping"    # Z

    .line 2859
    if-eqz p1, :cond_9a

    .line 2860
    const-string v0, "Activity manager dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    const-string v0, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    const-string v0, "  WHAT may be one of:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    const-string v0, "    a[ctivities]: activity stack state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    const-string v0, "    r[recents]: recent activities state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    const-string v0, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    const-string v0, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    const-string v0, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    const-string v0, "    p[rocesses] [PACKAGE_NAME]: process state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    const-string v0, "    o[om]: out of memory management"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    const-string v0, "    perm[issions]: URI permission grant state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    const-string v0, "    prov[iders] [COMP_SPEC ...]: content provider state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    const-string v0, "    provider [COMP_SPEC]: provider client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    const-string v0, "    s[ervices] [COMP_SPEC ...]: service state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    const-string v0, "    as[sociations]: tracked app associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    const-string v0, "    settings: currently applied config settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    const-string v0, "    service [COMP_SPEC]: service client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    const-string v0, "    package [PACKAGE_NAME]: all state related to given package"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    const-string v0, "    all: dump all activities"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    const-string v0, "    top: dump the top activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    const-string v0, "  WHAT may also be a COMP_SPEC to dump activities."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    const-string v0, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    const-string v0, "    a partial substring in a component name, a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2883
    const-string v0, "    hex object identifier."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    const-string v0, "  -a: include all available server state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2885
    const-string v0, "  -c: include client state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    const-string v0, "  -p: limit output to given package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    const-string v0, "  --checkin: output checkin format, resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    const-string v0, "  --C: output checkin format, not resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    const-string v0, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_539

    .line 2891
    :cond_9a
    const-string v0, "Activity manager (activity) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2892
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2893
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2894
    const-string v0, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    const-string v0, "          [--sampling INTERVAL] [--streaming] [-R COUNT] [-S]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    const-string v0, "          [--track-allocation] [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    const-string v0, "      Start an Activity.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    const-string v0, "      -D: enable debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    const-string v0, "      -N: enable native debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    const-string v0, "      -W: wait for launch to complete"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    const-string v0, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2902
    const-string v0, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    const-string v0, "          between samples (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    const-string v0, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    const-string v0, "          (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    const-string v0, "      -P <FILE>: like above, but profiling stops when app goes idle"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    const-string v0, "      --attach-agent <agent>: attach the given agent before binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    const-string v0, "      --attach-agent-bind <agent>: attach the given agent during binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2909
    const-string v0, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    const-string v0, "          the top activity will be finished."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    const-string v0, "      -S: force stop the target app before starting the activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    const-string v0, "      --track-allocation: enable tracking of object allocations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    const-string v0, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    const-string v0, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    const-string v0, "  start-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    const-string v0, "      Start a Service.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2919
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    const-string v0, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    const-string v0, "      Start a foreground Service.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2924
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    const-string v0, "  stop-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    const-string v0, "      Stop a Service.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2927
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    const-string v0, "  broadcast [--user <USER_ID> | all | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    const-string v0, "      Send a broadcast Intent.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    const-string v0, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    const-string v0, "          specified then send to all users."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    const-string v0, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    const-string v0, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    const-string v0, "          [--user <USER_ID> | current] [--no-hidden-api-checks]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    const-string v0, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    const-string v0, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    const-string v0, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2939
    const-string v0, "      is only one instrumentation.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    const-string v0, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    const-string v0, "          [-e perf true] to generate raw output for performance measurements."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const-string v0, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    const-string v0, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    const-string v0, "      -p <FILE>: write profiling data to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const-string v0, "      -m: Write output as protobuf to stdout (machine readable)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    const-string v0, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2947
    const-string v0, "          readable). If path is not specified, default directory and file name will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    const-string v0, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    const-string v0, "      -w: wait for instrumentation to finish before returning.  Required for"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    const-string v0, "          test runners."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    const-string v0, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    const-string v0, "          current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    const-string v0, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    const-string v0, "      --no-window-animation: turn off window animations while running."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    const-string v0, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2956
    const-string v0, "          This assumes that the process supports the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2957
    const-string v0, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    const-string v0, "      Trace IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    const-string v0, "      start: start tracing IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    const-string v0, "      stop: stop tracing IPC transactions and dump the results to file."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    const-string v0, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2962
    const-string v0, "  profile [start|stop] [--user <USER_ID> current] [--sampling INTERVAL]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    const-string v0, "          [--streaming] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2964
    const-string v0, "      Start and stop profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    const-string v0, "        may be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    const-string v0, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2967
    const-string v0, "          specify user of process to profile; uses current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    const-string v0, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2969
    const-string v0, "          between samples"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2970
    const-string v0, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    const-string v0, "  dumpheap [--user <USER_ID> current] [-n] [-g] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    const-string v0, "      Dump the heap of a process.  The given <PROCESS> argument may"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2973
    const-string v0, "        be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    const-string v0, "      -n: dump native heap instead of managed heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2975
    const-string v0, "      -g: force GC before dumping the heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    const-string v0, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    const-string v0, "          specify user of process to dump; uses current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2978
    const-string v0, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    const-string v0, "      Set application <PACKAGE> to debug.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    const-string v0, "      -w: wait for debugger when application starts"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    const-string v0, "      --persistent: retain this value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    const-string v0, "  clear-debug-app"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    const-string v0, "      Clear the previously set-debug-app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    const-string v0, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    const-string v0, "      Start monitoring pss size of <PROCESS>, if it is at or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    const-string v0, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    const-string v0, "  clear-watch-heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    const-string v0, "      Clear the previously set-watch-heap."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    const-string v0, "  bug-report [--progress | --telephony]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    const-string v0, "      Request bug report generation; will launch a notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    const-string v0, "        when done to select where it should be delivered. Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    const-string v0, "     --progress: will launch a notification right away to show its progress."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2993
    const-string v0, "     --telephony: will dump only telephony sections."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    const-string v0, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    const-string v0, "      Completely stop the given application package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    const-string v0, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    const-string v0, "      Induce a VM crash in the specified package or process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const-string v0, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    const-string v0, "      Kill all background processes associated with the given application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v0, "  kill-all"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    const-string v0, "      Kill all processes that are safe to kill (cached, etc)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    const-string v0, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    const-string v0, "      If the given application\'s uid is in the background and waiting to"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const-string v0, "      become idle (not allowing background services), do that now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string v0, "  monitor [--gdb <port>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    const-string v0, "      Start monitoring for crashes or ANRs."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v0, "      --gdb: start gdbserv on the given port at crash/ANR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    const-string v0, "  watch-uids [--oom <uid>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    const-string v0, "      Start watching for and reporting uid state changes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    const-string v0, "      --oom: specify a uid for which to report detailed change messages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string v0, "  hang [--allow-restart]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    const-string v0, "      Hang the system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    const-string v0, "      --allow-restart: allow watchdog to perform normal system restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    const-string v0, "  restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    const-string v0, "      Restart the user-space system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    const-string v0, "  idle-maintenance"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    const-string v0, "      Perform idle maintenance now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    const-string v0, "  screen-compat [on|off] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    const-string v0, "      Control screen compatibility mode of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    const-string v0, "  package-importance <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    const-string v0, "      Print current importance of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    const-string v0, "  to-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    const-string v0, "      Print the given Intent specification as a URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    const-string v0, "  to-intent-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    const-string v0, "      Print the given Intent specification as an intent: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const-string v0, "  to-app-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    const-string v0, "      Print the given Intent specification as an android-app: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    const-string v0, "  switch-user <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    const-string v0, "      Switch to put USER_ID in the foreground, starting"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    const-string v0, "      execution of that user if it is currently stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    const-string v0, "  get-current-user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    const-string v0, "      Returns id of the current foreground user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    const-string v0, "  start-user <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const-string v0, "      Start USER_ID in background if it is currently stopped;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    const-string v0, "      use switch-user if you want to start the user in foreground"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    const-string v0, "  unlock-user <USER_ID> [TOKEN_HEX]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    const-string v0, "      Attempt to unlock the given user using the given authorization token."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    const-string v0, "  stop-user [-w] [-f] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const-string v0, "      Stop execution of USER_ID, not allowing it to run any"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    const-string v0, "      code until a later explicit start or switch to it."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const-string v0, "      -w: wait for stop-user to complete."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    const-string v0, "      -f: force stop even if there are related users that cannot be stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string v0, "  is-user-stopped <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    const-string v0, "      Returns whether <USER_ID> has been stopped or not."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string v0, "  get-started-user-state <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const-string v0, "      Gets the current state of the given started user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string v0, "  track-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string v0, "      Enable association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string v0, "  untrack-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string v0, "      Disable and clear association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string v0, "  get-uid-state <UID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string v0, "      Gets the process state of an app given its <UID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string v0, "  attach-agent <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string v0, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    const-string v0, "  get-config [--days N] [--device] [--proto]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string v0, "      Retrieve the configuration and any recent configurations of the device."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const-string v0, "      --days: also return last N days of configurations that have been seen."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string v0, "      --device: also output global device configuration info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const-string v0, "      --proto: return result as a proto; does not include --days info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    const-string v0, "  supports-multiwindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    const-string v0, "      Returns true if the device supports multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string v0, "  supports-split-screen-multi-window"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string v0, "      Returns true if the device supports split screen multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string v0, "  suppress-resize-config-changes <true|false>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    const-string v0, "      Suppresses configuration changes due to user resizing an activity/task."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string v0, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    const-string v0, "      Sets the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string v0, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string v0, "      Returns the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string v0, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v0, "      Puts an app in the standby bucket."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v0, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v0, "      Returns the standby bucket of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v0, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v0, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v0, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v0, "  display [COMMAND] [...]: sub-commands for operating on displays."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string v0, "       move-stack <STACK_ID> <DISPLAY_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v0, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string v0, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string v0, "       start <DISPLAY_ID> <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string v0, "           Start a new activity on <DISPLAY_ID> using <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const-string v0, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string v0, "           Move <TASK_ID> from its current stack to the top (true) or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string v0, "           bottom (false) of <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string v0, "       resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    const-string v0, "           Change <STACK_ID> size and position to <LEFT,TOP,RIGHT,BOTTOM>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    const-string v0, "       resize-animated <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    const-string v0, "           Same as resize, but allow animation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    const-string v0, "       resize-docked-stack <LEFT,TOP,RIGHT,BOTTOM> [<TASK_LEFT,TASK_TOP,TASK_RIGHT,TASK_BOTTOM>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    const-string v0, "           Change docked stack to <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    const-string v0, "           and supplying temporary different task bounds indicated by"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    const-string v0, "           <TASK_LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    const-string v0, "       move-top-activity-to-pinned-stack: <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    const-string v0, "           Moves the top activity from"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    const-string v0, "           <STACK_ID> to the pinned stack using <LEFT,TOP,RIGHT,BOTTOM> for the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    const-string v0, "           bounds of the pinned stack."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string v0, "       positiontask <TASK_ID> <STACK_ID> <POSITION>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    const-string v0, "           Place <TASK_ID> in <STACK_ID> at <POSITION>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    const-string v0, "       list"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    const-string v0, "           List all of the activity stacks and their sizes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    const-string v0, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    const-string v0, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    const-string v0, "       remove <STACK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    const-string v0, "           Remove stack <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    const-string v0, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    const-string v0, "       lock <TASK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const-string v0, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    const-string v0, "       lock stop"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    const-string v0, "           End the current task lock."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    const-string v0, "       resizeable <TASK_ID> [0|1|2|3]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    const-string v0, "           Change resizeable mode of <TASK_ID> to one of the following:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    const-string v0, "           0: unresizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string v0, "           1: crop_windows"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    const-string v0, "           2: resizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    const-string v0, "           3: resizeable_and_pipable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    const-string v0, "       resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    const-string v0, "           Makes sure <TASK_ID> is in a stack with the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const-string v0, "           Forces the task to be resizeable and creates a stack if no existing stack"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-string v0, "           has the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    const-string v0, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const-string v0, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    const-string v0, "      without restarting any processes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    const-string v0, "  write"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    const-string v0, "      Write all pending state to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3127
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3129
    :goto_539
    return-void
.end method

.method private getBounds()Landroid/graphics/Rect;
    .registers 13

    .line 2434
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2435
    .local v0, "leftStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2436
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2437
    .local v2, "topStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2438
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2439
    .local v4, "rightStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2440
    .local v5, "right":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 2441
    .local v6, "bottomStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2442
    .local v7, "bottom":I
    const/4 v8, 0x0

    if-gez v1, :cond_3c

    .line 2443
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad left arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2444
    return-object v8

    .line 2446
    :cond_3c
    if-gez v3, :cond_57

    .line 2447
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad top arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    return-object v8

    .line 2450
    :cond_57
    if-gtz v5, :cond_72

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad right arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2452
    return-object v8

    .line 2454
    :cond_72
    if-gtz v7, :cond_8d

    .line 2455
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad bottom arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2456
    return-object v8

    .line 2458
    :cond_8d
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method private getRecentConfigurations(I)Ljava/util/List;
    .registers 16
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .line 1864
    const-string/jumbo v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 1866
    .local v0, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1867
    .local v8, "now":J
    mul-int/lit8 v1, p1, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    sub-long v3, v8, v1

    .line 1870
    .local v3, "nDaysAgo":J
    const/4 v2, 0x4

    :try_start_1b
    const-string v7, "com.android.shell"

    move-object v1, v0

    move-wide v5, v8

    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1872
    .local v1, "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-nez v1, :cond_2a

    .line 1873
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1876
    :cond_2a
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1877
    .local v2, "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 1878
    .local v5, "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1879
    .local v6, "configStatsListSize":I
    const/4 v7, 0x0

    .line 1879
    .local v7, "i":I
    :goto_38
    if-ge v7, v6, :cond_74

    .line 1880
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/ConfigurationStats;

    .line 1881
    .local v10, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 1882
    .local v11, "indexOfKey":I
    if-gez v11, :cond_5a

    .line 1883
    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 1885
    :cond_5a
    nop

    .line 1886
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1885
    invoke-virtual {v2, v11, v12}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1879
    .end local v10    # "stats":Landroid/app/usage/ConfigurationStats;
    .end local v11    # "indexOfKey":I
    :goto_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 1890
    .end local v7    # "i":I
    :cond_74
    new-instance v7, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v7, p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V

    .line 1897
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1898
    .local v10, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1899
    invoke-static {v10, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_8c} :catch_8d

    .line 1900
    return-object v10

    .line 1902
    .end local v1    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .end local v2    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    .end local v5    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .end local v6    # "configStatsListSize":I
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    .end local v10    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    :catch_8d
    move-exception v1

    .line 1903
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2840
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2841
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_f

    .line 2842
    const-string v1, "Error: Activity manager has no configuration"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const/4 v1, 0x0

    return-object v1

    .line 2846
    :cond_f
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2847
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2849
    new-instance v2, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v2
.end method

.method public static synthetic lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$writeDeviceConfig$0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 4
    .param p0, "o1"    # Landroid/content/pm/FeatureInfo;
    .param p1, "o2"    # Landroid/content/pm/FeatureInfo;

    .line 2116
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_16

    :cond_8
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_16

    :cond_e
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_16
    return v0
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .registers 4
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 294
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 295
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 296
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 298
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 299
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 301
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 302
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 303
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 304
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 305
    iput v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 306
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 307
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 309
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static removeWallOption()V
    .registers 3

    .line 786
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_21

    const-string v1, "-Xprofile:wallclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 788
    const-string v1, "-Xprofile:wallclock"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 790
    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_21
    return-void
.end method

.method private runProfile(Ljava/io/PrintWriter;)I
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 796
    .local v2, "err":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 797
    .local v0, "profileFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 798
    .local v3, "start":Z
    const/4 v4, 0x0

    .line 799
    .local v4, "wall":Z
    const/4 v5, -0x2

    .line 800
    .local v5, "userId":I
    const/4 v12, 0x0

    .line 801
    .local v12, "profileType":I
    const/4 v13, 0x0

    iput v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 802
    iput-boolean v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 804
    const/4 v6, 0x0

    .line 806
    .local v6, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, "cmd":Ljava/lang/String;
    const-string/jumbo v8, "start"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v14, -0x1

    if-eqz v8, :cond_81

    .line 809
    const/4 v3, 0x1

    .line 811
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 811
    .local v9, "opt":Ljava/lang/String;
    if-eqz v8, :cond_76

    .line 812
    const-string v8, "--user"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_20

    .line 814
    :cond_38
    const-string v8, "--wall"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 815
    const/4 v4, 0x1

    goto :goto_20

    .line 816
    :cond_42
    const-string v8, "--streaming"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 817
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_20

    .line 818
    :cond_4e
    const-string v8, "--sampling"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_20

    .line 821
    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Unknown option: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    return v14

    .line 825
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 826
    .end local v9    # "opt":Ljava/lang/String;
    nop

    .line 848
    .end local v6    # "process":Ljava/lang/String;
    .end local v7    # "cmd":Ljava/lang/String;
    .local v3, "process":Ljava/lang/String;
    .local v4, "cmd":Ljava/lang/String;
    .local v15, "start":Z
    .local v16, "wall":Z
    :goto_7b
    move v15, v3

    move/from16 v16, v4

    move-object v3, v6

    move-object v4, v7

    goto :goto_d6

    .line 826
    .end local v15    # "start":Z
    .end local v16    # "wall":Z
    .local v3, "start":Z
    .local v4, "wall":Z
    .restart local v6    # "process":Ljava/lang/String;
    .restart local v7    # "cmd":Ljava/lang/String;
    :cond_81
    const-string/jumbo v8, "stop"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 828
    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 828
    .restart local v9    # "opt":Ljava/lang/String;
    if-eqz v8, :cond_b7

    .line 829
    const-string v8, "--user"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_8a

    .line 832
    :cond_a2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Unknown option: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    return v14

    .line 836
    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 837
    .end local v9    # "opt":Ljava/lang/String;
    goto :goto_7b

    .line 839
    :cond_bc
    move-object v6, v7

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 841
    const-string/jumbo v8, "start"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 842
    const/4 v3, 0x1

    goto :goto_7b

    .line 843
    :cond_cc
    const-string/jumbo v8, "stop"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15f

    goto :goto_7b

    .line 848
    .end local v6    # "process":Ljava/lang/String;
    .end local v7    # "cmd":Ljava/lang/String;
    .local v3, "process":Ljava/lang/String;
    .local v4, "cmd":Ljava/lang/String;
    .restart local v15    # "start":Z
    .restart local v16    # "wall":Z
    :goto_d6
    if-ne v5, v14, :cond_de

    .line 849
    const-string v6, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    return v14

    .line 853
    :cond_de
    const/4 v6, 0x0

    .line 854
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .line 856
    .local v7, "profilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v15, :cond_10a

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 858
    const-string/jumbo v8, "w"

    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 859
    if-nez v6, :cond_f0

    .line 860
    return v14

    .line 862
    :cond_f0
    new-instance v8, Landroid/app/ProfilerInfo;

    iget v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    const/16 v21, 0x0

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v9

    move/from16 v22, v10

    invoke-direct/range {v17 .. v24}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v7, v8

    .line 867
    .end local v0    # "profileFile":Ljava/lang/String;
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v17, "profileFile":Ljava/lang/String;
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    .local v19, "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_10a
    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    if-eqz v16, :cond_135

    .line 869
    :try_start_112
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_122

    const-string v6, "-Xprofile:wallclock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_132

    .line 871
    :cond_122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -Xprofile:wallclock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .end local v0    # "props":Ljava/lang/String;
    :cond_132
    goto :goto_135

    .line 883
    :catchall_133
    move-exception v0

    goto :goto_15e

    .line 877
    :cond_135
    :goto_135
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v3

    move v8, v5

    move v9, v15

    move-object/from16 v10, v19

    move v11, v12

    invoke-interface/range {v6 .. v11}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 878
    const/16 v16, 0x0

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROFILE FAILED on process "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_112 .. :try_end_159} :catchall_133

    .line 880
    nop

    .line 883
    nop

    .line 880
    return v14

    .line 883
    :cond_15c
    nop

    .line 887
    return v13

    .line 883
    :goto_15e
    throw v0

    .line 844
    .end local v15    # "start":Z
    .end local v16    # "wall":Z
    .end local v17    # "profileFile":Ljava/lang/String;
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profileFile":Ljava/lang/String;
    .local v3, "start":Z
    .local v4, "wall":Z
    .local v6, "process":Ljava/lang/String;
    .local v7, "cmd":Ljava/lang/String;
    :cond_15f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Profile command "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/hardware/display/DisplayManager;)V
    .registers 27
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "config"    # Landroid/content/res/Configuration;
    .param p6, "dm"    # Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 2040
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/display/DisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    .line 2041
    .local v3, "stableSize":Landroid/graphics/Point;
    const-wide/16 v4, -0x1

    .line 2042
    .local v4, "token":J
    if-eqz v1, :cond_30

    .line 2043
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2044
    const-wide v6, 0x10d00000001L

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2045
    const-wide v6, 0x10d00000002L

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2046
    const-wide v6, 0x10d00000003L

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2049
    :cond_30
    if-eqz v2, :cond_53

    .line 2050
    const-string/jumbo v6, "stable-width-px: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2051
    const-string/jumbo v6, "stable-height-px: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2052
    const-string/jumbo v6, "stable-density-dpi: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2055
    :cond_53
    new-instance v6, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v6}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2056
    .local v6, "memreader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2057
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/KeyguardManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    .line 2058
    .local v7, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_9d

    .line 2059
    const-wide v8, 0x10400000004L

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2060
    const-wide v8, 0x10800000005L

    .line 2061
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v10

    .line 2060
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2062
    const-wide v8, 0x10d00000006L

    .line 2063
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v10

    .line 2062
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2064
    const-wide v8, 0x10800000007L

    .line 2065
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v10

    .line 2064
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2067
    :cond_9d
    if-eqz v2, :cond_d7

    .line 2068
    const-string/jumbo v8, "total-ram: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    .line 2069
    const-string/jumbo v8, "low-ram: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 2070
    const-string/jumbo v8, "max-cores: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 2071
    const-string/jumbo v8, "has-secure-screen-lock: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 2074
    :cond_d7
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v8

    .line 2075
    .local v8, "configInfo":Landroid/content/pm/ConfigurationInfo;
    iget v9, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz v9, :cond_fe

    .line 2076
    if-eqz v1, :cond_ed

    .line 2077
    const-wide v9, 0x10d00000008L

    iget v11, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2080
    :cond_ed
    if-eqz v2, :cond_fe

    .line 2081
    const-string/jumbo v9, "opengl-version: 0x"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2082
    iget v9, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    :cond_fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v9

    .line 2087
    .local v9, "glExtensionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 2088
    .local v10, "glExtensions":[Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, [Ljava/lang/String;

    .line 2089
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2090
    const/4 v11, 0x0

    move v12, v11

    .line 2090
    .local v12, "i":I
    :goto_114
    array-length v13, v10

    if-ge v12, v13, :cond_133

    .line 2091
    if-eqz v1, :cond_123

    .line 2092
    const-wide v13, 0x20900000009L

    aget-object v15, v10, v12

    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2095
    :cond_123
    if-eqz v2, :cond_130

    .line 2096
    const-string/jumbo v13, "opengl-extensions: "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v13, v10, v12

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    :cond_130
    add-int/lit8 v12, v12, 0x1

    goto :goto_114

    .line 2101
    .end local v12    # "i":I
    :cond_133
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2102
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v13

    .line 2103
    .local v13, "slibs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    sget-object v14, Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$jVSWDZTj55yxOQmZSLdNsbUkMb4;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$jVSWDZTj55yxOQmZSLdNsbUkMb4;

    invoke-static {v14}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2104
    move v14, v11

    .line 2104
    .local v14, "i":I
    :goto_149
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_183

    .line 2105
    if-eqz v1, :cond_166

    .line 2106
    move-object/from16 v17, v12

    const-wide v11, 0x2090000000aL

    .line 2107
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v15}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2106
    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_168

    .line 2109
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_166
    move-object/from16 v17, v12

    .line 2109
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    :goto_168
    if-eqz v2, :cond_17d

    .line 2110
    const-string/jumbo v11, "shared-libraries: "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    :cond_17d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v17

    const/4 v11, 0x0

    goto :goto_149

    .line 2114
    .end local v14    # "i":I
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_183
    move-object/from16 v17, v12

    .line 2114
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v11, v17

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v12

    .line 2115
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .local v11, "pm":Landroid/content/pm/PackageManager;
    .local v12, "features":[Landroid/content/pm/FeatureInfo;
    sget-object v14, Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;

    invoke-static {v12, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2117
    const/16 v16, 0x0

    .line 2117
    .local v16, "i":I
    :goto_192
    move/from16 v14, v16

    .line 2117
    .end local v16    # "i":I
    .restart local v14    # "i":I
    array-length v15, v12

    if-ge v14, v15, :cond_1ce

    .line 2118
    aget-object v15, v12, v14

    iget-object v15, v15, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v15, :cond_1c3

    .line 2119
    if-eqz v1, :cond_1b0

    .line 2120
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const-wide v6, 0x2090000000bL

    .line 2120
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .local v18, "memreader":Lcom/android/internal/util/MemInfoReader;
    .local v19, "kgm":Landroid/app/KeyguardManager;
    aget-object v15, v12, v14

    iget-object v15, v15, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1b4

    .line 2122
    .end local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v19    # "kgm":Landroid/app/KeyguardManager;
    .restart local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v7    # "kgm":Landroid/app/KeyguardManager;
    :cond_1b0
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 2122
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .restart local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v19    # "kgm":Landroid/app/KeyguardManager;
    :goto_1b4
    if-eqz v2, :cond_1c7

    .line 2123
    const-string v6, "features: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v6, v12, v14

    iget-object v6, v6, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c7

    .line 2117
    .end local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v19    # "kgm":Landroid/app/KeyguardManager;
    .restart local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v7    # "kgm":Landroid/app/KeyguardManager;
    :cond_1c3
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 2117
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .restart local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v19    # "kgm":Landroid/app/KeyguardManager;
    :cond_1c7
    :goto_1c7
    add-int/lit8 v16, v14, 0x1

    .line 2117
    .end local v14    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_192

    .line 2128
    .end local v16    # "i":I
    .end local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v19    # "kgm":Landroid/app/KeyguardManager;
    .restart local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v7    # "kgm":Landroid/app/KeyguardManager;
    :cond_1ce
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 2128
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .restart local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v19    # "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_1d7

    .line 2129
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2131
    :cond_1d7
    return-void
.end method


# virtual methods
.method getGlExtensionsFromDriver()Ljava/util/Set;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1961
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1964
    .local v0, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljavax/microedition/khronos/egl/EGL10;

    .line 1965
    .local v13, "egl":Ljavax/microedition/khronos/egl/EGL10;
    if-nez v13, :cond_18

    .line 1966
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    return-object v0

    .line 1971
    :cond_18
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v14

    .line 1972
    .local v14, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 1973
    .local v15, "version":[I
    invoke-interface {v13, v14, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 1976
    const/4 v12, 0x1

    new-array v10, v12, [I

    .line 1977
    .local v10, "numConfigs":[I
    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-interface {v13, v14, v1, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1978
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL config count"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    return-object v0

    .line 1983
    :cond_39
    aget v1, v10, v9

    new-array v8, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1984
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    aget v1, v10, v9

    invoke-interface {v13, v14, v8, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL configs"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    return-object v0

    .line 1992
    :cond_4f
    const/4 v1, 0x5

    new-array v4, v1, [I

    fill-array-data v4, :array_d2

    .line 2000
    .local v4, "surfaceSize":[I
    const/16 v16, 0x3098

    .line 2001
    .local v16, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v1, 0x3

    new-array v11, v1, [I

    fill-array-data v11, :array_e0

    .line 2004
    .local v11, "gles2":[I
    new-array v7, v12, [I

    .line 2006
    .local v7, "attrib":[I
    move v1, v9

    .local v1, "i":I
    :goto_60
    move v6, v1

    .end local v1    # "i":I
    .local v6, "i":I
    aget v1, v10, v9

    if-ge v6, v1, :cond_ca

    .line 2008
    aget-object v1, v8, v6

    const/16 v2, 0x3027

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2009
    aget v1, v7, v9

    const/16 v2, 0x3050

    if-ne v1, v2, :cond_7b

    .line 2010
    nop

    .line 2006
    .end local v6    # "i":I
    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .local v1, "numConfigs":[I
    .local v2, "attrib":[I
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v19, "i":I
    :goto_73
    move/from16 v19, v6

    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    goto :goto_c1

    .line 2016
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v19    # "i":I
    .restart local v6    # "i":I
    .restart local v7    # "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_7b
    aget-object v1, v8, v6

    const/16 v2, 0x3033

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2017
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-nez v1, :cond_88

    .line 2018
    goto :goto_73

    .line 2021
    :cond_88
    const/16 v17, 0x1

    .line 2022
    .local v17, "EGL_OPENGL_ES_BIT":I
    const/16 v18, 0x4

    .line 2023
    .local v18, "EGL_OPENGL_ES2_BIT":I
    aget-object v1, v8, v6

    const/16 v2, 0x3040

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2024
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-eqz v1, :cond_a4

    .line 2025
    aget-object v3, v8, v6

    const/4 v5, 0x0

    move-object v1, v13

    move-object v2, v14

    move/from16 v19, v6

    move-object v6, v0

    .end local v6    # "i":I
    .restart local v19    # "i":I
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_a6

    .line 2027
    .end local v19    # "i":I
    .restart local v6    # "i":I
    :cond_a4
    move/from16 v19, v6

    .end local v6    # "i":I
    .restart local v19    # "i":I
    :goto_a6
    aget v1, v7, v9

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_bc

    .line 2028
    aget-object v1, v8, v19

    move-object v2, v7

    move-object v7, v13

    .end local v7    # "attrib":[I
    .restart local v2    # "attrib":[I
    move-object v3, v8

    move-object v8, v14

    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move v5, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v4

    .end local v10    # "numConfigs":[I
    .restart local v1    # "numConfigs":[I
    move v6, v12

    move-object v12, v0

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .end local v17    # "EGL_OPENGL_ES_BIT":I
    .end local v18    # "EGL_OPENGL_ES2_BIT":I
    goto :goto_c1

    .line 2006
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v7    # "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_bc
    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .restart local v1    # "numConfigs":[I
    .restart local v2    # "attrib":[I
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_c1
    add-int/lit8 v7, v19, 0x1

    .end local v19    # "i":I
    .local v7, "i":I
    move-object v10, v1

    move-object v8, v3

    move v9, v5

    move v12, v6

    move v1, v7

    move-object v7, v2

    goto :goto_60

    .line 2033
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v7, "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_ca
    move-object v2, v7

    move-object v3, v8

    move-object v1, v10

    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .restart local v1    # "numConfigs":[I
    .restart local v2    # "attrib":[I
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-interface {v13, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 2035
    return-object v0

    nop

    :array_d2
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_e0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method getStepSize(IIIZ)I
    .registers 7
    .param p1, "current"    # I
    .param p2, "target"    # I
    .param p3, "inStepSize"    # I
    .param p4, "greaterThanTarget"    # Z

    .line 2745
    const/4 v0, 0x0

    .line 2746
    .local v0, "stepSize":I
    if-eqz p4, :cond_c

    if-ge p2, p1, :cond_c

    .line 2747
    sub-int/2addr p1, p3

    .line 2748
    move v0, p3

    .line 2749
    if-le p2, p1, :cond_c

    .line 2750
    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    .line 2753
    :cond_c
    if-nez p4, :cond_17

    if-le p2, p1, :cond_17

    .line 2754
    add-int/2addr p1, p3

    .line 2755
    move v0, p3

    .line 2756
    if-ge p2, p1, :cond_17

    .line 2757
    sub-int v1, p1, p2

    add-int/2addr v0, v1

    .line 2760
    :cond_17
    return v0
.end method

.method getUidState(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1853
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    .line 1856
    .local v0, "state":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1857
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "PROCESS_STATE_"

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1859
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    return v2
.end method

.method moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;
    .param p3, "stackRect"    # Landroid/graphics/Rect;
    .param p4, "stepSize"    # I
    .param p5, "maxToTravel"    # I
    .param p6, "movingForward"    # Z
    .param p7, "horizontal"    # Z
    .param p8, "delay_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2705
    const/4 v0, 0x0

    if-eqz p6, :cond_44

    .line 2706
    :goto_3
    if-lez p5, :cond_85

    if-eqz p7, :cond_d

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_15

    :cond_d
    if-nez p7, :cond_85

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_85

    .line 2709
    :cond_15
    if-eqz p7, :cond_2c

    .line 2710
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2711
    .local v1, "maxMove":I
    sub-int/2addr p5, v1

    .line 2712
    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2713
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_40

    .line 2715
    .end local v1    # "maxMove":I
    :cond_2c
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2716
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2717
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2718
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 2720
    :goto_40
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_3

    .line 2723
    .end local v1    # "maxMove":I
    :cond_44
    :goto_44
    if-gez p5, :cond_85

    if-eqz p7, :cond_4e

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_56

    :cond_4e
    if-nez p7, :cond_85

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_85

    .line 2726
    :cond_56
    if-eqz p7, :cond_6d

    .line 2727
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2728
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2729
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2730
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_81

    .line 2732
    .end local v1    # "maxMove":I
    :cond_6d
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2733
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2734
    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2735
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 2737
    :goto_81
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_44

    .line 2741
    .end local v1    # "maxMove":I
    :cond_85
    return p5
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 156
    if-nez p1, :cond_7

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 159
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 161
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_46e

    goto/16 :goto_32b

    :sswitch_18
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x24

    goto/16 :goto_32c

    :sswitch_25
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x9

    goto/16 :goto_32c

    :sswitch_32
    const-string/jumbo v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x1e

    goto/16 :goto_32c

    :sswitch_3f
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x3d

    goto/16 :goto_32c

    :sswitch_4c
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x35

    goto/16 :goto_32c

    :sswitch_58
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x3e

    goto/16 :goto_32c

    :sswitch_65
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x28

    goto/16 :goto_32c

    :sswitch_72
    const-string/jumbo v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0xb

    goto/16 :goto_32c

    :sswitch_7f
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x1a

    goto/16 :goto_32c

    :sswitch_8c
    const-string v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x2a

    goto/16 :goto_32c

    :sswitch_98
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x3c

    goto/16 :goto_32c

    :sswitch_a5
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x1d

    goto/16 :goto_32c

    :sswitch_b2
    const-string v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x11

    goto/16 :goto_32c

    :sswitch_be
    const-string v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x39

    goto/16 :goto_32c

    :sswitch_ca
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/4 v2, 0x7

    goto/16 :goto_32c

    :sswitch_d6
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x10

    goto/16 :goto_32c

    :sswitch_e3
    const-string v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x13

    goto/16 :goto_32c

    :sswitch_ef
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x12

    goto/16 :goto_32c

    :sswitch_fc
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x22

    goto/16 :goto_32c

    :sswitch_109
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x3a

    goto/16 :goto_32c

    :sswitch_116
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0xc

    goto/16 :goto_32c

    :sswitch_123
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x3b

    goto/16 :goto_32c

    :sswitch_130
    const-string v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x14

    goto/16 :goto_32c

    :sswitch_13c
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x2c

    goto/16 :goto_32c

    :sswitch_149
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    move v2, v5

    goto/16 :goto_32c

    :sswitch_155
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x23

    goto/16 :goto_32c

    :sswitch_162
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    move v2, v3

    goto/16 :goto_32c

    :sswitch_16e
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x38

    goto/16 :goto_32c

    :sswitch_17b
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    move v2, v4

    goto/16 :goto_32c

    :sswitch_187
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x36

    goto/16 :goto_32c

    :sswitch_194
    const-string v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x16

    goto/16 :goto_32c

    :sswitch_1a0
    const-string v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x15

    goto/16 :goto_32c

    :sswitch_1ac
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x37

    goto/16 :goto_32c

    :sswitch_1b9
    const-string/jumbo v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x17

    goto/16 :goto_32c

    :sswitch_1c6
    const-string/jumbo v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x1c

    goto/16 :goto_32c

    :sswitch_1d3
    const-string/jumbo v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x19

    goto/16 :goto_32c

    :sswitch_1e0
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/4 v2, 0x4

    goto/16 :goto_32c

    :sswitch_1ec
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x1b

    goto/16 :goto_32c

    :sswitch_1f9
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x30

    goto/16 :goto_32c

    :sswitch_206
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0xd

    goto/16 :goto_32c

    :sswitch_213
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x1f

    goto/16 :goto_32c

    :sswitch_220
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x2b

    goto/16 :goto_32c

    :sswitch_22d
    const-string/jumbo v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x29

    goto/16 :goto_32c

    :sswitch_23a
    const-string/jumbo v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x18

    goto/16 :goto_32c

    :sswitch_247
    const-string v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x2e

    goto/16 :goto_32c

    :sswitch_253
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x32

    goto/16 :goto_32c

    :sswitch_260
    const-string v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x25

    goto/16 :goto_32c

    :sswitch_26c
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x21

    goto/16 :goto_32c

    :sswitch_279
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/4 v2, 0x6

    goto/16 :goto_32c

    :sswitch_285
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x27

    goto/16 :goto_32c

    :sswitch_292
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/4 v2, 0x5

    goto/16 :goto_32c

    :sswitch_29e
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x8

    goto/16 :goto_32c

    :sswitch_2ab
    const-string v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x2d

    goto/16 :goto_32c

    :sswitch_2b7
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/4 v2, 0x3

    goto/16 :goto_32c

    :sswitch_2c3
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x34

    goto :goto_32c

    :sswitch_2cf
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x2f

    goto :goto_32c

    :sswitch_2db
    const-string v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0xa

    goto :goto_32c

    :sswitch_2e6
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x26

    goto :goto_32c

    :sswitch_2f2
    const-string v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x33

    goto :goto_32c

    :sswitch_2fd
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x20

    goto :goto_32c

    :sswitch_309
    const-string v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0x31

    goto :goto_32c

    :sswitch_314
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0xf

    goto :goto_32c

    :sswitch_320
    const-string v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32b

    const/16 v2, 0xe

    goto :goto_32c

    :cond_32b
    :goto_32b
    move v2, v1

    :goto_32c
    packed-switch v2, :pswitch_data_56c

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_457

    .line 282
    :pswitch_335
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 280
    :pswitch_33a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runNoHomeScreen(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 278
    :pswitch_33f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 276
    :pswitch_344
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 274
    :pswitch_349
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 272
    :pswitch_34e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 270
    :pswitch_353
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 268
    :pswitch_358
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 266
    :pswitch_35d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 264
    :pswitch_362
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 262
    :pswitch_367
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 260
    :pswitch_36c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 258
    :pswitch_371
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 256
    :pswitch_376
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 254
    :pswitch_37b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 252
    :pswitch_380
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 250
    :pswitch_385
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 248
    :pswitch_38a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 246
    :pswitch_38f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 244
    :pswitch_394
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 242
    :pswitch_399
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 240
    :pswitch_39e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 238
    :pswitch_3a3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 236
    :pswitch_3a8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 234
    :pswitch_3ad
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 232
    :pswitch_3b2
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 230
    :pswitch_3b7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 228
    :pswitch_3bc
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 226
    :pswitch_3c1
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 224
    :pswitch_3c6
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 222
    :pswitch_3cb
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 220
    :pswitch_3d0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 218
    :pswitch_3d5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 216
    :pswitch_3da
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 214
    :pswitch_3df
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 212
    :pswitch_3e4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 210
    :pswitch_3e9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 208
    :pswitch_3ee
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 206
    :pswitch_3f3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 204
    :pswitch_3f8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 202
    :pswitch_3fd
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 200
    :pswitch_402
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 198
    :pswitch_407
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 196
    :pswitch_40c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 194
    :pswitch_411
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 192
    :pswitch_416
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 190
    :pswitch_41b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 188
    :pswitch_420
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 186
    :pswitch_425
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 184
    :pswitch_42a
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 182
    :pswitch_42f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 179
    :pswitch_434
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    return v1

    .line 177
    :pswitch_43e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 175
    :pswitch_443
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 172
    :pswitch_448
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v2

    return v2

    .line 167
    :pswitch_44d
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v2

    return v2

    .line 164
    :pswitch_452
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result v2
    :try_end_456
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_456} :catch_458

    return v2

    .line 284
    :goto_457
    return v2

    .line 286
    :catch_458
    move-exception v2

    .line 287
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_46e
    .sparse-switch
        -0x7e761220 -> :sswitch_320
        -0x7566d004 -> :sswitch_314
        -0x6684cefe -> :sswitch_309
        -0x65f435a5 -> :sswitch_2fd
        -0x6366a39f -> :sswitch_2f2
        -0x608449aa -> :sswitch_2e6
        -0x607e173f -> :sswitch_2db
        -0x4ef4b7a7 -> :sswitch_2cf
        -0x4db101b9 -> :sswitch_2c3
        -0x436e13b6 -> :sswitch_2b7
        -0x3bc220e3 -> :sswitch_2ab
        -0x3988e78d -> :sswitch_29e
        -0x376fe74e -> :sswitch_292
        -0x3619e74c -> :sswitch_285
        -0x3530e48a -> :sswitch_279
        -0x33db6ce6 -> :sswitch_26c
        -0x30697b4a -> :sswitch_260
        -0x2c900a2b -> :sswitch_253
        -0x29b36e67 -> :sswitch_247
        -0x2420b54e -> :sswitch_23a
        -0x20b34e72 -> :sswitch_22d
        -0x171366ac -> :sswitch_220
        -0x152733fd -> :sswitch_213
        -0x12717657 -> :sswitch_206
        -0xa310e8a -> :sswitch_1f9
        -0x8b4339f -> :sswitch_1ec
        -0x5ffb810 -> :sswitch_1e0
        -0x1a6e7d0 -> :sswitch_1d3
        0x30c072 -> :sswitch_1c6
        0x323b5e -> :sswitch_1b9
        0x363585 -> :sswitch_1ac
        0x547b9a4 -> :sswitch_1a0
        0x5a863a7 -> :sswitch_194
        0x68ac288 -> :sswitch_187
        0x68ac462 -> :sswitch_17b
        0x6c257df -> :sswitch_16e
        0xb07b013 -> :sswitch_162
        0xe24026e -> :sswitch_155
        0x20c2801a -> :sswitch_149
        0x251993ad -> :sswitch_13c
        0x27c1d6ad -> :sswitch_130
        0x2894b589 -> :sswitch_123
        0x2b19d394 -> :sswitch_116
        0x2d9208a0 -> :sswitch_109
        0x302bd54d -> :sswitch_fc
        0x304b5275 -> :sswitch_ef
        0x30b487aa -> :sswitch_e3
        0x310633ae -> :sswitch_d6
        0x35abdbf4 -> :sswitch_ca
        0x3d13bd7d -> :sswitch_be
        0x404a0027 -> :sswitch_b2
        0x416a9e0f -> :sswitch_a5
        0x434f294b -> :sswitch_98
        0x48b444b2 -> :sswitch_8c
        0x49b0bd5a -> :sswitch_7f
        0x532d63e7 -> :sswitch_72
        0x5e69b6b6 -> :sswitch_65
        0x607e963c -> :sswitch_58
        0x63a518c2 -> :sswitch_4c
        0x6e6f530e -> :sswitch_3f
        0x6ef5269a -> :sswitch_32
        0x6f0f8fea -> :sswitch_25
        0x7c2bb6c4 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_56c
    .packed-switch 0x0
        :pswitch_452
        :pswitch_452
        :pswitch_44d
        :pswitch_44d
        :pswitch_448
        :pswitch_448
        :pswitch_448
        :pswitch_448
        :pswitch_443
        :pswitch_443
        :pswitch_43e
        :pswitch_434
        :pswitch_42f
        :pswitch_42a
        :pswitch_425
        :pswitch_420
        :pswitch_41b
        :pswitch_416
        :pswitch_411
        :pswitch_40c
        :pswitch_407
        :pswitch_402
        :pswitch_3fd
        :pswitch_3f8
        :pswitch_3f3
        :pswitch_3ee
        :pswitch_3e9
        :pswitch_3e4
        :pswitch_3df
        :pswitch_3da
        :pswitch_3d5
        :pswitch_3d0
        :pswitch_3cb
        :pswitch_3c6
        :pswitch_3c1
        :pswitch_3bc
        :pswitch_3b7
        :pswitch_3b2
        :pswitch_3ad
        :pswitch_3a8
        :pswitch_3a3
        :pswitch_39e
        :pswitch_399
        :pswitch_394
        :pswitch_38f
        :pswitch_38a
        :pswitch_385
        :pswitch_380
        :pswitch_37b
        :pswitch_376
        :pswitch_371
        :pswitch_36c
        :pswitch_367
        :pswitch_362
        :pswitch_35d
        :pswitch_358
        :pswitch_353
        :pswitch_34e
        :pswitch_349
        :pswitch_344
        :pswitch_33f
        :pswitch_33a
        :pswitch_335
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 2854
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2855
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    .line 2856
    return-void
.end method

.method resizeStack(ILandroid/graphics/Rect;I)I
    .registers 6
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delayMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2564
    if-nez p2, :cond_d

    .line 2565
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: invalid input bounds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const/4 v0, -0x1

    return v0

    .line 2568
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I

    move-result v0

    return v0
.end method

.method resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I
    .registers 12
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delayMs"    # I
    .param p4, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move v1, p1

    move-object v2, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 2546
    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_10

    .line 2548
    goto :goto_11

    .line 2547
    :catch_10
    move-exception v0

    .line 2549
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method runAttachAgent(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2780
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2783
    .local v0, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2785
    .local v1, "agent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2e

    .line 2786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2787
    const/4 v2, -0x1

    return v2

    .line 2789
    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->attachAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    const/4 v2, 0x0

    return v2
.end method

.method runBugReport(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 982
    const/4 v0, 0x0

    move v1, v0

    .line 983
    .local v1, "bugreportType":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_37

    .line 984
    const-string v2, "--progress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 985
    const/4 v1, 0x1

    goto :goto_2

    .line 986
    :cond_13
    const-string v2, "--telephony"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 987
    const/4 v1, 0x4

    goto :goto_2

    .line 989
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    const/4 v0, -0x1

    return v0

    .line 993
    :cond_37
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V

    .line 994
    const-string v2, "Your lovely bug report is being created; please be patient."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    return v0
.end method

.method runClearDebugApp(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 964
    return v1
.end method

.method runClearWatchHeap(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, "proc":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method runCrash(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    const/4 v0, -0x1

    move v5, v0

    .line 1018
    .local v5, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 1018
    .local v7, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 1019
    const-string v1, "--user"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 1022
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    return v0

    .line 1027
    :cond_33
    const/4 v0, -0x1

    .line 1028
    .local v0, "pid":I
    const/4 v1, 0x0

    .line 1029
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 1032
    .local v8, "arg":Ljava/lang/String;
    :try_start_3a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3e} :catch_42

    move v0, v2

    .line 1035
    nop

    .line 1036
    .end local v1    # "packageName":Ljava/lang/String;
    .local v9, "packageName":Ljava/lang/String;
    :goto_40
    move-object v9, v1

    goto :goto_45

    .line 1033
    .end local v9    # "packageName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_42
    move-exception v2

    .line 1034
    .local v2, "e":Ljava/lang/NumberFormatException;
    move-object v1, v8

    .line 1034
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_40

    .line 1036
    .end local v1    # "packageName":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    :goto_45
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, -0x1

    const-string/jumbo v6, "shell-induced crash"

    move v3, v0

    move-object v4, v9

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 1037
    const/4 v1, 0x0

    return v1
.end method

.method runDisplay(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2393
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2394
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x60e6318c

    if-eq v1, v3, :cond_f

    goto :goto_1a

    :cond_f
    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v2

    :goto_1b
    if-eqz v1, :cond_3b

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    return v2

    .line 2396
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplayMoveStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method runDisplayMoveStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2462
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2463
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2464
    .local v1, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2465
    .local v2, "displayIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2466
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityManager;->moveStackToDisplay(II)V

    .line 2467
    const/4 v4, 0x0

    return v4
.end method

.method runDumpHeap(Ljava/io/PrintWriter;)I
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 892
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v2, 0x1

    .line 893
    .local v2, "managed":Z
    const/4 v3, 0x0

    .line 894
    .local v3, "mallocInfo":Z
    const/4 v4, -0x2

    .line 895
    .local v4, "userId":I
    const/4 v11, 0x0

    .line 898
    .local v11, "runGc":Z
    :cond_a
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .line 898
    .local v14, "opt":Ljava/lang/String;
    const/4 v15, -0x1

    if-eqz v6, :cond_5e

    .line 899
    const-string v6, "--user"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    .line 901
    if-ne v4, v15, :cond_a

    .line 902
    const-string v5, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    return v15

    .line 905
    :cond_2a
    const-string v6, "-n"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 906
    const/4 v2, 0x0

    goto :goto_a

    .line 907
    :cond_34
    const-string v6, "-g"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 908
    const/4 v11, 0x1

    goto :goto_a

    .line 909
    :cond_3e
    const-string v6, "-m"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 910
    const/4 v2, 0x0

    .line 911
    const/4 v3, 0x1

    goto :goto_a

    .line 913
    :cond_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    return v15

    .line 917
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v13

    .line 918
    .local v13, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 920
    .local v12, "heapFile":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    .line 921
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 922
    const-string/jumbo v6, "w"

    invoke-virtual {v0, v12, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 923
    .local v16, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v16, :cond_79

    .line 924
    return v15

    .line 927
    :cond_79
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v13

    move v8, v4

    move v9, v2

    move-object/from16 v17, v10

    move v10, v3

    .line 927
    .end local v10    # "file":Ljava/io/File;
    .local v17, "file":Ljava/io/File;
    move-object/from16 v18, v12

    .line 927
    .end local v12    # "heapFile":Ljava/lang/String;
    .local v18, "heapFile":Ljava/lang/String;
    move-object v5, v13

    move-object/from16 v13, v16

    .line 927
    .end local v13    # "process":Ljava/lang/String;
    .local v5, "process":Ljava/lang/String;
    invoke-interface/range {v6 .. v13}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 928
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HEAP DUMP FAILED on process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    return v15

    .line 931
    :cond_a1
    const/4 v6, 0x0

    return v6
.end method

.method runForceStop(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    const/4 v0, -0x1

    move v1, v0

    .line 1002
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1003
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1006
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    return v0

    .line 1010
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method runGetConfig(Ljava/io/PrintWriter;)I
    .registers 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 2134
    move-object/from16 v8, p1

    const/4 v0, -0x1

    .line 2135
    .local v0, "days":I
    const/4 v1, 0x0

    .line 2136
    .local v1, "asProto":Z
    const/4 v9, 0x0

    move v10, v0

    move v11, v1

    move v0, v9

    .line 2136
    .end local v1    # "asProto":Z
    .local v0, "inclDevice":Z
    .local v10, "days":I
    .local v11, "asProto":Z
    :goto_a
    move v12, v0

    .line 2139
    .end local v0    # "inclDevice":Z
    .local v12, "inclDevice":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 2139
    .local v13, "opt":Ljava/lang/String;
    const/4 v1, -0x1

    if-eqz v0, :cond_5c

    .line 2140
    const-string v0, "--days"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2141
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2142
    if-lez v10, :cond_27

    .line 2136
    .end local v12    # "inclDevice":Z
    .end local v13    # "opt":Ljava/lang/String;
    .restart local v0    # "inclDevice":Z
    :goto_25
    move v0, v12

    goto :goto_a

    .line 2143
    .end local v0    # "inclDevice":Z
    .restart local v12    # "inclDevice":Z
    .restart local v13    # "opt":Ljava/lang/String;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--days must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2145
    :cond_2f
    const-string v0, "--proto"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2146
    const/4 v11, 0x1

    goto :goto_25

    .line 2147
    :cond_39
    const-string v0, "--device"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2148
    const/4 v0, 0x1

    .line 2148
    .end local v12    # "inclDevice":Z
    .restart local v0    # "inclDevice":Z
    goto :goto_a

    .line 2150
    .end local v0    # "inclDevice":Z
    .restart local v12    # "inclDevice":Z
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    return v1

    .line 2155
    :cond_5c
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 2156
    .local v14, "config":Landroid/content/res/Configuration;
    if-nez v14, :cond_6e

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Activity manager has no configuration"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    return v1

    .line 2161
    :cond_6e
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/display/DisplayManager;

    .line 2162
    .local v15, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v15, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 2163
    .local v6, "display":Landroid/view/Display;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v0

    .line 2164
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2166
    if-eqz v11, :cond_c1

    .line 2167
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 2168
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v0, 0x10b00000001L

    invoke-virtual {v14, v4, v0, v1, v5}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    .line 2169
    if-eqz v12, :cond_b4

    .line 2170
    const-wide v2, 0x10b00000002L

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v4

    move-object v9, v4

    move-object/from16 v4, v16

    .line 2170
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v9, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object/from16 v17, v5

    move-object v5, v14

    .line 2170
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v16, v6

    move-object v6, v15

    .line 2170
    .end local v6    # "display":Landroid/view/Display;
    .local v16, "display":Landroid/view/Display;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/hardware/display/DisplayManager;)V

    goto :goto_b9

    .line 2172
    .end local v9    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v16    # "display":Landroid/view/Display;
    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_b4
    move-object v9, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .line 2172
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v9    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v16    # "display":Landroid/view/Display;
    .restart local v17    # "metrics":Landroid/util/DisplayMetrics;
    :goto_b9
    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2174
    .end local v9    # "proto":Landroid/util/proto/ProtoOutputStream;
    nop

    .line 2194
    move-object/from16 v9, v17

    goto/16 :goto_13d

    .line 2175
    .end local v16    # "display":Landroid/view/Display;
    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_c1
    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .line 2175
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v16    # "display":Landroid/view/Display;
    .restart local v17    # "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    invoke-static {v14, v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    if-eqz v12, :cond_107

    .line 2178
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-object v0, v7

    move-object v4, v8

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/hardware/display/DisplayManager;)V

    .line 2181
    :cond_107
    if-ltz v10, :cond_13d

    .line 2182
    invoke-direct {v7, v10}, Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object v0

    .line 2183
    .local v0, "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2184
    .local v1, "recentConfigSize":I
    if-lez v1, :cond_13d

    .line 2185
    const-string/jumbo v2, "recentConfigs:"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    const/4 v2, 0x0

    .line 2186
    .local v2, "i":I
    :goto_11a
    if-ge v2, v1, :cond_13d

    .line 2187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 2187
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    .line 2194
    .end local v0    # "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    .end local v1    # "recentConfigSize":I
    .end local v2    # "i":I
    :cond_13d
    :goto_13d
    const/4 v0, 0x0

    return v0
.end method

.method runGetCurrentUser(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "Current user not set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1701
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1702
    const/4 v1, 0x0

    return v1
.end method

.method runGetInactive(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2316
    const/4 v0, -0x2

    .line 2319
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2319
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2320
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2323
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    const/4 v1, -0x1

    return v1

    .line 2327
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2329
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2331
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-interface {v3, v1, v0}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z

    move-result v4

    .line 2332
    .local v4, "isIdle":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Idle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    const/4 v5, 0x0

    return v5
.end method

.method runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2286
    const/4 v0, -0x2

    .line 2289
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2289
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2290
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2291
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2293
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2294
    const/4 v1, -0x1

    return v1

    .line 2297
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2299
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2301
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    if-eqz v1, :cond_4d

    .line 2302
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 2303
    .local v4, "bucket":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2304
    .end local v4    # "bucket":I
    goto :goto_77

    .line 2305
    :cond_4d
    const-string v4, "com.android.shell"

    invoke-interface {v3, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2307
    .local v4, "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/AppStandbyInfo;

    .line 2308
    .local v6, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v7, v6, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2309
    iget v7, v6, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 2310
    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    goto :goto_5b

    .line 2312
    .end local v4    # "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :cond_77
    :goto_77
    const/4 v4, 0x0

    return v4
.end method

.method runGetStartedUserState(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1812
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1816
    .local v0, "userId":I
    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getStartedUserState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 1819
    goto :goto_31

    .line 1817
    :catch_1c
    move-exception v1

    .line 1818
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1820
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_31
    const/4 v1, 0x0

    return v1
.end method

.method runHang(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1603
    const/4 v0, 0x0

    move v1, v0

    .line 1604
    .local v1, "allowRestart":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 1605
    const-string v2, "--allow-restart"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1606
    const/4 v1, 0x1

    goto :goto_2

    .line 1608
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    const/4 v0, -0x1

    return v0

    .line 1613
    :cond_2d
    const-string v2, "Hanging the system..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1615
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, v4, v1}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    .line 1616
    return v0
.end method

.method runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    const/4 v0, -0x1

    return v0

    .line 1639
    :cond_21
    const-string v0, "Performing idle maintenance..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    .line 1641
    const/4 v0, 0x0

    return v0
.end method

.method runIsUserStopped(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1806
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    move-result v1

    .line 1807
    .local v1, "stopped":Z
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1808
    const/4 v2, 0x0

    return v2
.end method

.method runKill(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    const/4 v0, -0x1

    move v1, v0

    .line 1044
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1045
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1048
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    return v0

    .line 1052
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method runKillAll(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 1058
    const/4 v0, 0x0

    return v0
.end method

.method runMakeIdle(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1062
    const/4 v0, -0x1

    move v1, v0

    .line 1065
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1066
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1069
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    return v0

    .line 1073
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method runMonitor(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1391
    const/4 v0, 0x0

    .line 1392
    .local v0, "gdbPort":Ljava/lang/String;
    const/4 v1, 0x0

    move v7, v1

    .line 1393
    .local v7, "monkey":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v8, "opt":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 1394
    const-string v2, "--gdb"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1396
    :cond_17
    const-string v2, "-m"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1397
    const/4 v7, 0x1

    goto :goto_3

    .line 1399
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    const/4 v1, -0x1

    return v1

    .line 1404
    :cond_3b
    new-instance v9, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v9

    move-object v4, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 1406
    .local v2, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->run()V

    .line 1407
    return v1
.end method

.method runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2607
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2608
    .local v0, "stackId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2609
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v2, -0x1

    if-nez v1, :cond_19

    .line 2610
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    return v2

    .line 2614
    :cond_19
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v0, v1}, Landroid/app/IActivityManager;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 2615
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Didn\'t move top activity to pinned stack."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    return v2

    .line 2618
    :cond_2b
    const/4 v2, 0x0

    return v2
.end method

.method runNoHomeScreen(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2825
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2826
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 2827
    const/4 v1, -0x1

    return v1

    .line 2829
    :cond_8
    const v1, 0x1120088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2830
    const/4 v1, 0x0

    return v1
.end method

.method runPackageImportance(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1670
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v2, "com.android.shell"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1672
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1673
    const/4 v2, 0x0

    return v2
.end method

.method runRestart(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1621
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const/4 v0, -0x1

    return v0

    .line 1626
    :cond_21
    const-string v0, "Restart the system..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1628
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V

    .line 1629
    const/4 v0, 0x0

    return v0
.end method

.method runScreenCompat(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1648
    const/4 v1, 0x1

    .line 1648
    .local v1, "enabled":Z
    :goto_e
    goto :goto_1a

    .line 1649
    .end local v1    # "enabled":Z
    :cond_f
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1650
    const/4 v1, 0x0

    goto :goto_e

    .line 1653
    .restart local v1    # "enabled":Z
    :goto_1a
    nop

    .line 1656
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, "packageName":Ljava/lang/String;
    :cond_1f
    const/4 v3, 0x0

    :try_start_20
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    if-eqz v1, :cond_26

    .line 1660
    const/4 v5, 0x1

    goto :goto_28

    .line 1661
    :cond_26
    nop

    .line 1659
    move v5, v3

    :goto_28
    invoke-interface {v4, v2, v5}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2c

    .line 1663
    goto :goto_2d

    .line 1662
    :catch_2c
    move-exception v4

    .line 1664
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1665
    if-nez v2, :cond_1f

    .line 1666
    return v3

    .line 1652
    .end local v1    # "enabled":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    const/4 v1, -0x1

    return v1
.end method

.method runSendBroadcast(Ljava/io/PrintWriter;)I
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 694
    move-object/from16 v2, p1

    const/4 v0, -0x2

    :try_start_5
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_b1

    .line 697
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 696
    nop

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 702
    .local v15, "mIntent":Ljava/lang/String;
    const-string v3, "android.intent.action.START_OPPO_AT_SERVER"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0x10000000

    const/high16 v5, 0x1000000

    if-eqz v3, :cond_41

    .line 703
    const-string/jumbo v3, "oneplus.intent.action.START_OPPO_AT_SERVER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 705
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_6c

    .line 706
    :cond_41
    const-string v3, "android.intent.action.STOP_OPPO_AT_SERVER"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 707
    const-string/jumbo v3, "oneplus.intent.action.STOP_OPPO_AT_SERVER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_6c

    .line 710
    :cond_56
    const-string v3, "com.oem.engineermode.EngineerModeMain"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "com.oppo.engineermode.EngineerModeMain"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 711
    :cond_66
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 712
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    :cond_6c
    :goto_6c
    const/high16 v3, 0x400000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 716
    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v3, v2}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    move-object v14, v3

    .line 717
    .local v14, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/16 v17, 0x0

    if-nez v3, :cond_80

    const/4 v3, 0x0

    .line 718
    :goto_7e
    move-object v11, v3

    goto :goto_88

    :cond_80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    aput-object v4, v3, v17

    goto :goto_7e

    .line 725
    .local v11, "requiredPermissions":[Ljava/lang/String;
    :goto_88
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 726
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    iget v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move-object v5, v0

    move/from16 v19, v7

    move-object v7, v14

    move-object/from16 v20, v14

    move/from16 v14, v16

    .end local v14    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .local v20, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    move-object/from16 v21, v15

    move/from16 v15, v18

    .line 726
    .end local v15    # "mIntent":Ljava/lang/String;
    .local v21, "mIntent":Ljava/lang/String;
    move/from16 v16, v19

    invoke-interface/range {v3 .. v16}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 728
    move-object/from16 v3, v20

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->waitForFinish()V

    .line 729
    .end local v20    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .local v3, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    return v17

    .line 695
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .end local v11    # "requiredPermissions":[Ljava/lang/String;
    .end local v21    # "mIntent":Ljava/lang/String;
    :catch_b1
    move-exception v0

    move-object v3, v0

    .line 696
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method runSendTrimMemory(Ljava/io/PrintWriter;)I
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    const/4 v0, -0x2

    .line 2339
    .local v0, "userId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_3e

    .line 2340
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2342
    if-ne v0, v3, :cond_1

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: Can\'t use user \'all\'"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2344
    return v3

    .line 2347
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    return v3

    .line 2352
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2353
    .local v1, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2355
    .local v4, "levelArg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_e2

    goto :goto_95

    :sswitch_4f
    const-string v5, "HIDDEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    move v5, v6

    goto :goto_96

    :sswitch_59
    const-string v5, "RUNNING_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x3

    goto :goto_96

    :sswitch_63
    const-string v5, "COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x6

    goto :goto_96

    :sswitch_6d
    const-string v5, "MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x4

    goto :goto_96

    :sswitch_77
    const-string v5, "RUNNING_MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x1

    goto :goto_96

    :sswitch_81
    const-string v5, "BACKGROUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x2

    goto :goto_96

    :sswitch_8b
    const-string v5, "RUNNING_CRITICAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x5

    goto :goto_96

    :cond_95
    :goto_95
    move v5, v3

    :goto_96
    packed-switch v5, :pswitch_data_100

    .line 2379
    :try_start_99
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_9d} :catch_c8

    goto :goto_b2

    .line 2375
    :pswitch_9e
    const/16 v5, 0x50

    .line 2376
    .local v5, "level":I
    goto :goto_b4

    .line 2372
    .end local v5    # "level":I
    :pswitch_a1
    const/16 v5, 0xf

    .line 2373
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2369
    .end local v5    # "level":I
    :pswitch_a4
    const/16 v5, 0x3c

    .line 2370
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2366
    .end local v5    # "level":I
    :pswitch_a7
    const/16 v5, 0xa

    .line 2367
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2363
    .end local v5    # "level":I
    :pswitch_aa
    const/16 v5, 0x28

    .line 2364
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2360
    .end local v5    # "level":I
    :pswitch_ad
    const/4 v5, 0x5

    .line 2361
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2357
    .end local v5    # "level":I
    :pswitch_af
    const/16 v5, 0x14

    .line 2358
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2379
    .end local v5    # "level":I
    :goto_b2
    nop

    .line 2383
    .restart local v5    # "level":I
    nop

    .line 2382
    :goto_b4
    nop

    .line 2385
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v7, v1, v0, v5}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 2386
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Unknown error: failed to set trim level"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    return v3

    .line 2389
    :cond_c7
    return v6

    .line 2380
    .end local v5    # "level":I
    :catch_c8
    move-exception v5

    .line 2381
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown level option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2382
    return v3

    :sswitch_data_e2
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_8b
        -0x327dbed2 -> :sswitch_81
        -0xd10205d -> :sswitch_77
        0x9c2ed03 -> :sswitch_6d
        0xaeb2139 -> :sswitch_63
        0x3fef1094 -> :sswitch_59
        0x7f0191aa -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_af
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
    .end packed-switch
.end method

.method runSetAgentApp(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "agent":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v2, 0x0

    return v2
.end method

.method runSetDebugApp(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "wait":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 939
    .local v0, "persistent":Z
    .local v2, "wait":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 940
    const-string v3, "-w"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 941
    const/4 v2, 0x1

    goto :goto_4

    .line 942
    :cond_15
    const-string v3, "--persistent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 943
    const/4 v0, 0x1

    goto :goto_4

    .line 945
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    const/4 v1, -0x1

    return v1

    .line 950
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 951
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v5, v3, v2, v0}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 952
    return v1
.end method

.method runSetInactive(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2204
    const/4 v0, -0x2

    .line 2207
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2207
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2208
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2209
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2211
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    const/4 v1, -0x1

    return v1

    .line 2215
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2216
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2218
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "usagestats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v4

    .line 2220
    .local v4, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v4, v1, v5, v0}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    .line 2221
    const/4 v5, 0x0

    return v5
.end method

.method runSetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2248
    const/4 v0, -0x2

    .line 2251
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2251
    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_33

    .line 2252
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2255
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    return v3

    .line 2259
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2260
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2261
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2262
    .local v5, "bucket":I
    if-gez v5, :cond_42

    return v3

    .line 2263
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    move v3, v6

    .line 2266
    .local v3, "multiple":Z
    :goto_4c
    const-string/jumbo v7, "usagestats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v7

    .line 2268
    .local v7, "usm":Landroid/app/usage/IUsageStatsManager;
    if-nez v3, :cond_61

    .line 2269
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v1, v8, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    goto :goto_91

    .line 2271
    :cond_61
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    .local v8, "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    :goto_6e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    if-eqz v9, :cond_89

    .line 2274
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2275
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2276
    if-gez v5, :cond_80

    goto :goto_6e

    .line 2277
    :cond_80
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 2279
    :cond_89
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v9, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2280
    .local v9, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v7, v9, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 2282
    .end local v8    # "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v9    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :goto_91
    return v6
.end method

.method runSetWatchHeap(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 969
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 970
    .local v7, "limit":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method runStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2404
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2405
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_d2

    goto/16 :goto_7e

    :sswitch_e
    const-string/jumbo v1, "move-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x1

    goto :goto_7f

    :sswitch_19
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x0

    goto :goto_7f

    :sswitch_24
    const-string/jumbo v1, "positiontask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x5

    goto :goto_7f

    :sswitch_2f
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x6

    goto :goto_7f

    :sswitch_3a
    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x7

    goto :goto_7f

    :sswitch_45
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x2

    goto :goto_7f

    :sswitch_50
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/16 v1, 0x9

    goto :goto_7f

    :sswitch_5c
    const-string/jumbo v1, "move-top-activity-to-pinned-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/16 v1, 0x8

    goto :goto_7f

    :sswitch_68
    const-string/jumbo v1, "resize-docked-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x4

    goto :goto_7f

    :sswitch_73
    const-string/jumbo v1, "resize-animated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x3

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v1, v2

    :goto_7f
    packed-switch v1, :pswitch_data_fc

    .line 2427
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    return v2

    .line 2425
    :pswitch_a0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackRemove(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2423
    :pswitch_a5
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2421
    :pswitch_aa
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2419
    :pswitch_af
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2417
    :pswitch_b4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackPositionTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2415
    :pswitch_b9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResizeDocked(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2413
    :pswitch_be
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResizeAnimated(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2411
    :pswitch_c3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResize(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2409
    :pswitch_c8
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackMoveTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2407
    :pswitch_cd
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackStart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :sswitch_data_d2
    .sparse-switch
        -0x5c78e564 -> :sswitch_73
        -0x44ac447a -> :sswitch_68
        -0x407f3e65 -> :sswitch_5c
        -0x37b5077c -> :sswitch_50
        -0x37b2634c -> :sswitch_45
        0x3164ae -> :sswitch_3a
        0x32b09e -> :sswitch_2f
        0x216122e -> :sswitch_24
        0x68ac462 -> :sswitch_19
        0x3ceed601 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_c8
        :pswitch_c3
        :pswitch_be
        :pswitch_b9
        :pswitch_b4
        :pswitch_af
        :pswitch_aa
        :pswitch_a5
        :pswitch_a0
    .end packed-switch
.end method

.method runStackInfo(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2592
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2593
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2594
    .local v1, "activityType":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 2595
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2596
    const/4 v3, 0x0

    return v3
.end method

.method runStackList(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2584
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    .line 2585
    .local v0, "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 2586
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2587
    .end local v2    # "info":Landroid/app/ActivityManager$StackInfo;
    goto :goto_a

    .line 2588
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method runStackMoveTask(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2496
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2497
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2498
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2499
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2500
    .local v3, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2502
    .local v4, "toTopStr":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2503
    const/4 v5, 0x1

    .line 2503
    .local v5, "toTop":Z
    :goto_1e
    goto :goto_29

    .line 2504
    .end local v5    # "toTop":Z
    :cond_1f
    const-string v5, "false"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2505
    const/4 v5, 0x0

    goto :goto_1e

    .line 2508
    .restart local v5    # "toTop":Z
    :goto_29
    nop

    .line 2511
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v1, v3, v5}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    .line 2512
    const/4 v6, 0x0

    return v6

    .line 2507
    .end local v5    # "toTop":Z
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: bad toTop arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2508
    const/4 v5, -0x1

    return v5
.end method

.method runStackPositionTask(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2572
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2573
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2574
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2575
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2576
    .local v3, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2577
    .local v4, "positionStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2579
    .local v5, "position":I
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v1, v3, v5}, Landroid/app/IActivityManager;->positionTaskInStack(III)V

    .line 2580
    const/4 v6, 0x0

    return v6
.end method

.method runStackRemove(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2600
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2601
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2602
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->removeStack(I)V

    .line 2603
    const/4 v2, 0x0

    return v2
.end method

.method runStackResize(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2516
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2517
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2518
    .local v1, "stackId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2519
    .local v2, "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_19

    .line 2520
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2521
    const/4 v3, -0x1

    return v3

    .line 2523
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStack(ILandroid/graphics/Rect;I)I

    move-result v3

    return v3
.end method

.method runStackResizeAnimated(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2528
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2530
    .local v1, "stackId":I
    const-string/jumbo v2, "null"

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2531
    const/4 v2, 0x0

    .line 2531
    .local v2, "bounds":Landroid/graphics/Rect;
    goto :goto_28

    .line 2533
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_17
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2534
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_28

    .line 2535
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2536
    const/4 v3, -0x1

    return v3

    .line 2539
    :cond_28
    :goto_28
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I

    move-result v3

    return v3
.end method

.method runStackResizeDocked(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2554
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2555
    .local v7, "taskBounds":Landroid/graphics/Rect;
    if-eqz v6, :cond_19

    if-nez v7, :cond_d

    goto :goto_19

    .line 2559
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2560
    const/4 v0, 0x0

    return v0

    .line 2556
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: invalid input bounds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    const/4 v0, -0x1

    return v0
.end method

.method runStackStart(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2471
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2472
    .local v0, "displayIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2475
    .local v1, "displayId":I
    const/4 v2, -0x2

    :try_start_9
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_d} :catch_18

    .line 2478
    .local v2, "intent":Landroid/content/Intent;
    nop

    .line 2477
    nop

    .line 2480
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->createStackOnDisplay(I)I

    move-result v3

    .line 2481
    .local v3, "stackId":I
    nop

    .line 2492
    const/4 v4, 0x0

    return v4

    .line 2476
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "stackId":I
    :catch_18
    move-exception v2

    .line 2477
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method runStartActivity(Ljava/io/PrintWriter;)I
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 377
    move-object/from16 v2, p1

    const/4 v0, -0x2

    :try_start_5
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_37b

    move-object v15, v0

    .line 380
    .local v15, "intent":Landroid/content/Intent;
    nop

    .line 379
    nop

    .line 382
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v14, -0x1

    const/4 v13, 0x1

    if-ne v0, v14, :cond_1c

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    return v13

    .line 387
    :cond_1c
    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_44

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_44

    const-string v3, "content"

    .line 389
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 390
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .end local v0    # "mimeType":Ljava/lang/String;
    .local v12, "mimeType":Ljava/lang/String;
    :cond_44
    move-object v12, v0

    :goto_45
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_d7

    .line 396
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 397
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "packageName":Ljava/lang/String;
    goto :goto_97

    .line 399
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_59
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    iget v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v0, v15, v12, v11, v3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 401
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_be

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_6e

    goto :goto_be

    .line 405
    :cond_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v13, :cond_8d

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    return v13

    .line 411
    :cond_8d
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 411
    .local v0, "packageName":Ljava/lang/String;
    :goto_97
    move-object v3, v0

    .line 413
    .end local v0    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 415
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 417
    const-wide/16 v4, 0xfa

    :try_start_b8
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bb} :catch_bc

    .line 419
    goto :goto_d7

    .line 418
    :catch_bc
    move-exception v0

    .line 418
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_d7

    .line 402
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_be
    :goto_be
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Intent does not match any activities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    return v13

    .line 422
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_d7
    :goto_d7
    const/4 v0, 0x0

    .line 424
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-nez v3, :cond_e0

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v3, :cond_113

    .line 425
    :cond_e0
    const/4 v3, 0x0

    .line 426
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-eqz v4, :cond_f1

    .line 427
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    const-string/jumbo v5, "w"

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 428
    if-nez v3, :cond_f1

    .line 429
    return v13

    .line 432
    :cond_f1
    new-instance v4, Landroid/app/ProfilerInfo;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    invoke-direct/range {v16 .. v23}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v0, v4

    .line 436
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 438
    const/high16 v3, 0x10000000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 440
    const/16 v16, 0x0

    .line 442
    .local v16, "result":Landroid/app/WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 443
    .local v17, "startTime":J
    const/4 v3, 0x0

    .line 444
    .local v3, "options":Landroid/app/ActivityOptions;
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v4, v14, :cond_143

    .line 445
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 446
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 448
    :cond_143
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v4, :cond_152

    .line 449
    if-nez v3, :cond_14d

    .line 450
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 452
    :cond_14d
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 454
    :cond_152
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v4, :cond_161

    .line 455
    if-nez v3, :cond_15c

    .line 456
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 458
    :cond_15c
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 460
    :cond_161
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v4, v14, :cond_177

    .line 461
    if-nez v3, :cond_16b

    .line 462
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 464
    :cond_16b
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 466
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v4, :cond_177

    .line 467
    invoke-virtual {v3, v13, v13}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 470
    :cond_177
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v4, :cond_184

    .line 471
    if-nez v3, :cond_181

    .line 472
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 474
    :cond_181
    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 476
    .end local v3    # "options":Landroid/app/ActivityOptions;
    .local v10, "options":Landroid/app/ActivityOptions;
    :cond_184
    move-object v10, v3

    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1c4

    .line 477
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    iget v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 479
    if-eqz v10, :cond_19d

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_19a
    move-object/from16 v20, v4

    goto :goto_19e

    :cond_19d
    goto :goto_19a

    :goto_19e
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 477
    move/from16 v21, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    move/from16 v22, v7

    move-object v7, v12

    move-object/from16 v24, v10

    move/from16 v10, v19

    .line 477
    .end local v10    # "options":Landroid/app/ActivityOptions;
    .local v24, "options":Landroid/app/ActivityOptions;
    move/from16 v19, v11

    move/from16 v11, v22

    move-object/from16 v22, v12

    move-object v12, v0

    .line 477
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v22, "mimeType":Ljava/lang/String;
    move/from16 v23, v13

    move-object/from16 v13, v20

    move/from16 v20, v14

    move/from16 v14, v21

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v3

    .line 480
    .end local v16    # "result":Landroid/app/WaitResult;
    .local v3, "result":Landroid/app/WaitResult;
    iget v4, v3, Landroid/app/WaitResult;->result:I

    .line 482
    .local v4, "res":I
    move-object/from16 v16, v3

    goto :goto_1f4

    .line 482
    .end local v3    # "result":Landroid/app/WaitResult;
    .end local v4    # "res":I
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v24    # "options":Landroid/app/ActivityOptions;
    .restart local v10    # "options":Landroid/app/ActivityOptions;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_1c4
    move-object/from16 v24, v10

    move/from16 v19, v11

    move-object/from16 v22, v12

    move/from16 v23, v13

    move/from16 v20, v14

    .line 482
    .end local v10    # "options":Landroid/app/ActivityOptions;
    .end local v12    # "mimeType":Ljava/lang/String;
    .restart local v22    # "mimeType":Ljava/lang/String;
    .restart local v24    # "options":Landroid/app/ActivityOptions;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 484
    move-object/from16 v14, v24

    if-eqz v14, :cond_1e1

    .line 484
    .end local v24    # "options":Landroid/app/ActivityOptions;
    .local v14, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_1df
    move-object v13, v4

    goto :goto_1e2

    :cond_1e1
    goto :goto_1df

    :goto_1e2
    iget v12, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 482
    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v7, v22

    move/from16 v21, v12

    move-object v12, v0

    move-object/from16 v24, v14

    move/from16 v14, v21

    .line 482
    .end local v14    # "options":Landroid/app/ActivityOptions;
    .restart local v24    # "options":Landroid/app/ActivityOptions;
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v4

    .line 482
    .restart local v4    # "res":I
    :goto_1f4
    move v3, v4

    .line 486
    .end local v4    # "res":I
    .local v3, "res":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 487
    .local v4, "endTime":J
    iget-boolean v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v6, :cond_1ff

    move-object v6, v2

    goto :goto_203

    :cond_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 488
    .local v6, "out":Ljava/io/PrintWriter;
    :goto_203
    const/4 v7, 0x0

    .line 489
    .local v7, "launched":Z
    const/16 v8, 0x64

    if-eq v3, v8, :cond_2a8

    packed-switch v3, :pswitch_data_388

    packed-switch v3, :pswitch_data_390

    packed-switch v3, :pswitch_data_39c

    .line 550
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, unknown error code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2af

    .line 500
    :pswitch_227
    const/4 v7, 0x1

    .line 501
    const-string v8, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    goto/16 :goto_2af

    .line 513
    :pswitch_22f
    const/4 v7, 0x1

    .line 514
    const-string v8, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    goto/16 :goto_2af

    .line 507
    :pswitch_237
    const/4 v7, 0x1

    .line 508
    const-string v8, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    goto/16 :goto_2af

    .line 491
    :pswitch_23f
    const/4 v7, 0x1

    .line 492
    goto :goto_2af

    .line 519
    :pswitch_241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, unable to resolve "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v15}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 519
    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    goto :goto_2af

    .line 524
    :pswitch_25a
    const-string v8, "Error type 3"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 525
    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    goto :goto_2af

    .line 530
    :pswitch_281
    const-string v8, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    goto :goto_2af

    .line 535
    :pswitch_287
    const-string v8, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    goto :goto_2af

    .line 540
    :pswitch_28d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    goto :goto_2af

    .line 545
    :pswitch_2a2
    const-string v8, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    goto :goto_2af

    .line 494
    :cond_2a8
    const/4 v7, 0x1

    .line 495
    const-string v8, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    nop

    .line 554
    :goto_2af
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 555
    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v8, :cond_35f

    if-eqz v7, :cond_35f

    .line 556
    if-nez v16, :cond_2c6

    .line 557
    new-instance v8, Landroid/app/WaitResult;

    invoke-direct {v8}, Landroid/app/WaitResult;-><init>()V

    .line 558
    .end local v16    # "result":Landroid/app/WaitResult;
    .local v8, "result":Landroid/app/WaitResult;
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_2c8

    .line 560
    .end local v8    # "result":Landroid/app/WaitResult;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_2c6
    move-object/from16 v8, v16

    .line 560
    .end local v16    # "result":Landroid/app/WaitResult;
    .restart local v8    # "result":Landroid/app/WaitResult;
    :goto_2c8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v8, Landroid/app/WaitResult;->timeout:Z

    if-eqz v10, :cond_2da

    const-string/jumbo v10, "timeout"

    goto :goto_2dd

    :cond_2da
    const-string/jumbo v10, "ok"

    :goto_2dd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    iget-object v9, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v9, :cond_305

    .line 562
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    :cond_305
    iget-wide v9, v8, Landroid/app/WaitResult;->thisTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_323

    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ThisTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v8, Landroid/app/WaitResult;->thisTime:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    :cond_323
    iget-wide v9, v8, Landroid/app/WaitResult;->totalTime:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_33f

    .line 568
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TotalTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    :cond_33f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WaitTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v4, v17

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    const-string v9, "Complete"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 574
    move-object/from16 v16, v8

    .line 574
    .end local v8    # "result":Landroid/app/WaitResult;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_35f
    iget v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 575
    iget v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-lez v8, :cond_36e

    .line 576
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v8}, Landroid/app/IActivityManager;->unhandledBack()V

    .line 578
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v3    # "res":I
    .end local v4    # "endTime":J
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "launched":Z
    .end local v16    # "result":Landroid/app/WaitResult;
    .end local v17    # "startTime":J
    .end local v24    # "options":Landroid/app/ActivityOptions;
    :cond_36e
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v0, :cond_373

    .line 579
    return v19

    .line 394
    :cond_373
    move/from16 v14, v20

    move-object/from16 v12, v22

    move/from16 v13, v23

    goto/16 :goto_45

    .line 378
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v22    # "mimeType":Ljava/lang/String;
    :catch_37b
    move-exception v0

    move-object v3, v0

    .line 379
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_388
    .packed-switch -0x62
        :pswitch_2a2
        :pswitch_28d
    .end packed-switch

    :pswitch_data_390
    .packed-switch -0x5e
        :pswitch_287
        :pswitch_281
        :pswitch_25a
        :pswitch_241
    .end packed-switch

    :pswitch_data_39c
    .packed-switch 0x0
        :pswitch_23f
        :pswitch_237
        :pswitch_22f
        :pswitch_227
    .end packed-switch
.end method

.method runStartService(Ljava/io/PrintWriter;Z)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "asForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 586
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_b7

    .line 589
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 588
    nop

    .line 590
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_16

    .line 591
    const-string v2, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    return v9

    .line 594
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 596
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.android.shell"

    iget v8, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move-object v4, v1

    move v6, p2

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 598
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_46

    .line 599
    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    return v9

    .line 601
    :cond_46
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Requires permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    return v9

    .line 604
    :cond_6b
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    return v9

    .line 607
    :cond_90
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    return v9

    .line 611
    :cond_b5
    const/4 v3, 0x0

    return v3

    .line 587
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :catch_b7
    move-exception v1

    .line 588
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStartUser(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1706
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result v1

    .line 1708
    .local v1, "success":Z
    if-eqz v1, :cond_16

    .line 1709
    const-string v2, "Success: user started"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    .line 1711
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: could not start user"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    :goto_1f
    const/4 v2, 0x0

    return v2
.end method

.method runStopService(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 618
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_55

    .line 621
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 620
    nop

    .line 622
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 623
    const-string v2, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    return v3

    .line 626
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 628
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 629
    .local v2, "result":I
    if-nez v2, :cond_42

    .line 630
    const-string v4, "Service not stopped: was not running."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    return v3

    .line 632
    :cond_42
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4b

    .line 633
    const-string v4, "Service stopped"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    return v3

    .line 635
    :cond_4b
    if-ne v2, v3, :cond_53

    .line 636
    const-string v4, "Error stopping service"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    return v3

    .line 639
    :cond_53
    const/4 v3, 0x0

    return v3

    .line 619
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":I
    :catch_55
    move-exception v1

    .line 620
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStopUser(Ljava/io/PrintWriter;)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1762
    const/4 v0, 0x0

    .line 1763
    .local v0, "wait":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 1765
    .local v0, "force":Z
    .local v2, "wait":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, -0x1

    if-eqz v3, :cond_39

    .line 1766
    const-string v3, "-w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1767
    const/4 v2, 0x1

    goto :goto_4

    .line 1768
    :cond_16
    const-string v3, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1769
    const/4 v0, 0x1

    goto :goto_4

    .line 1771
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    return v5

    .line 1775
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1776
    .local v3, "user":I
    if-eqz v2, :cond_49

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v6}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>()V

    goto :goto_4a

    :cond_49
    const/4 v6, 0x0

    .line 1778
    .local v6, "callback":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    :goto_4a
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v7, v3, v0, v6}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v7

    .line 1779
    .local v7, "res":I
    if-eqz v7, :cond_a7

    .line 1780
    const-string v1, ""

    .line 1781
    .local v1, "txt":Ljava/lang/String;
    packed-switch v7, :pswitch_data_ae

    goto :goto_8b

    .line 1786
    :pswitch_58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Unknown user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1787
    goto :goto_8b

    .line 1783
    :pswitch_6f
    const-string v1, " (Can\'t stop current user)"

    .line 1784
    goto :goto_8b

    .line 1789
    :pswitch_72
    const-string v1, " (System user cannot be stopped)"

    .line 1790
    goto :goto_8b

    .line 1792
    :pswitch_75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Can\'t stop user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " - one of its related users can\'t be stopped)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1796
    :goto_8b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Switch failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    return v5

    .line 1798
    .end local v1    # "txt":Ljava/lang/String;
    :cond_a7
    if-eqz v6, :cond_ac

    .line 1799
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V

    .line 1801
    :cond_ac
    return v1

    nop

    :pswitch_data_ae
    .packed-switch -0x4
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_58
    .end packed-switch
.end method

.method runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2794
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2795
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 2796
    const/4 v1, -0x1

    return v1

    .line 2798
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2799
    const/4 v1, 0x0

    return v1
.end method

.method runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2803
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2804
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 2805
    const/4 v1, -0x1

    return v1

    .line 2807
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2808
    const/4 v1, 0x0

    return v1
.end method

.method runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2198
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2199
    .local v0, "suppress":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->suppressResizeConfigChanges(Z)V

    .line 2200
    const/4 v1, 0x0

    return v1
.end method

.method runSwitchUser(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1689
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1690
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: disallowed switching user"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    const/4 v1, -0x1

    return v1

    .line 1693
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1694
    .local v1, "user":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 1695
    const/4 v2, 0x0

    return v2
.end method

.method runTask(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2642
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2643
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2644
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskLock(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2645
    :cond_12
    const-string/jumbo v1, "resizeable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2646
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResizeable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2647
    :cond_20
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2648
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResize(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2649
    :cond_2e
    const-string v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2650
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskFocus(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2652
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    const/4 v1, -0x1

    return v1
.end method

.method runTaskFocus(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2764
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2765
    .local v0, "taskId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus to task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setFocusedTask(I)V

    .line 2767
    const/4 v1, 0x0

    return v1
.end method

.method runTaskLock(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2658
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2659
    .local v0, "taskIdStr":Ljava/lang/String;
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2660
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V

    goto :goto_1c

    .line 2662
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2663
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V

    .line 2665
    .end local v1    # "taskId":I
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, ""

    goto :goto_34

    :cond_31
    const-string/jumbo v2, "not "

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "in lockTaskMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2667
    const/4 v1, 0x0

    return v1
.end method

.method runTaskResize(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2680
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2681
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2682
    .local v1, "taskId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2683
    .local v2, "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_19

    .line 2684
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2685
    const/4 v3, -0x1

    return v3

    .line 2687
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    .line 2688
    return v3
.end method

.method runTaskResizeable(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2671
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2672
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2673
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2674
    .local v2, "resizeableStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2675
    .local v3, "resizeableMode":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityManager;->setTaskResizeable(II)V

    .line 2676
    const/4 v4, 0x0

    return v4
.end method

.method runToUri(Ljava/io/PrintWriter;I)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1679
    const/4 v0, -0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_5} :catch_10

    .line 1682
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1681
    nop

    .line 1683
    invoke-virtual {v0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    const/4 v1, 0x0

    return v1

    .line 1680
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_10
    move-exception v0

    .line 1681
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method runTraceIpc(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 735
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 736
    :cond_12
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStop(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 739
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown trace ipc command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    const/4 v1, -0x1

    return v1
.end method

.method runTraceIpcStart(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    const-string v0, "Starting IPC tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 747
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method runTraceIpcStop(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 754
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 755
    .local v1, "filename":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 755
    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_2f

    .line 756
    const-string v2, "--dump-file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 759
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    return v4

    .line 763
    :cond_2f
    if-nez v1, :cond_37

    .line 764
    const-string v2, "Error: Specify filename to dump logs to."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    return v4

    .line 768
    :cond_37
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 770
    const-string/jumbo v5, "w"

    invoke-virtual {p0, v1, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 771
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v5, :cond_49

    .line 772
    return v4

    .line 776
    :cond_49
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v5}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 777
    const-string v6, "STOP TRACE FAILED."

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    return v4

    .line 781
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    const/4 v4, 0x0

    return v4
.end method

.method runTrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1824
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1827
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_21

    .line 1828
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 1829
    const-string v1, "Association tracking started."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 1831
    :cond_21
    const-string v1, "Association tracking already enabled."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1834
    const/4 v0, 0x0

    return v0

    .line 1833
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUnlockUser(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1725
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1726
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1727
    .local v1, "token":[B
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1728
    .local v2, "secret":[B
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v3

    .line 1729
    .local v3, "success":Z
    if-eqz v3, :cond_27

    .line 1730
    const-string v4, "Success: user unlocked"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 1732
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: could not unlock user"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    :goto_30
    const/4 v4, 0x0

    return v4
.end method

.method runUntrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1838
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1841
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 1842
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 1843
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1844
    const-string v1, "Association tracking stopped."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 1846
    :cond_28
    const-string v1, "Association tracking not running."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1849
    return v2

    .line 1848
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUpdateApplicationInfo(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2812
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2813
    .local v0, "userid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2814
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2816
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 2817
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 2819
    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 2820
    const-string v2, "Packages updated with most recent ApplicationInfos."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2821
    const/4 v2, 0x0

    return v2
.end method

.method runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2834
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;)V

    .line 2835
    const/4 v0, 0x0

    return v0
.end method

.method runWatchUids(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1585
    const/4 v0, -0x1

    move v1, v0

    .line 1586
    .local v1, "uid":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1587
    const-string v2, "--oom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1588
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1590
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    return v0

    .line 1596
    :cond_33
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v2, p1, v4, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V

    .line 1597
    .local v0, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->run()V

    .line 1598
    const/4 v2, 0x0

    return v2
.end method

.method runWrite(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2771
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->flush()V

    .line 2774
    const-string v0, "All tasks persisted."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2775
    const/4 v0, 0x0

    return v0
.end method

.method setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "side"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 2622
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_36

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x72

    if-eq v0, v1, :cond_20

    const/16 v1, 0x74

    if-eq v0, v1, :cond_15

    goto :goto_40

    :cond_15
    const-string/jumbo v0, "t"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    goto :goto_41

    :cond_20
    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_2b
    const-string/jumbo v0, "l"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    goto :goto_41

    :cond_36
    const-string v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, -0x1

    :goto_41
    packed-switch v0, :pswitch_data_6c

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown set side: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_69

    .line 2633
    :pswitch_5d
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2634
    goto :goto_69

    .line 2630
    :pswitch_60
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 2631
    goto :goto_69

    .line 2627
    :pswitch_63
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 2628
    goto :goto_69

    .line 2624
    :pswitch_66
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 2625
    nop

    .line 2639
    :goto_69
    return-void

    nop

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
    .end packed-switch
.end method

.method taskResize(ILandroid/graphics/Rect;IZ)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delay_ms"    # I
    .param p4, "pretendUserResize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2693
    move v0, p4

    .line 2694
    .local v0, "resizeMode":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2696
    int-to-long v1, p3

    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2698
    goto :goto_c

    .line 2697
    :catch_b
    move-exception v1

    .line 2699
    :goto_c
    return-void
.end method
