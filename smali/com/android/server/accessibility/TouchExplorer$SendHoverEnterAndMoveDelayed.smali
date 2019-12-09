.class Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    const-string p1, "SendHoverEnterAndMoveDelayed"

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    .line 1134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .locals 0

    .line 1131
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result p0

    return p0
.end method

.method private clear()V
    .locals 2

    .line 1164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    .line 1165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1166
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1167
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1167
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1170
    :cond_0
    return-void
.end method

.method private isPending()Z
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1153
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1155
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    .line 1157
    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .line 1173
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1177
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;ZII)V
    .locals 0

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1142
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 1143
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    .line 1144
    iput p4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1145
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {p1}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    return-void
.end method

.method public run()V
    .locals 7

    .line 1181
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1183
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1194
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    const/4 v4, 0x7

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v6, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    .line 1204
    return-void
.end method
