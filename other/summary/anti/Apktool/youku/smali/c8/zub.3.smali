.class public Lc8/zub;
.super Ljava/lang/Object;
.source "WXMtopRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cub;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Cub;

.field final synthetic val$response:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lc8/Cub;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Cub;

    .prologue
    .line 377
    iput-object p1, p0, Lc8/zub;->this$1:Lc8/Cub;

    iput-object p2, p0, Lc8/zub;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 380
    iget-object v0, p0, Lc8/zub;->this$1:Lc8/Cub;

    invoke-static {v0}, Lc8/Cub;->access$700(Lc8/Cub;)Lc8/gxb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lc8/zub;->this$1:Lc8/Cub;

    invoke-static {v0}, Lc8/Cub;->access$700(Lc8/Cub;)Lc8/gxb;

    move-result-object v0

    iget-object v1, p0, Lc8/zub;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0, v1}, Lc8/gxb;->onResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lc8/zub;->this$1:Lc8/Cub;

    iget-object v0, v0, Lc8/Cub;->this$0:Lc8/Dub;

    iget-object v1, p0, Lc8/zub;->this$1:Lc8/Cub;

    iget-object v1, v1, Lc8/Cub;->this$0:Lc8/Dub;

    iget-object v2, p0, Lc8/zub;->this$1:Lc8/Cub;

    invoke-static {v2}, Lc8/Cub;->access$800(Lc8/Cub;)Lc8/EWf;

    move-result-object v2

    iget-object v3, p0, Lc8/zub;->this$1:Lc8/Cub;

    invoke-static {v3}, Lc8/Cub;->access$900(Lc8/Cub;)Lc8/EWf;

    move-result-object v3

    iget-object v4, p0, Lc8/zub;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {v1, v2, v3, v4}, Lc8/Dub;->access$600(Lc8/Dub;Lc8/EWf;Lc8/EWf;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/uub;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Dub;->access$200(Lc8/Dub;Lc8/uub;)V

    .line 384
    return-void
.end method
