.class public Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;
.super Ljava/lang/Object;
.source "MobileUrlParameterRequestDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x770af1395d3ca080L


# instance fields
.field public data:Lcom/youku/phone/freeflow/mobile/bean/MobileUrlData;

.field public msg:Ljava/lang/String;

.field public result:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 19
    iget v1, p0, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;->result:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;->msg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;->msg:Ljava/lang/String;

    const-string/jumbo v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
