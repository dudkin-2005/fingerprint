.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$EHyYchv2MiBo1aywGXM5U159N2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$EHyYchv2MiBo1aywGXM5U159N2g;->f$0:Z

    iput-object p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$EHyYchv2MiBo1aywGXM5U159N2g;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$EHyYchv2MiBo1aywGXM5U159N2g;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$EHyYchv2MiBo1aywGXM5U159N2g;->f$0:Z

    iget-object v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$EHyYchv2MiBo1aywGXM5U159N2g;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$EHyYchv2MiBo1aywGXM5U159N2g;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$op_reboot$3(ZLjava/lang/String;Z)V

    return-void
.end method
