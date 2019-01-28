.class public Lc8/SMf;
.super Ljava/lang/Object;
.source "MtopJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VMf;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/VMf;

.field final synthetic val$pojo:Lc8/cOp;

.field final synthetic val$requestContext:Ljava/lang/Object;

.field final synthetic val$requestType:I

.field final synthetic val$response:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lc8/VMf;ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lc8/SMf;->this$0:Lc8/VMf;

    iput p2, p0, Lc8/SMf;->val$requestType:I

    iput-object p3, p0, Lc8/SMf;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    iput-object p4, p0, Lc8/SMf;->val$pojo:Lc8/cOp;

    iput-object p5, p0, Lc8/SMf;->val$requestContext:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Lc8/SMf;->this$0:Lc8/VMf;

    invoke-static {v1}, Lc8/VMf;->access$000(Lc8/VMf;)Lc8/AMf;

    move-result-object v1

    iget v2, p0, Lc8/SMf;->val$requestType:I

    iget-object v3, p0, Lc8/SMf;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v4, p0, Lc8/SMf;->val$pojo:Lc8/cOp;

    iget-object v5, p0, Lc8/SMf;->val$requestContext:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/AMf;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.MtopJSBridge"

    const-string/jumbo v2, "do onSuccess callback error."

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
