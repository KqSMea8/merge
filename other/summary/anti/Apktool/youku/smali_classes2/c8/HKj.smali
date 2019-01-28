.class public Lc8/HKj;
.super Ljava/lang/Object;
.source "DoPayData.java"


# static fields
.field public static final ORDER_TYPE_SERIES:Ljava/lang/String; = "2"

.field public static final PAY_CHANNEL_ALIPAY:Ljava/lang/String; = "100"

.field public static final PAY_CHANNEL_ALIPAY_HUABEI:Ljava/lang/String; = "106"

.field public static final PAY_CHANNEL_WEIXIN:Ljava/lang/String; = "103"


# instance fields
.field private channel_params:Ljava/lang/String;

.field private cycleBuyType:Ljava/lang/String;

.field private order_type:Ljava/lang/String;

.field private payUrl:Ljava/lang/String;

.field private pay_channel:Ljava/lang/String;

.field private trade_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/HKj;->channel_params:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/HKj;->trade_id:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/HKj;->pay_channel:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/HKj;->order_type:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/HKj;->cycleBuyType:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/HKj;->payUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel_params()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lc8/HKj;->channel_params:Ljava/lang/String;

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/HKj;->payUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_channel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lc8/HKj;->pay_channel:Ljava/lang/String;

    return-object v0
.end method

.method public getTrade_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lc8/HKj;->trade_id:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel_params(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel_params"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lc8/HKj;->channel_params:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setCycleBuyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cycleBuyType"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/HKj;->cycleBuyType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOrder_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_type"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/HKj;->order_type:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPayUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "payUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/HKj;->payUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPay_channel(Ljava/lang/String;)V
    .locals 0
    .param p1, "pay_channel"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lc8/HKj;->pay_channel:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTrade_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "trade_id"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/HKj;->trade_id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DoPayData{channel_params=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/HKj;->channel_params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trade_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/HKj;->trade_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pay_channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/HKj;->pay_channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", order_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/HKj;->order_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
