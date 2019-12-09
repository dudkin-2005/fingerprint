.class Landroid/net/ip/IpReachabilityMonitor$1;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpReachabilityMonitor;->dump(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpReachabilityMonitor;


# direct methods
.method constructor <init>(Landroid/net/ip/IpReachabilityMonitor;)V
    .locals 0

    .line 224
    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor$1;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 227
    iget-object p2, p0, Landroid/net/ip/IpReachabilityMonitor$1;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    const-string v0, "\n"

    invoke-static {p2, v0}, Landroid/net/ip/IpReachabilityMonitor;->access$000(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    return-void
.end method
