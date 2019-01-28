.class public Lc8/Dbg;
.super Lc8/xbg;
.source "WXEmbed.java"

# interfaces
.implements Lc8/dbg;
.implements Lc8/lVf;


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Bbg;,
        Lc8/zbg;,
        Lc8/Cbg;,
        Lc8/Abg;
    }
.end annotation


# static fields
.field private static ERROR_IMG_HEIGHT:I = 0x0

.field private static ERROR_IMG_WIDTH:I = 0x0

.field public static final ITEM_ID:Ljava/lang/String; = "itemId"


# instance fields
.field private mIsVisible:Z

.field private mListener:Lc8/Bbg;

.field private mNestedInstance:Lc8/nVf;

.field private originUrl:Ljava/lang/String;

.field private src:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2ee

    .line 49
    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {v0, v1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lc8/Dbg;->ERROR_IMG_WIDTH:I

    .line 50
    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0, v1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lc8/Dbg;->ERROR_IMG_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 3
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lc8/xbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Dbg;->mIsVisible:Z

    .line 174
    new-instance v1, Lc8/Bbg;

    invoke-direct {v1, p0}, Lc8/Bbg;-><init>(Lc8/Dbg;)V

    iput-object v1, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    .line 176
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lc8/Dbg;->ERROR_IMG_WIDTH:I

    .line 177
    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lc8/Dbg;->ERROR_IMG_HEIGHT:I

    .line 178
    instance-of v1, p1, Lc8/Abg;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    const-string/jumbo v2, "itemId"

    invoke-virtual {v1, v2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "itemId":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lc8/Abg;

    .end local p1    # "instance":Lc8/nVf;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p0}, Lc8/Abg;->putEmbed(Ljava/lang/String;Lc8/Dbg;)V

    .line 184
    .end local v0    # "itemId":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lc8/Dbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lc8/Dbg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Dbg;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Dbg;->src:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lc8/Dbg;->ERROR_IMG_WIDTH:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lc8/Dbg;->ERROR_IMG_HEIGHT:I

    return v0
.end method

.method private createInstance()Lc8/nVf;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Lc8/Dbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/nVf;->createNestedInstance(Lc8/dbg;)Lc8/nVf;

    move-result-object v0

    .line 262
    .local v0, "sdkInstance":Lc8/nVf;
    invoke-virtual {p0}, Lc8/Dbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/nVf;->addOnInstanceVisibleListener(Lc8/lVf;)V

    .line 263
    iget-object v1, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    invoke-virtual {v0, v1}, Lc8/nVf;->registerRenderListener(Lc8/NUf;)V

    .line 265
    iget-object v2, p0, Lc8/Dbg;->src:Ljava/lang/String;

    .line 266
    .local v2, "url":Ljava/lang/String;
    iget-object v1, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iget-object v1, v1, Lc8/Bbg;->mEventListener:Lc8/cbg;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iget-object v1, v1, Lc8/Bbg;->mEventListener:Lc8/cbg;

    iget-object v4, p0, Lc8/Dbg;->src:Ljava/lang/String;

    invoke-interface {v1, v4}, Lc8/cbg;->transformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    iget-object v1, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iget-object v1, v1, Lc8/Bbg;->mEventListener:Lc8/cbg;

    iget-object v4, p0, Lc8/Dbg;->src:Ljava/lang/String;

    invoke-interface {v1, p0, v4}, Lc8/cbg;->onPreCreate(Lc8/dbg;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v3

    .line 285
    .end local v0    # "sdkInstance":Lc8/nVf;
    :goto_0
    return-object v0

    .line 274
    .restart local v0    # "sdkInstance":Lc8/nVf;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iget-object v1, v1, Lc8/Bbg;->mEventListener:Lc8/cbg;

    const-string/jumbo v3, "wx_user_intercept_error"

    const-string/jumbo v4, "degradeToH5"

    invoke-interface {v1, p0, v3, v4}, Lc8/cbg;->onException(Lc8/dbg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lc8/Dbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/qeg;

    invoke-virtual {v1}, Lc8/qeg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 280
    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const-string/jumbo v1, "default"

    iget v5, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v7, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Lc8/nVf;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-super {p0}, Lc8/xbg;->destroy()V

    .line 311
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->destroy()V

    .line 313
    iput-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    .line 315
    :cond_0
    iput-object v1, p0, Lc8/Dbg;->src:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lc8/Dbg;->getInstance()Lc8/nVf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lc8/Dbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/nVf;->removeOnInstanceVisibleListener(Lc8/lVf;)V

    .line 319
    :cond_1
    return-void
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lc8/Dbg;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lc8/Dbg;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lc8/Dbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected loadContent()V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Lc8/Dbg;->createInstance()Lc8/nVf;

    move-result-object v0

    iput-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    .line 252
    iget-object v0, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iget-object v0, v0, Lc8/Bbg;->mEventListener:Lc8/cbg;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iget-object v0, v0, Lc8/Bbg;->mEventListener:Lc8/cbg;

    iget-object v1, p0, Lc8/Dbg;->src:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lc8/cbg;->onPreCreate(Lc8/dbg;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iget-object v0, v0, Lc8/Bbg;->mEventListener:Lc8/cbg;

    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-interface {v0, p0, v1}, Lc8/cbg;->onCreated(Lc8/dbg;Lc8/nVf;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lc8/xbg;->onActivityDestroy()V

    .line 376
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityDestroy()V

    .line 379
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lc8/xbg;->onActivityPause()V

    .line 360
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityPause()V

    .line 363
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lc8/xbg;->onActivityResume()V

    .line 352
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityResume()V

    .line 355
    :cond_0
    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lc8/xbg;->onActivityStart()V

    .line 344
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityStart()V

    .line 347
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lc8/xbg;->onActivityStop()V

    .line 368
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityStop()V

    .line 371
    :cond_0
    return-void
.end method

.method public onAppear()V
    .locals 2

    .prologue
    .line 324
    iget-boolean v1, p0, Lc8/Dbg;->mIsVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    .line 326
    .local v0, "comp":Lc8/tbg;
    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v1, "viewappear"

    invoke-virtual {v0, v1}, Lc8/tbg;->fireEvent(Ljava/lang/String;)V

    .line 329
    .end local v0    # "comp":Lc8/tbg;
    :cond_0
    return-void
.end method

.method public onDisappear()V
    .locals 2

    .prologue
    .line 334
    iget-boolean v1, p0, Lc8/Dbg;->mIsVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    .line 336
    .local v0, "comp":Lc8/tbg;
    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v1, "viewdisappear"

    invoke-virtual {v0, v1}, Lc8/tbg;->fireEvent(Ljava/lang/String;)V

    .line 339
    .end local v0    # "comp":Lc8/tbg;
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lc8/Dbg;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lc8/Dbg;->loadContent()V

    .line 219
    :cond_0
    return-void
.end method

.method public renderNewURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lc8/Dbg;->src:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lc8/Dbg;->loadContent()V

    .line 212
    return-void
.end method

.method public setOnNestEventListener(Lc8/cbg;)V
    .locals 1
    .param p1, "listener"    # Lc8/cbg;

    .prologue
    .line 188
    iget-object v0, p0, Lc8/Dbg;->mListener:Lc8/Bbg;

    iput-object p1, v0, Lc8/Bbg;->mEventListener:Lc8/cbg;

    .line 189
    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "originUrl"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lc8/Dbg;->originUrl:Ljava/lang/String;

    .line 227
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 198
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 205
    invoke-super {p0, p1, p2}, Lc8/xbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 198
    :pswitch_0
    const-string/jumbo v2, "src"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "src":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0, v0}, Lc8/Dbg;->setSrc(Ljava/lang/String;)V

    .line 203
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1bde4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "src"
    .end annotation

    .prologue
    .line 233
    iput-object p1, p0, Lc8/Dbg;->originUrl:Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lc8/Dbg;->src:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->destroy()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    .line 239
    :cond_0
    iget-boolean v0, p0, Lc8/Dbg;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Dbg;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lc8/Dbg;->loadContent()V

    .line 242
    :cond_1
    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 2
    .param p1, "visibility"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-super {p0, p1}, Lc8/xbg;->setVisibility(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v1, "visible"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 292
    .local v0, "visible":Z
    iget-object v1, p0, Lc8/Dbg;->src:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-nez v1, :cond_2

    .line 294
    invoke-virtual {p0}, Lc8/Dbg;->loadContent()V

    .line 300
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 301
    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->onViewDisappear()V

    .line 305
    :cond_1
    iput-boolean v0, p0, Lc8/Dbg;->mIsVisible:Z

    .line 306
    return-void

    .line 296
    :cond_2
    iget-object v1, p0, Lc8/Dbg;->mNestedInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->onViewAppear()V

    goto :goto_0
.end method
