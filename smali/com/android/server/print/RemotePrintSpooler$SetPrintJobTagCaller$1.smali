.class Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public onSetPrintJobTagResult(ZI)V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$900(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    .line 791
    return-void
.end method
