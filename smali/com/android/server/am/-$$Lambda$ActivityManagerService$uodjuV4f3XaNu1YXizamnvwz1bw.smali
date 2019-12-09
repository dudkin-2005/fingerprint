.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field private final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field private final synthetic f$10:Z

.field private final synthetic f$2:J

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:[I

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:Ljava/lang/String;

.field private final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$2:J

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$3:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$5:[I

    iput p8, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$6:I

    iput p9, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$7:I

    iput-object p10, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$8:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$9:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$10:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$2:J

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$5:[I

    iget v7, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$6:I

    iget v8, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$7:I

    iget-object v9, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$8:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$9:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$uodjuV4f3XaNu1YXizamnvwz1bw;->f$10:Z

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->lambda$startProcessLocked$0(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
