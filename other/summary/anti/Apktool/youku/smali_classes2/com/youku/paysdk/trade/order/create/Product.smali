.class public Lcom/youku/paysdk/trade/order/create/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cycleBuyType:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private promotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/paysdk/trade/order/create/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private quantity:I

.field private skuId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCycleBuyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/Product;->cycleBuyType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/Product;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/paysdk/trade/order/create/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/Product;->promotions:Ljava/util/List;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/youku/paysdk/trade/order/create/Product;->quantity:I

    return v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/Product;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public setCycleBuyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cycleBuyType"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/Product;->cycleBuyType:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/Product;->productId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/paysdk/trade/order/create/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/youku/paysdk/trade/order/create/Promotion;>;"
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/Product;->promotions:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/paysdk/trade/order/create/Product;->quantity:I

    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0
    .param p1, "skuId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/Product;->skuId:Ljava/lang/String;

    .line 41
    return-void
.end method
