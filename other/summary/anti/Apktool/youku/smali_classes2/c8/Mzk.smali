.class public Lc8/Mzk;
.super Ljava/lang/Object;
.source "CMSSkinManager.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SkinPhenixDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/qxf",
        "<",
        "Lc8/wxf;",
        ">;"
    }
.end annotation


# instance fields
.field private id:I

.field private index:I

.field private isSelected:Z

.field final synthetic this$0:Lc8/Nzk;


# direct methods
.method constructor <init>(Lc8/Nzk;I)V
    .locals 1
    .param p2, "index1"    # I

    .prologue
    .line 427
    iput-object p1, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lc8/Mzk;->index:I

    .line 428
    iput p2, p0, Lc8/Mzk;->index:I

    .line 429
    return-void
.end method

.method constructor <init>(Lc8/Nzk;IZ)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "isSelected"    # Z

    .prologue
    .line 422
    iput-object p1, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lc8/Mzk;->index:I

    .line 423
    iput p2, p0, Lc8/Mzk;->id:I

    .line 424
    iput-boolean p3, p0, Lc8/Mzk;->isSelected:Z

    .line 425
    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 415
    check-cast p1, Lc8/wxf;

    invoke-virtual {p0, p1}, Lc8/Mzk;->onHappen(Lc8/wxf;)Z

    move-result v0

    return v0
.end method

.method public onHappen(Lc8/wxf;)Z
    .locals 12
    .param p1, "event"    # Lc8/wxf;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 433
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lc8/wxf;->isIntermediate()Z

    move-result v6

    if-nez v6, :cond_3

    .line 434
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    instance-of v6, v6, Lc8/Zvf;

    if-eqz v6, :cond_0

    .line 435
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    check-cast v6, Lc8/Zvf;

    invoke-virtual {v6}, Lc8/Zvf;->downgrade2Passable()V

    .line 437
    :cond_0
    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 438
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 439
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v6, 0x140

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 440
    iget v6, p0, Lc8/Mzk;->index:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 441
    iget-boolean v6, p0, Lc8/Mzk;->isSelected:Z

    if-eqz v6, :cond_1

    .line 442
    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$500(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, p0, Lc8/Mzk;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :goto_0
    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$500(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget-object v7, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v7}, Lc8/Nzk;->access$700(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$600(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget-object v7, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v7}, Lc8/Nzk;->access$700(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 447
    const v4, 0x10100a1

    .line 448
    .local v4, "selected":I
    const v2, 0x10100a7

    .line 449
    .local v2, "pressed":I
    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$700(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 451
    .local v5, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v8, v11, [I

    aput v2, v8, v10

    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$500(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 452
    new-array v8, v11, [I

    aput v4, v8, v10

    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$500(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 453
    new-array v8, v10, [I

    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$600(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 454
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    iput-object v5, v6, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->drawableBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 444
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    .end local v2    # "pressed":I
    .end local v4    # "selected":I
    .end local v5    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$600(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, p0, Lc8/Mzk;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 459
    :cond_2
    iget v6, p0, Lc8/Mzk;->index:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_4

    .line 460
    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6, v0}, Lc8/Nzk;->access$802(Lc8/Nzk;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 472
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_3
    :goto_2
    return v11

    .line 462
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_4
    iget v6, p0, Lc8/Mzk;->index:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 463
    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6, v0}, Lc8/Nzk;->access$902(Lc8/Nzk;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 466
    :cond_5
    iget-object v6, p0, Lc8/Mzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$1000(Lc8/Nzk;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, p0, Lc8/Mzk;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "top bg  ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/Mzk;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2
.end method
