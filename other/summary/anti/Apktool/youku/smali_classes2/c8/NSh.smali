.class public Lc8/NSh;
.super Landroid/os/Handler;
.source "PayJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OSh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayHandler"
.end annotation


# instance fields
.field private view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 272
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 273
    iput-object p1, p0, Lc8/NSh;->view:Landroid/webkit/WebView;

    .line 274
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 280
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 282
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 315
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 316
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "eventType"

    const-string/jumbo v3, "payment"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v2, "payMethod"

    sget-object v3, Lc8/jKj;->payMethod:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v2, "payProduct"

    sget-object v3, Lc8/jKj;->payProduct:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v2, "vip"

    sget-object v3, Lc8/jKj;->vip:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, "n"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v3, "uid"

    const-class v2, Lc8/vdn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vdn;

    invoke-interface {v2}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v2, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    const-string/jumbo v2, "payPos"

    const-string/jumbo v3, "playcard"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v2, "payPeriod"

    sget-object v3, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v2, "payPrice"

    sget-object v3, Lc8/jKj;->PAY_PRICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_0
    const-class v2, Lc8/sin;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sin;

    const-string/jumbo v3, "\u652f\u4ed8\u7ed3\u679c"

    const-string/jumbo v4, "\u652f\u4ed8\u9875"

    const-string/jumbo v5, "pay.payResult"

    invoke-interface {v2, v3, v4, v0, v5}, Lc8/sin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const-string/jumbo v2, "error"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v2, p0, Lc8/NSh;->view:Landroid/webkit/WebView;

    const-string/jumbo v3, "doPayCallback"

    invoke-static {v2, v3, v1}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 337
    :goto_1
    return-void

    .line 286
    :pswitch_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 287
    .restart local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "eventType"

    const-string/jumbo v3, "payment"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v2, "payMethod"

    sget-object v3, Lc8/jKj;->payMethod:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v2, "payProduct"

    sget-object v3, Lc8/jKj;->payProduct:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v2, "vip"

    sget-object v3, Lc8/jKj;->vip:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, "y"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v3, "uid"

    const-class v2, Lc8/vdn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vdn;

    invoke-interface {v2}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v2, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    const-string/jumbo v2, "payPos"

    const-string/jumbo v3, "playcard"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v2, "payPeriod"

    sget-object v3, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v2, "payPrice"

    sget-object v3, Lc8/jKj;->PAY_PRICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    const-class v2, Lc8/sin;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sin;

    const-string/jumbo v3, "\u652f\u4ed8\u7ed3\u679c"

    const-string/jumbo v4, "\u652f\u4ed8\u9875"

    const-string/jumbo v5, "pay.payResult"

    invoke-interface {v2, v3, v4, v0, v5}, Lc8/sin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    const-string/jumbo v2, "error"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v2, p0, Lc8/NSh;->view:Landroid/webkit/WebView;

    const-string/jumbo v3, "doPayCallback"

    invoke-static {v2, v3, v1}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 308
    :pswitch_2
    const-string/jumbo v2, "error"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lc8/NSh;->view:Landroid/webkit/WebView;

    const-string/jumbo v3, "doPayCallback"

    invoke-static {v2, v3, v1}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_2

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
