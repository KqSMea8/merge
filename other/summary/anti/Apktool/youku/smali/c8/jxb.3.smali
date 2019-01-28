.class public Lc8/jxb;
.super Ljava/lang/Object;
.source "NetworkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nxb;->onDataReceived(Lc8/oM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nxb;

.field final synthetic val$event:Lc8/oM;


# direct methods
.method constructor <init>(Lc8/nxb;Lc8/oM;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nxb;

    .prologue
    .line 158
    iput-object p1, p0, Lc8/jxb;->this$0:Lc8/nxb;

    iput-object p2, p0, Lc8/jxb;->val$event:Lc8/oM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Lc8/jxb;->val$event:Lc8/oM;

    invoke-interface {v2}, Lc8/oM;->getBytedata()[B

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    .line 162
    .local v0, "length":I
    :goto_0
    const-string/jumbo v2, "NetworkTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/jxb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " onDataReceived -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lc8/jxb;->this$0:Lc8/nxb;

    invoke-static {v2}, Lc8/nxb;->access$200(Lc8/nxb;)Lc8/Uwb;

    move-result-object v2

    iget-object v3, p0, Lc8/jxb;->this$0:Lc8/nxb;

    invoke-static {v3}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lc8/Uwb;->dataReceived(Ljava/lang/String;II)V

    .line 164
    return-void

    .line 161
    .end local v0    # "length":I
    :cond_0
    iget-object v2, p0, Lc8/jxb;->val$event:Lc8/oM;

    invoke-interface {v2}, Lc8/oM;->getBytedata()[B

    move-result-object v2

    array-length v0, v2

    goto :goto_0
.end method
