.class public Lc8/gfn;
.super Ljava/lang/Object;
.source "DownloadAccManager.java"

# interfaces
.implements Lc8/qfn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ofn;->requestLegalInfo(Lc8/qfn;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/qfn",
        "<",
        "Lcom/youku/service/download/response/VipDownloadLegalData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ofn;

.field final synthetic val$listener:Lc8/qfn;


# direct methods
.method constructor <init>(Lc8/ofn;Lc8/qfn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ofn;

    .prologue
    .line 261
    iput-object p1, p0, Lc8/gfn;->this$0:Lc8/ofn;

    iput-object p2, p0, Lc8/gfn;->val$listener:Lc8/qfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDataFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lc8/gfn;->val$listener:Lc8/qfn;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lc8/gfn;->val$listener:Lc8/qfn;

    invoke-interface {v0, p1}, Lc8/qfn;->onGetDataFail(Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onGetDataSuccess(Lcom/youku/service/download/response/VipDownloadLegalData;Ljava/lang/String;)V
    .locals 2
    .param p1, "vipDownloadLegalData"    # Lcom/youku/service/download/response/VipDownloadLegalData;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lc8/gfn;->this$0:Lc8/ofn;

    invoke-static {v0}, Lc8/ofn;->access$200(Lc8/ofn;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lc8/gfn;->this$0:Lc8/ofn;

    invoke-virtual {v0}, Lc8/ofn;->stopDownloadAcc()Z

    .line 267
    :cond_0
    iget-object v0, p0, Lc8/gfn;->this$0:Lc8/ofn;

    iget-object v1, p0, Lc8/gfn;->this$0:Lc8/ofn;

    invoke-virtual {v1, p1}, Lc8/ofn;->convertLegalInfo(Lcom/youku/service/download/response/VipDownloadLegalData;)Lc8/Sen;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ofn;->access$302(Lc8/ofn;Lc8/Sen;)Lc8/Sen;

    .line 269
    iget-object v0, p0, Lc8/gfn;->this$0:Lc8/ofn;

    invoke-static {v0}, Lc8/ofn;->access$300(Lc8/ofn;)Lc8/Sen;

    move-result-object v0

    invoke-static {v0}, Lc8/rfn;->updateLegalInfo(Lc8/Sen;)V

    .line 270
    iget-object v0, p0, Lc8/gfn;->val$listener:Lc8/qfn;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lc8/gfn;->val$listener:Lc8/qfn;

    invoke-interface {v0, p1, p2}, Lc8/qfn;->onGetDataSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :cond_1
    return-void
.end method

.method public bridge synthetic onGetDataSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Lcom/youku/service/download/response/VipDownloadLegalData;

    invoke-virtual {p0, p1, p2}, Lc8/gfn;->onGetDataSuccess(Lcom/youku/service/download/response/VipDownloadLegalData;Ljava/lang/String;)V

    return-void
.end method
