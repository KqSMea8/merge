.class public final Lc8/xpf;
.super Ljava/lang/Object;
.source "VisaInfoBusiness.java"

# interfaces
.implements Lc8/xof;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zpf;->sendRequest(Ljava/lang/String;Lc8/ypf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lc8/ypf;


# direct methods
.method constructor <init>(Lc8/ypf;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lc8/xpf;->val$listener:Lc8/ypf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    const-string/jumbo v0, "AlibcVisa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "visa Mtop error response -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lc8/xpf;->val$listener:Lc8/ypf;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/xpf;->val$listener:Lc8/ypf;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lc8/ypf;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    const-string/jumbo v1, "AlibcVisa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "visa Mtop success response -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/taobao/flowcustoms/visa/VisaInfo;->getVisaInfo(Lorg/json/JSONObject;)Lcom/taobao/flowcustoms/visa/VisaInfo;

    move-result-object v0

    .line 30
    .local v0, "visaInfo":Lcom/taobao/flowcustoms/visa/VisaInfo;
    invoke-static {v0}, Lc8/wpf;->addVisaInfo(Lcom/taobao/flowcustoms/visa/VisaInfo;)V

    .line 32
    iget-object v1, p0, Lc8/xpf;->val$listener:Lc8/ypf;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lc8/xpf;->val$listener:Lc8/ypf;

    invoke-interface {v1, v0}, Lc8/ypf;->onSuccess(Lcom/taobao/flowcustoms/visa/VisaInfo;)V

    .line 35
    :cond_0
    return-void
.end method
