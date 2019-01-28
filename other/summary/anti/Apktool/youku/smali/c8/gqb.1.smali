.class public abstract Lc8/gqb;
.super Ljava/lang/Object;
.source "RichTextNode.java"


# static fields
.field public static final ATTR:Ljava/lang/String; = "attr"

.field public static final CHILDREN:Ljava/lang/String; = "children"

.field public static final ITEM_CLICK:Ljava/lang/String; = "itemclick"

.field private static final MAX_LEVEL:I = 0xff

.field public static final PSEUDO_REF:Ljava/lang/String; = "pseudoRef"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field protected attr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/gqb;",
            ">;"
        }
    .end annotation
.end field

.field protected final mComponentRef:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mInstanceId:Ljava/lang/String;

.field protected style:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lc8/gqb;->mContext:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lc8/gqb;->mInstanceId:Ljava/lang/String;

    .line 257
    iput-object p3, p0, Lc8/gqb;->mComponentRef:Ljava/lang/String;

    .line 258
    return-void
.end method

.method private createCustomStyleSpan()Lc8/AYf;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 388
    const/4 v2, -0x1

    .local v2, "fontWeight":I
    const/4 v1, -0x1

    .line 389
    .local v1, "fontStyle":I
    const/4 v0, 0x0

    .line 390
    .local v0, "fontFamily":Ljava/lang/String;
    iget-object v3, p0, Lc8/gqb;->style:Ljava/util/Map;

    const-string/jumbo v4, "fontWeight"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lc8/gqb;->style:Ljava/util/Map;

    invoke-static {v3}, Lc8/PYf;->getFontWeight(Ljava/util/Map;)I

    move-result v2

    .line 393
    :cond_0
    iget-object v3, p0, Lc8/gqb;->style:Ljava/util/Map;

    const-string/jumbo v4, "fontStyle"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    iget-object v3, p0, Lc8/gqb;->style:Ljava/util/Map;

    invoke-static {v3}, Lc8/PYf;->getFontStyle(Ljava/util/Map;)I

    move-result v1

    .line 396
    :cond_1
    iget-object v3, p0, Lc8/gqb;->style:Ljava/util/Map;

    const-string/jumbo v4, "fontFamily"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    iget-object v3, p0, Lc8/gqb;->style:Ljava/util/Map;

    invoke-static {v3}, Lc8/PYf;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_2
    if-ne v2, v5, :cond_3

    if-ne v1, v5, :cond_3

    if-eqz v0, :cond_4

    .line 402
    :cond_3
    new-instance v3, Lc8/AYf;

    invoke-direct {v3, v1, v2, v0}, Lc8/AYf;-><init>(IILjava/lang/String;)V

    .line 404
    :goto_0
    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static createPriorityFlag(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 358
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    rsub-int v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0xff0000

    goto :goto_0
.end method

.method public static createSpanFlag(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 284
    invoke-static {p0}, Lc8/gqb;->createPriorityFlag(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "componentRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "json"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    invoke-static {p3}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 267
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    .local v4, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 270
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 271
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 272
    invoke-static {p0, p1, p2, v2}, Lc8/iqb;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lc8/gqb;

    move-result-object v3

    .line 273
    .local v3, "node":Lc8/gqb;
    if-eqz v3, :cond_0

    .line 274
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v3    # "node":Lc8/gqb;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-static {v4}, Lc8/gqb;->parse(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v5

    .line 280
    .end local v0    # "i":I
    .end local v4    # "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;>;"
    :goto_1
    return-object v5

    :cond_2
    new-instance v5, Landroid/text/SpannableString;

    const-string/jumbo v6, ""

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private static parse(Ljava/util/List;)Landroid/text/Spannable;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/gqb;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;>;"
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 367
    .local v1, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gqb;

    .line 368
    .local v0, "richTextNode":Lc8/gqb;
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lc8/gqb;->toSpan(I)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 370
    .end local v0    # "richTextNode":Lc8/gqb;
    :cond_0
    return-object v1
.end method

.method private toSpan(I)Landroid/text/Spannable;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 374
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 375
    .local v1, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lc8/gqb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 376
    invoke-virtual {p0}, Lc8/gqb;->isInternalNode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/gqb;->children:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lc8/gqb;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gqb;

    .line 378
    .local v0, "child":Lc8/gqb;
    add-int/lit8 v3, p1, 0x1

    invoke-direct {v0, v3}, Lc8/gqb;->toSpan(I)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 381
    .end local v0    # "child":Lc8/gqb;
    :cond_0
    invoke-virtual {p0, v1, p1}, Lc8/gqb;->updateSpans(Landroid/text/SpannableStringBuilder;I)V

    .line 382
    return-object v1
.end method


# virtual methods
.method protected abstract isInternalNode()Z
.end method

.method final parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "componentRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 296
    const-string/jumbo v6, "style"

    invoke-virtual {p4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .local v4, "jsonStyle":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_1

    .line 297
    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    .line 298
    iget-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 303
    :goto_0
    const-string/jumbo v6, "attr"

    invoke-virtual {p4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .local v2, "jsonAttr":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_2

    .line 304
    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v6, p0, Lc8/gqb;->attr:Ljava/util/Map;

    .line 305
    iget-object v6, p0, Lc8/gqb;->attr:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 310
    :goto_1
    const-string/jumbo v6, "children"

    invoke-virtual {p4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .local v3, "jsonChildren":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_3

    .line 311
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lc8/gqb;->children:Ljava/util/List;

    .line 312
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 313
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 314
    .local v0, "child":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1, p2, p3, v0}, Lc8/iqb;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lc8/gqb;

    move-result-object v5

    .line 315
    .local v5, "node":Lc8/gqb;
    if-eqz v5, :cond_0

    .line 316
    iget-object v6, p0, Lc8/gqb;->children:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 300
    .end local v0    # "child":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "i":I
    .end local v2    # "jsonAttr":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "jsonChildren":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "node":Lc8/gqb;
    :cond_1
    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6, v8}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    goto :goto_0

    .line 307
    .restart local v2    # "jsonAttr":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6, v8}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v6, p0, Lc8/gqb;->attr:Ljava/util/Map;

    goto :goto_1

    .line 320
    .restart local v3    # "jsonChildren":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lc8/gqb;->children:Ljava/util/List;

    .line 322
    :cond_4
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .locals 10
    .param p1, "spannableStringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "level"    # I

    .prologue
    const/4 v9, 0x0

    .line 325
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v6

    iget-object v7, p0, Lc8/gqb;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 326
    .local v2, "instance":Lc8/nVf;
    iget-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 327
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 329
    .local v5, "spans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lc8/gqb;->createCustomStyleSpan()Lc8/AYf;

    move-result-object v1

    .line 330
    .local v1, "customStyleSpan":Lc8/AYf;
    if-eqz v1, :cond_0

    .line 331
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    iget-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    const-string/jumbo v7, "fontSize"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 335
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lc8/gqb;->style:Ljava/util/Map;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v8

    invoke-static {v7, v8}, Lc8/PYf;->getFontSize(Ljava/util/Map;I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    iget-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    const-string/jumbo v7, "backgroundColor"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 339
    iget-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    const-string/jumbo v7, "backgroundColor"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v0

    .line 341
    .local v0, "color":I
    if-eqz v0, :cond_2

    .line 342
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v0    # "color":I
    :cond_2
    iget-object v6, p0, Lc8/gqb;->style:Ljava/util/Map;

    const-string/jumbo v7, "color"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lc8/gqb;->style:Ljava/util/Map;

    invoke-static {v7}, Lc8/PYf;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_3
    invoke-static {p2}, Lc8/gqb;->createSpanFlag(I)I

    move-result v4

    .line 351
    .local v4, "spanFlag":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 352
    .local v3, "span":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v3, v9, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 355
    .end local v1    # "customStyleSpan":Lc8/AYf;
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanFlag":I
    .end local v5    # "spans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    return-void
.end method
