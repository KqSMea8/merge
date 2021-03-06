.class public Lc8/Mjg;
.super Lc8/Cig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ljg;
    }
.end annotation


# static fields
.field private static final EXTDATA_MAX_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.PaySdk.PayReq"


# instance fields
.field public appId:Ljava/lang/String;

.field public extData:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public options:Lc8/Ljg;

.field public packageValue:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public prepayId:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public signType:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/Cig;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lc8/Mjg;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Mjg;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, invalid appId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/Mjg;->partnerId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/Mjg;->partnerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, invalid partnerId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lc8/Mjg;->prepayId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc8/Mjg;->prepayId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, invalid prepayId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lc8/Mjg;->nonceStr:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc8/Mjg;->nonceStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, invalid nonceStr"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lc8/Mjg;->timeStamp:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lc8/Mjg;->timeStamp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, invalid timeStamp"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lc8/Mjg;->packageValue:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lc8/Mjg;->packageValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, invalid packageValue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lc8/Mjg;->sign:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lc8/Mjg;->sign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, invalid sign"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lc8/Mjg;->extData:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lc8/Mjg;->extData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_e

    const-string/jumbo v1, "MicroMsg.PaySdk.PayReq"

    const-string/jumbo v2, "checkArgs fail, extData length too long"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lc8/Cig;->fromBundle(Landroid/os/Bundle;)V

    const-string/jumbo v0, "_wxapi_payreq_appid"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->appId:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_partnerid"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->partnerId:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_prepayid"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->prepayId:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_noncestr"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->nonceStr:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_timestamp"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->timeStamp:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_packagevalue"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->packageValue:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_sign"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->sign:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_extdata"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->extData:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_payreq_sign_type"

    invoke-static {p1, v0}, Lc8/gig;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mjg;->signType:Ljava/lang/String;

    new-instance v0, Lc8/Ljg;

    invoke-direct {v0}, Lc8/Ljg;-><init>()V

    iput-object v0, p0, Lc8/Mjg;->options:Lc8/Ljg;

    iget-object v0, p0, Lc8/Mjg;->options:Lc8/Ljg;

    invoke-virtual {v0, p1}, Lc8/Ljg;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lc8/Cig;->toBundle(Landroid/os/Bundle;)V

    const-string/jumbo v0, "_wxapi_payreq_appid"

    iget-object v1, p0, Lc8/Mjg;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_partnerid"

    iget-object v1, p0, Lc8/Mjg;->partnerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_prepayid"

    iget-object v1, p0, Lc8/Mjg;->prepayId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_noncestr"

    iget-object v1, p0, Lc8/Mjg;->nonceStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_timestamp"

    iget-object v1, p0, Lc8/Mjg;->timeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_packagevalue"

    iget-object v1, p0, Lc8/Mjg;->packageValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_sign"

    iget-object v1, p0, Lc8/Mjg;->sign:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_extdata"

    iget-object v1, p0, Lc8/Mjg;->extData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_payreq_sign_type"

    iget-object v1, p0, Lc8/Mjg;->signType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Mjg;->options:Lc8/Ljg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Mjg;->options:Lc8/Ljg;

    invoke-virtual {v0, p1}, Lc8/Ljg;->toBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
