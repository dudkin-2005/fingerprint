.class Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    .line 734
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .registers 4
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    .line 737
    .local p1, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    # invokes: Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->access$600(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;Ljava/lang/Object;I)V

    .line 738
    return-void
.end method
