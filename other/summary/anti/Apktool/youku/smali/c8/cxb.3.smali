.class public Lc8/cxb;
.super Ljava/lang/Object;
.source "MtopTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gxb;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gxb;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/gxb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gxb;

    .prologue
    .line 177
    iput-object p1, p0, Lc8/cxb;->this$0:Lc8/gxb;

    iput-object p2, p0, Lc8/cxb;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    const-string/jumbo v0, "MtopTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailed -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/cxb;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lc8/cxb;->this$0:Lc8/gxb;

    invoke-static {v0}, Lc8/gxb;->access$100(Lc8/gxb;)Lc8/Uwb;

    move-result-object v0

    iget-object v1, p0, Lc8/cxb;->this$0:Lc8/gxb;

    invoke-static {v1}, Lc8/gxb;->access$200(Lc8/gxb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/cxb;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/Uwb;->httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
