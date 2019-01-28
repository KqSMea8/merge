.class public Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;
.super Ljava/lang/Object;
.source "OrderCreateRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activityCode:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/paysdk/trade/order/create/Product;",
            ">;"
        }
    .end annotation
.end field

.field private spm:Ljava/lang/String;

.field private tags:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "android@yk"

    iput-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->channel:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->spm:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->tags:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->activityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/paysdk/trade/order/create/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->products:Ljava/util/List;

    return-object v0
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityCode"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->activityCode:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->channel:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "payChannel"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->payChannel:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/paysdk/trade/order/create/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/youku/paysdk/trade/order/create/Product;>;"
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->products:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setSpm(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->spm:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->tags:Ljava/lang/String;

    .line 72
    return-void
.end method
