.class public Lc8/qxb;
.super Ljava/lang/Object;
.source "PhenixTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sxb;->onFail(Lc8/pxf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sxb;

.field final synthetic val$event:Lc8/pxf;


# direct methods
.method constructor <init>(Lc8/sxb;Lc8/pxf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sxb;

    .prologue
    .line 116
    iput-object p1, p0, Lc8/qxb;->this$0:Lc8/sxb;

    iput-object p2, p0, Lc8/qxb;->val$event:Lc8/pxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lc8/qxb;->this$0:Lc8/sxb;

    invoke-static {v0}, Lc8/sxb;->access$100(Lc8/sxb;)Lc8/Uwb;

    move-result-object v0

    iget-object v1, p0, Lc8/qxb;->this$0:Lc8/sxb;

    invoke-static {v1}, Lc8/sxb;->access$000(Lc8/sxb;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/qxb;->val$event:Lc8/pxf;

    invoke-virtual {v3}, Lc8/pxf;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/Uwb;->httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method
