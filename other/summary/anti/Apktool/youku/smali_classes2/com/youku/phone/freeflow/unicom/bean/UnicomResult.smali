.class public Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;
.super Ljava/lang/Object;
.source "UnicomResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4296260e773580bcL


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;

.field private message:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->data:Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->success:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->code:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setData(Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;)V
    .locals 0
    .param p1, "data"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->data:Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;

    .line 46
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->message:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->success:Z

    .line 22
    return-void
.end method
