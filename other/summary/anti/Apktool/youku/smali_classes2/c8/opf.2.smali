.class public final Lc8/opf;
.super Ljava/lang/Object;
.source "AlibcFlowCustomsVisa.java"

# interfaces
.implements Lc8/ypf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rpf;->visaIsVaild(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lc8/qpf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$visaCheckRes:I

.field final synthetic val$visaValidListener:Lc8/qpf;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/String;Lc8/qpf;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lc8/opf;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lc8/opf;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lc8/opf;->val$visaValidListener:Lc8/qpf;

    iput p4, p0, Lc8/opf;->val$visaCheckRes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lc8/opf;->val$visaValidListener:Lc8/qpf;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "visa \u6821\u9a8c\u4e0d\u901a\u8fc7(error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/qpf;->onFail(ILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public onSuccess(Lcom/taobao/flowcustoms/visa/VisaInfo;)V
    .locals 5
    .param p1, "responseVisaInfo"    # Lcom/taobao/flowcustoms/visa/VisaInfo;

    .prologue
    .line 78
    iget-object v1, p0, Lc8/opf;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lc8/opf;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lc8/rpf;->access$000(Landroid/content/Intent;Ljava/lang/String;Lcom/taobao/flowcustoms/visa/VisaInfo;)I

    move-result v0

    .line 79
    .local v0, "visaValid":I
    if-nez v0, :cond_0

    .line 80
    iget-object v1, p0, Lc8/opf;->val$visaValidListener:Lc8/qpf;

    invoke-interface {v1, p1}, Lc8/qpf;->onSuccess(Lcom/taobao/flowcustoms/visa/VisaInfo;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lc8/opf;->val$visaValidListener:Lc8/qpf;

    iget v2, p0, Lc8/opf;->val$visaCheckRes:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visa \u6821\u9a8c\u4e0d\u901a\u8fc7(error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc8/qpf;->onFail(ILjava/lang/String;)V

    goto :goto_0
.end method
