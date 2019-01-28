.class public final Lcom/alibaba/poplayerconsole/PopLayerConsole;
.super Lc8/uZb;
.source "PopLayerConsole.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kZb;,
        Lc8/hZb;,
        Lc8/jZb;,
        Lc8/iZb;
    }
.end annotation


# static fields
.field private static final KEY_LOG:Ljava/lang/String; = "log"

.field static final REQ_UPDATE_LOG:I = 0x1

.field private static sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSelector:Lc8/DYb;

.field private final mSettings:Lc8/jZb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lc8/uZb;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lc8/DYb;

    invoke-direct {v0}, Lc8/DYb;-><init>()V

    iput-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSelector:Lc8/DYb;

    .line 512
    new-instance v0, Lc8/jZb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/jZb;-><init>(Lc8/aZb;)V

    iput-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    .line 551
    return-void
.end method

.method public static synthetic access$000(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/poplayerconsole/PopLayerConsole;
    .param p1, "x1"    # Lc8/IZb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->updateStatusLine(Lc8/IZb;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/poplayerconsole/PopLayerConsole;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/poplayerconsole/PopLayerConsole;
    .param p1, "x1"    # Lc8/IZb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->updateLogTerminal(Lc8/IZb;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/DYb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/poplayerconsole/PopLayerConsole;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSelector:Lc8/DYb;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/alibaba/poplayerconsole/PopLayerConsole;Landroid/view/View;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/poplayerconsole/PopLayerConsole;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getHierarchy(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$900(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Lc8/jZb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/poplayerconsole/PopLayerConsole;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    return-object v0
.end method

.method private addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "keySpan"    # Ljava/lang/Object;
    .param p5, "valueSpan"    # Ljava/lang/Object;

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 467
    .local v1, "mark":I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 468
    if-nez p4, :cond_0

    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    .end local p4    # "keySpan":Ljava/lang/Object;
    const v2, -0x333334

    invoke-direct {p4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 469
    .restart local p4    # "keySpan":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {p1, p4, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 471
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 472
    if-nez p3, :cond_1

    const-string/jumbo p3, "Null"

    .line 473
    :cond_1
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 474
    if-nez p3, :cond_3

    const/high16 v0, -0x10000

    .line 475
    .local v0, "color":I
    :goto_0
    if-nez p5, :cond_2

    new-instance p5, Landroid/text/style/ForegroundColorSpan;

    .end local p5    # "valueSpan":Ljava/lang/Object;
    invoke-direct {p5, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 476
    .restart local p5    # "valueSpan":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, p5, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 477
    return-void

    .line 474
    .end local v0    # "color":I
    :cond_3
    const v0, -0x777778

    goto :goto_0
.end method

.method private getHierarchy(Landroid/view/View;I)Ljava/lang/String;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # I

    .prologue
    const/4 v7, 0x0

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "hierarchy":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lez p2, :cond_0

    if-ge v1, p2, :cond_1

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 287
    .local v3, "node":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object p1, v3

    .line 289
    check-cast p1, Landroid/view/View;

    .line 290
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v3    # "node":Landroid/view/ViewParent;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 294
    .local v3, "node":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getViewProps(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    .end local v3    # "node":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 296
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 298
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getViewProps(Landroid/view/View;)Ljava/lang/String;
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    const-string/jumbo v10, ""

    .line 359
    :goto_0
    return-object v10

    .line 304
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 310
    .local v0, "desc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 311
    const-string/jumbo v10, "[contentDescription="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 316
    .local v7, "tag":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 317
    const-string/jumbo v10, "[tag="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    instance-of v10, p1, Landroid/widget/TextView;

    if-eqz v10, :cond_3

    move-object v10, p1

    .line 322
    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 323
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 324
    const-string/jumbo v10, "[text="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 330
    .local v2, "id":I
    const/4 v10, -0x1

    if-eq v10, v2, :cond_4

    if-nez v2, :cond_4

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 334
    .local v5, "r":Landroid/content/res/Resources;
    const/high16 v10, -0x1000000

    and-int/2addr v10, v2

    sparse-switch v10, :sswitch_data_0

    .line 342
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "pkgname":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, "typename":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "entryname":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v3, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string/jumbo v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string/jumbo v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string/jumbo v10, "[id="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 336
    .end local v1    # "entryname":Ljava/lang/String;
    .end local v3    # "out":Ljava/lang/StringBuilder;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v9    # "typename":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v4, "app"

    .line 337
    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_1

    .line 339
    .end local v4    # "pkgname":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v4, "android"
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_1

    .end local v4    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 359
    .end local v5    # "r":Landroid/content/res/Resources;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_1
        0x7f000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static print(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V
    .locals 7
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "level"    # Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 497
    invoke-static {}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->isStartDebug()Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    sget-object v1, Lcom/alibaba/poplayerconsole/PopLayerConsole;->sContext:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    move-object v0, v5

    .line 500
    .local v0, "context":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_0

    .line 502
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v4, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "log"

    invoke-static {p0, p1}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->createLogDO(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 504
    const-class v1, Lcom/alibaba/poplayerconsole/PopLayerConsole;

    const/4 v3, 0x1

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->sendData(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    goto :goto_0

    .line 499
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "data":Landroid/os/Bundle;
    :cond_2
    sget-object v1, Lcom/alibaba/poplayerconsole/PopLayerConsole;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    goto :goto_1
.end method

.method private updateLogTerminal(Lc8/IZb;)V
    .locals 7
    .param p1, "window"    # Lc8/IZb;

    .prologue
    .line 480
    sget v6, Lcom/youku/phone/R$id;->terminal_output:I

    invoke-virtual {p1, v6}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 481
    .local v5, "tvLogTerminal":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    invoke-static {v6}, Lc8/jZb;->access$700(Lc8/jZb;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->getLogsByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 482
    .local v3, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;>;"
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 483
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    .line 484
    .local v2, "log":Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;
    invoke-virtual {v2}, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->toSpannableString()Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 485
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 487
    .end local v2    # "log":Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;
    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    sget v6, Lcom/youku/phone/R$id;->current_tag:I

    invoke-virtual {p1, v6}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 490
    .local v4, "tvCurTag":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    invoke-static {v6}, Lc8/jZb;->access$700(Lc8/jZb;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method

.method private updateStatusLine(Lc8/IZb;)V
    .locals 30
    .param p1, "window"    # Lc8/IZb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Lc8/ZYb;->getCurrentStatus()Ljava/util/Map;

    move-result-object v25

    .line 386
    .local v25, "status":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/poplayer/utils/Monitor$Info;>;"
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 388
    .local v4, "builder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/poplayer/utils/Monitor$Info;

    iget-object v0, v3, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 389
    .local v27, "version":Ljava/lang/Object;
    const-string/jumbo v5, "Version"

    if-nez v27, :cond_3

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    const-string/jumbo v3, "page"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/poplayer/utils/Monitor$Info;

    iget-object v0, v3, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/ref/WeakReference;

    .line 392
    .local v28, "weakPage":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    invoke-virtual/range {v28 .. v28}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v6, 0x0

    .line 393
    .local v6, "page":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "NativePage"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    const-string/jumbo v3, "native_url"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/poplayer/utils/Monitor$Info;

    iget-object v0, v3, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 396
    .local v22, "nativeUrl":Ljava/lang/Object;
    const-string/jumbo v9, "NativeUrl"

    if-nez v22, :cond_5

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    sget v3, Lcom/youku/phone/R$id;->status:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 399
    .local v26, "statusTv":Landroid/widget/TextView;
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    invoke-static {v3}, Lc8/jZb;->access$600(Lc8/jZb;)I

    move-result v3

    invoke-static {v3}, Lc8/ZWb;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 404
    .local v24, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "config_set"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/poplayer/utils/Monitor$Info;

    .line 405
    .local v20, "info":Lcom/alibaba/poplayer/utils/Monitor$Info;
    if-eqz v20, :cond_0

    .line 406
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    .line 407
    .local v15, "configSet":Ljava/lang/Object;
    const-string/jumbo v9, "ConfigSet"

    if-nez v15, :cond_6

    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x0

    new-instance v12, Lc8/gZb;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v12, v0, v1, v2}, Lc8/gZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Ljava/util/Map;Ljava/lang/String;)V

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .end local v15    # "configSet":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    invoke-static {v3}, Lc8/jZb;->access$600(Lc8/jZb;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "white_list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/poplayer/utils/Monitor$Info;

    iget-object v0, v3, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/util/List;

    .line 427
    .local v29, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "WhiteList"

    if-nez v29, :cond_7

    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    .end local v29    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "black_list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/poplayer/utils/Monitor$Info;

    iget-object v14, v3, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 431
    .local v14, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "BlackList"

    if-nez v14, :cond_8

    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    invoke-static {v3}, Lc8/jZb;->access$600(Lc8/jZb;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_d

    .line 435
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uXb;->getPageViewContainerTemp()Lc8/PXb;

    move-result-object v16

    .line 436
    .local v16, "curContainer":Lc8/PXb;
    if-nez v16, :cond_9

    .line 437
    const-string/jumbo v9, "CurrentPopLayer"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    .end local v16    # "curContainer":Lc8/PXb;
    :cond_2
    :goto_6
    sget v3, Lcom/youku/phone/R$id;->domain_info:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 459
    .local v18, "domainTv":Landroid/widget/TextView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    sget v3, Lcom/youku/phone/R$id;->current_domain:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 461
    .local v17, "currentDomain":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mSettings:Lc8/jZb;

    invoke-static {v3}, Lc8/jZb;->access$600(Lc8/jZb;)I

    move-result v3

    invoke-static {v3}, Lc8/ZWb;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    return-void

    .line 389
    .end local v6    # "page":Ljava/lang/String;
    .end local v14    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "currentDomain":Landroid/widget/TextView;
    .end local v18    # "domainTv":Landroid/widget/TextView;
    .end local v20    # "info":Lcom/alibaba/poplayer/utils/Monitor$Info;
    .end local v22    # "nativeUrl":Ljava/lang/Object;
    .end local v24    # "prefix":Ljava/lang/String;
    .end local v26    # "statusTv":Landroid/widget/TextView;
    .end local v28    # "weakPage":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    :cond_3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 392
    .restart local v28    # "weakPage":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    :cond_4
    invoke-virtual/range {v28 .. v28}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 396
    .restart local v6    # "page":Ljava/lang/String;
    .restart local v22    # "nativeUrl":Ljava/lang/Object;
    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 407
    .restart local v15    # "configSet":Ljava/lang/Object;
    .restart local v20    # "info":Lcom/alibaba/poplayer/utils/Monitor$Info;
    .restart local v24    # "prefix":Ljava/lang/String;
    .restart local v26    # "statusTv":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 427
    .end local v15    # "configSet":Ljava/lang/Object;
    .restart local v29    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 431
    .end local v29    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 439
    .restart local v16    # "curContainer":Lc8/PXb;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lc8/PXb;->getCanvas()Lc8/LXb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/LXb;->all()Ljava/util/ArrayList;

    move-result-object v13

    .line 440
    .local v13, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 441
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 442
    .local v21, "len":I
    const-string/jumbo v9, "(layer order desc),Layer size "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 444
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    .line 445
    .local v23, "pb":Landroid/view/View;
    move-object/from16 v0, v23

    instance-of v3, v0, Lc8/jXb;

    if-eqz v3, :cond_c

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u3010CurrentPopLayer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "visible"

    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    check-cast v23, Lc8/jXb;

    .end local v23    # "pb":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Lc8/jXb;->getInfo()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 443
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 446
    .restart local v23    # "pb":Landroid/view/View;
    :cond_a
    const/16 v3, 0x8

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v3, v7, :cond_b

    const-string/jumbo v3, "gone"

    goto :goto_8

    :cond_b
    const-string/jumbo v3, "invisible"

    goto :goto_8

    .line 449
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u3010"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "unknow type layer."

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 455
    .end local v13    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "curContainer":Lc8/PXb;
    .end local v19    # "i":I
    .end local v21    # "len":I
    .end local v23    # "pb":Landroid/view/View;
    :cond_d
    const-string/jumbo v9, "\u6682\u65f6\u4e0d\u652f\u6301\u663e\u793a\u5f53\u524d\u5f39\u5c42\u4fe1\u606f"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->addStatus(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public createAndAttachView(ILandroid/widget/FrameLayout;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "frame"    # Landroid/widget/FrameLayout;

    .prologue
    .line 89
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 90
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/youku/phone/R$layout;->console_textview:I

    const/4 v6, 0x1

    invoke-virtual {v1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 91
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/youku/phone/R$id;->terminal_output:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    .local v3, "terminalOutput":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 94
    sget v5, Lcom/youku/phone/R$id;->status:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "status":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 97
    sget v5, Lcom/youku/phone/R$id;->domain_info:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, "domain":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 99
    return-void
.end method

.method public getDropDownItems(I)Ljava/util/List;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lc8/tZb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayerconsole/lib/StandOutWindow$DropDownListItem;>;"
    new-instance v1, Lc8/tZb;

    const v2, 0x108003c

    const-string/jumbo v3, "Clear terminal log"

    new-instance v4, Lc8/bZb;

    invoke-direct {v4, p0, p1}, Lc8/bZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;I)V

    invoke-direct {v1, p0, v2, v3, v4}, Lc8/tZb;-><init>(Lc8/uZb;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lc8/tZb;

    const v2, 0x1080016

    const-string/jumbo v3, "Choose Domain"

    new-instance v4, Lc8/cZb;

    invoke-direct {v4, p0, p1}, Lc8/cZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;I)V

    invoke-direct {v1, p0, v2, v3, v4}, Lc8/tZb;-><init>(Lc8/uZb;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lc8/tZb;

    const v2, 0x108009d

    const-string/jumbo v3, "Choose tag"

    new-instance v4, Lc8/dZb;

    invoke-direct {v4, p0, p1}, Lc8/dZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;I)V

    invoke-direct {v1, p0, v2, v3, v4}, Lc8/tZb;-><init>(Lc8/uZb;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lc8/tZb;

    const v2, 0x1080045

    const-string/jumbo v3, "Toggle status line"

    new-instance v4, Lc8/eZb;

    invoke-direct {v4, p0, p1}, Lc8/eZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;I)V

    invoke-direct {v1, p0, v2, v3, v4}, Lc8/tZb;-><init>(Lc8/uZb;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lc8/tZb;

    const v2, 0x1080057

    const-string/jumbo v3, "Toggle view tracker"

    new-instance v4, Lc8/fZb;

    invoke-direct {v4, p0}, Lc8/fZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lc8/tZb;-><init>(Lc8/uZb;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object v0
.end method

.method public getParams(ILc8/IZb;)Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    .locals 10
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;

    .prologue
    const/16 v7, 0x64

    const v5, -0x7fffffff

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 105
    .local v3, "widthPixels":I
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 106
    .local v9, "heightPixels":I
    new-instance v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    div-int/lit8 v4, v9, 0x2

    move-object v1, p0

    move v2, p1

    move v6, v5

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;-><init>(Lc8/uZb;IIIIIII)V

    return-object v0
.end method

.method public onClose(ILc8/IZb;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;

    .prologue
    .line 135
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->swithcLogMode(Z)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    invoke-super {p0, p1, p2}, Lc8/uZb;->onClose(ILc8/IZb;)Z

    move-result v0

    return v0
.end method

.method public onCloseAll()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    invoke-super {p0}, Lc8/uZb;->onCloseAll()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lc8/uZb;->onCreate()V

    .line 75
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->swithcLogMode(Z)V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->sContext:Ljava/lang/ref/WeakReference;

    .line 77
    const-string/jumbo v0, "PopLayerConsole"

    iput-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mAppName:Ljava/lang/String;

    .line 78
    const v0, 0x108000a

    iput v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mIcon:I

    .line 82
    sget v0, Lc8/pZb;->FLAG_DECORATION_SYSTEM:I

    sget v1, Lc8/pZb;->FLAG_BODY_MOVE_ENABLE:I

    or-int/2addr v0, v1

    sget v1, Lc8/pZb;->FLAG_WINDOW_HIDE_ENABLE:I

    or-int/2addr v0, v1

    sget v1, Lc8/pZb;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    or-int/2addr v0, v1

    sget v1, Lc8/pZb;->FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mFlags:I

    .line 85
    return-void
.end method

.method public onHide(ILc8/IZb;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    invoke-super {p0, p1, p2}, Lc8/uZb;->onHide(ILc8/IZb;)Z

    move-result v0

    return v0
.end method

.method public onReceiveData(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .param p5, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p4, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getWindow(I)Lc8/IZb;

    move-result-object v1

    .line 367
    .local v1, "window":Lc8/IZb;
    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 370
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 379
    const-string/jumbo v2, "PopLayerConsole"

    const-string/jumbo v3, "Unexpected data received."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :pswitch_0
    const-string/jumbo v2, "log"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    .line 374
    .local v0, "log":Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;
    invoke-static {v0}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->addLog(Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;)V

    .line 375
    invoke-direct {p0, v1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->updateLogTerminal(Lc8/IZb;)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShow(ILc8/IZb;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/poplayerconsole/PopLayerConsole;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/aZb;

    invoke-direct {v1, p0, p2}, Lc8/aZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    invoke-super {p0, p1, p2}, Lc8/uZb;->onShow(ILc8/IZb;)Z

    move-result v0

    return v0
.end method
