.class public Lc8/Rvk;
.super Lc8/Jvk;
.source "UnicomMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xvk;->quertPhoneNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xvk;


# direct methods
.method constructor <init>(Lc8/Xvk;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lc8/Rvk;->this$0:Lc8/Xvk;

    invoke-direct {p0}, Lc8/Jvk;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPhoneNumber(Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;)V
    .locals 3
    .param p1, "phoneNumberDTO"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lc8/Rvk;->this$0:Lc8/Xvk;

    invoke-virtual {p1}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Xvk;->access$002(Lc8/Xvk;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lc8/Rvk;->this$0:Lc8/Xvk;

    invoke-static {v1}, Lc8/Xvk;->access$000(Lc8/Xvk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lc8/Rvk;->this$0:Lc8/Xvk;

    invoke-static {v1}, Lc8/Xvk;->access$000(Lc8/Xvk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0xb

    .line 91
    .local v0, "start":I
    iget-object v1, p0, Lc8/Rvk;->this$0:Lc8/Xvk;

    iget-object v2, p0, Lc8/Rvk;->this$0:Lc8/Xvk;

    invoke-static {v2}, Lc8/Xvk;->access$000(Lc8/Xvk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Xvk;->access$002(Lc8/Xvk;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPhoneNumber networkNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Rvk;->this$0:Lc8/Xvk;

    invoke-static {v2}, Lc8/Xvk;->access$000(Lc8/Xvk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 96
    .end local v0    # "start":I
    :cond_0
    return-void
.end method
