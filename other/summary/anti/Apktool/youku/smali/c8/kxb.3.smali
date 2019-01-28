.class public Lc8/kxb;
.super Ljava/lang/Object;
.source "NetworkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nxb;->onFinished([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nxb;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lc8/nxb;[B)V
    .locals 0
    .param p1, "this$0"    # Lc8/nxb;

    .prologue
    .line 175
    iput-object p1, p0, Lc8/kxb;->this$0:Lc8/nxb;

    iput-object p2, p0, Lc8/kxb;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    const-string/jumbo v0, "NetworkTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/kxb;->this$0:Lc8/nxb;

    invoke-static {v2}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onFinished -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/kxb;->val$data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lc8/kxb;->this$0:Lc8/nxb;

    iget-object v1, p0, Lc8/kxb;->val$data:[B

    iget-object v2, p0, Lc8/kxb;->this$0:Lc8/nxb;

    invoke-static {v2}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/nxb;->access$500(Lc8/nxb;[BLc8/Twb;)V

    .line 180
    return-void
.end method
