.class public Lc8/dXo;
.super Ljava/lang/Object;
.source "RichTextDomObject.java"

# interfaces
.implements Lc8/AWo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RichTextImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eXo;


# direct methods
.method private constructor <init>(Lc8/eXo;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lc8/dXo;->this$0:Lc8/eXo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/eXo;Lc8/ZWo;)V
    .locals 0
    .param p1, "x0"    # Lc8/eXo;
    .param p2, "x1"    # Lc8/ZWo;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lc8/dXo;-><init>(Lc8/eXo;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 392
    new-instance v5, Lc8/fXo;

    iget-object v7, p0, Lc8/dXo;->this$0:Lc8/eXo;

    invoke-direct {v5, p2, p3, v7}, Lc8/fXo;-><init>(IILc8/eXo;)V

    .line 394
    .local v5, "richTextDrawable":Lc8/fXo;
    iget-object v7, p0, Lc8/dXo;->this$0:Lc8/eXo;

    invoke-static {v7}, Lc8/eXo;->access$500(Lc8/eXo;)Lc8/YWo;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 448
    .end local v5    # "richTextDrawable":Lc8/fXo;
    :cond_0
    :goto_0
    return-object v5

    .line 398
    .restart local v5    # "richTextDrawable":Lc8/fXo;
    :cond_1
    :try_start_0
    const-string/jumbo v7, "res://drawable"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 399
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 400
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 403
    .local v4, "resId":I
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 411
    :cond_2
    :goto_1
    iget-object v7, p0, Lc8/dXo;->this$0:Lc8/eXo;

    invoke-static {v7}, Lc8/eXo;->access$500(Lc8/eXo;)Lc8/YWo;

    move-result-object v7

    invoke-virtual {v7}, Lc8/YWo;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v5, v0

    .line 414
    goto :goto_0

    .line 405
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 406
    iget-object v7, p0, Lc8/dXo;->this$0:Lc8/eXo;

    invoke-static {v7}, Lc8/eXo;->access$500(Lc8/eXo;)Lc8/YWo;

    move-result-object v7

    invoke-virtual {v7}, Lc8/YWo;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "drawable"

    iget-object v9, p0, Lc8/dXo;->this$0:Lc8/eXo;

    invoke-static {v9}, Lc8/eXo;->access$500(Lc8/eXo;)Lc8/YWo;

    move-result-object v9

    invoke-virtual {v9}, Lc8/YWo;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 430
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "resId":I
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v7

    invoke-virtual {v7, p1}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v7

    const/4 v8, 0x0

    .line 431
    invoke-virtual {v7, v8, p2, p3}, Lc8/mxf;->limitSize(Landroid/view/View;II)Lc8/mxf;

    move-result-object v7

    new-instance v8, Lc8/cXo;

    invoke-direct {v8, p0, v5}, Lc8/cXo;-><init>(Lc8/dXo;Lc8/fXo;)V

    .line 432
    invoke-virtual {v7, v8}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v7

    .line 441
    invoke-virtual {v7}, Lc8/mxf;->fetch()Lc8/nxf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
