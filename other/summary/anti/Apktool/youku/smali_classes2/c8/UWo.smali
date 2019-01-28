.class public Lc8/UWo;
.super Ljava/lang/Object;
.source "Html.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/HWo;,
        Lc8/IWo;,
        Lc8/PWo;,
        Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;,
        Lc8/JWo;,
        Lc8/LWo;,
        Lc8/MWo;,
        Lc8/KWo;,
        Lc8/RWo;,
        Lc8/SWo;,
        Lc8/FWo;,
        Lc8/OWo;,
        Lc8/QWo;,
        Lc8/EWo;,
        Lc8/TWo;,
        Lc8/NWo;,
        Lc8/GWo;
    }
.end annotation


# static fields
.field private static COLORS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_SIZES:[F


# instance fields
.field private mCustomEllipsis:Ljava/lang/String;

.field private mDisplayCount:I

.field private mDivHasAlign:Z

.field private mHasCustomSpan:Z

.field private mImageGetter:Lc8/AWo;

.field private mNeedAddEllipse:Z

.field private mNeedControlDisplayCount:Z

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Lc8/BWo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lc8/UWo;->HEADER_SIZES:[F

    .line 880
    invoke-static {}, Lc8/UWo;->buildColorMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lc8/UWo;->COLORS:Ljava/util/HashMap;

    return-void

    .line 107
    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/AWo;Lc8/BWo;Lorg/xml/sax/XMLReader;ILjava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Lc8/AWo;
    .param p3, "tagHandler"    # Lc8/BWo;
    .param p4, "parser"    # Lorg/xml/sax/XMLReader;
    .param p5, "displayCount"    # I
    .param p6, "customEllipsis"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v0, p0, Lc8/UWo;->mNeedControlDisplayCount:Z

    .line 112
    iput-boolean v0, p0, Lc8/UWo;->mNeedAddEllipse:Z

    .line 490
    iput-boolean v0, p0, Lc8/UWo;->mDivHasAlign:Z

    .line 573
    iput-boolean v0, p0, Lc8/UWo;->mHasCustomSpan:Z

    .line 125
    iput-object p1, p0, Lc8/UWo;->mSource:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 127
    iput-object p2, p0, Lc8/UWo;->mImageGetter:Lc8/AWo;

    .line 128
    iput-object p3, p0, Lc8/UWo;->mTagHandler:Lc8/BWo;

    .line 129
    iput-object p4, p0, Lc8/UWo;->mReader:Lorg/xml/sax/XMLReader;

    .line 130
    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/UWo;->mNeedControlDisplayCount:Z

    .line 132
    iput p5, p0, Lc8/UWo;->mDisplayCount:I

    .line 134
    :cond_0
    iput-object p6, p0, Lc8/UWo;->mCustomEllipsis:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private addEllipse(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "customEllipsis"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x21

    .line 686
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 687
    invoke-direct {p0, p2}, Lc8/UWo;->parseCustomEllipsis(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 688
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$CustomEllipsis;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HWo;

    .line 689
    .local v0, "item":Lc8/HWo;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 690
    .local v3, "where":I
    invoke-static {v0}, Lc8/HWo;->access$1100(Lc8/HWo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 691
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 692
    .local v1, "len":I
    invoke-static {v0}, Lc8/HWo;->access$1200(Lc8/HWo;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 693
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Lc8/HWo;->access$1200(Lc8/HWo;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v5, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 695
    :cond_1
    invoke-static {v0}, Lc8/HWo;->access$1300(Lc8/HWo;)I

    move-result v5

    if-lez v5, :cond_0

    .line 696
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {v0}, Lc8/HWo;->access$1300(Lc8/HWo;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1, v5, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 703
    .end local v0    # "item":Lc8/HWo;
    .end local v1    # "len":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$CustomEllipsis;>;"
    .end local v3    # "where":I
    :cond_2
    return-void
.end method

.method private static buildColorMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 884
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string/jumbo v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string/jumbo v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string/jumbo v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string/jumbo v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string/jumbo v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string/jumbo v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string/jumbo v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string/jumbo v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string/jumbo v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string/jumbo v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string/jumbo v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string/jumbo v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string/jumbo v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string/jumbo v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string/jumbo v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-object v0
.end method

.method private static end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "repl"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 356
    .local v0, "len":I
    invoke-static {p0, p1}, Lc8/UWo;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 357
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 359
    .local v2, "where":I
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 361
    if-eq v2, v0, :cond_0

    .line 362
    const/16 v3, 0x21

    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 365
    :cond_0
    return-void
.end method

.method private static endA(Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 475
    .local v1, "len":I
    const-class v4, Lc8/MWo;

    invoke-static {p0, v4}, Lc8/UWo;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 476
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 478
    .local v3, "where":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 480
    if-eq v3, v1, :cond_0

    move-object v0, v2

    .line 481
    check-cast v0, Lc8/MWo;

    .line 483
    .local v0, "h":Lc8/MWo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lc8/MWo;->mHref:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 484
    new-instance v4, Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;

    iget-object v5, v0, Lc8/MWo;->mHref:Ljava/lang/String;

    iget-object v6, v0, Lc8/MWo;->mId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 488
    .end local v0    # "h":Lc8/MWo;
    :cond_0
    return-void
.end method

.method private endDiv(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 504
    invoke-static {p1}, Lc8/UWo;->handleDiv(Landroid/text/SpannableStringBuilder;)V

    .line 505
    iget-boolean v4, p0, Lc8/UWo;->mDivHasAlign:Z

    if-eqz v4, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 507
    .local v1, "len":I
    const-class v4, Lc8/JWo;

    invoke-static {p1, v4}, Lc8/UWo;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 508
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 510
    .local v3, "where":I
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 512
    if-eq v3, v1, :cond_0

    move-object v0, v2

    .line 513
    check-cast v0, Lc8/JWo;

    .line 514
    .local v0, "div":Lc8/JWo;
    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v0}, Lc8/JWo;->access$800(Lc8/JWo;)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v5, 0x21

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 517
    .end local v0    # "div":Lc8/JWo;
    .end local v1    # "len":I
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "where":I
    :cond_0
    return-void
.end method

.method private static endFont(Landroid/text/SpannableStringBuilder;)V
    .locals 15
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v14, 0x21

    .line 424
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 425
    .local v9, "len":I
    const-class v0, Lc8/KWo;

    invoke-static {p0, v0}, Lc8/UWo;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    .line 426
    .local v11, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v11}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 428
    .local v13, "where":I
    invoke-virtual {p0, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 430
    if-eq v13, v9, :cond_2

    move-object v8, v11

    .line 431
    check-cast v8, Lc8/KWo;

    .line 433
    .local v8, "f":Lc8/KWo;
    iget-object v0, v8, Lc8/KWo;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, v8, Lc8/KWo;->mColor:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 436
    .local v12, "res":Landroid/content/res/Resources;
    iget-object v0, v8, Lc8/KWo;->mColor:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v0, "color"

    const-string/jumbo v3, "android"

    invoke-virtual {v12, v10, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 438
    .local v7, "colorRes":I
    if-eqz v7, :cond_0

    .line 439
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 440
    .local v4, "colors":Landroid/content/res/ColorStateList;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 454
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v0, v8, Lc8/KWo;->mFace:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 455
    new-instance v0, Landroid/text/style/TypefaceSpan;

    iget-object v1, v8, Lc8/KWo;->mFace:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 459
    :cond_1
    iget v0, v8, Lc8/KWo;->mSize:I

    if-lez v0, :cond_2

    .line 460
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget v1, v8, Lc8/KWo;->mSize:I

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p0, v0, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 463
    .end local v8    # "f":Lc8/KWo;
    :cond_2
    return-void

    .line 445
    .restart local v8    # "f":Lc8/KWo;
    :cond_3
    iget-object v0, v8, Lc8/KWo;->mColor:Ljava/lang/String;

    invoke-static {v0}, Lc8/UWo;->getHtmlColor(Ljava/lang/String;)I

    move-result v6

    .line 446
    .local v6, "c":I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 447
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x1000000

    or-int/2addr v1, v6

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static endHeader(Landroid/text/SpannableStringBuilder;)V
    .locals 8
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v7, 0x21

    .line 520
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 521
    .local v1, "len":I
    const-class v4, Lc8/LWo;

    invoke-static {p0, v4}, Lc8/UWo;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 523
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 525
    .local v3, "where":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 528
    :goto_0
    if-le v1, v3, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 529
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 532
    :cond_0
    if-eq v3, v1, :cond_1

    move-object v0, v2

    .line 533
    check-cast v0, Lc8/LWo;

    .line 535
    .local v0, "h":Lc8/LWo;
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    sget-object v5, Lc8/UWo;->HEADER_SIZES:[F

    invoke-static {v0}, Lc8/LWo;->access$900(Lc8/LWo;)I

    move-result v6

    aget v5, v5, v6

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 537
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 540
    .end local v0    # "h":Lc8/LWo;
    :cond_1
    return-void
.end method

.method private static getHtmlColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 910
    sget-object v1, Lc8/UWo;->COLORS:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 911
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 914
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "objs":[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x0

    .line 344
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static handleBr(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 331
    const-string/jumbo v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 332
    return-void
.end method

.method private static handleDiv(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 321
    .local v0, "len":I
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 250
    iget-object v0, p0, Lc8/UWo;->mTagHandler:Lc8/BWo;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lc8/UWo;->mTagHandler:Lc8/BWo;

    iget-object v1, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-interface {v0, v5, p1, v1, v2}, Lc8/BWo;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-boolean v0, p0, Lc8/UWo;->mNeedControlDisplayCount:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lc8/UWo;->mDisplayCount:I

    if-lez v0, :cond_0

    .line 260
    :cond_2
    const-string/jumbo v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->handleBr(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 262
    :cond_3
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 264
    :cond_4
    const-string/jumbo v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lc8/UWo;->endDiv(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 266
    :cond_5
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/GWo;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :cond_6
    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/GWo;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :cond_7
    const-string/jumbo v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/NWo;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 272
    :cond_8
    const-string/jumbo v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/NWo;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 274
    :cond_9
    const-string/jumbo v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/NWo;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 276
    :cond_a
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/NWo;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 278
    :cond_b
    const-string/jumbo v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 279
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/EWo;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 280
    :cond_c
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 281
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/QWo;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 282
    :cond_d
    const-string/jumbo v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 283
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->endFont(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 284
    :cond_e
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 285
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 286
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lc8/UWo;->endBlockQuote(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 287
    :cond_f
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/OWo;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 290
    :cond_10
    const-string/jumbo v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 291
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->endA(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 292
    :cond_11
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 293
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/TWo;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 294
    :cond_12
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 295
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/SWo;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 296
    :cond_13
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 297
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lc8/RWo;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lc8/UWo;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 298
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 299
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 302
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->endHeader(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0
.end method

.method private static handleP(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 309
    .local v0, "len":I
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    if-eqz v0, :cond_0

    .line 314
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lc8/UWo;->mTagHandler:Lc8/BWo;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lc8/UWo;->mTagHandler:Lc8/BWo;

    iget-object v1, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, p1, v1, p2}, Lc8/BWo;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-boolean v0, p0, Lc8/UWo;->mNeedControlDisplayCount:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lc8/UWo;->mDisplayCount:I

    if-lez v0, :cond_0

    .line 201
    :cond_2
    const-string/jumbo v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 206
    :cond_3
    const-string/jumbo v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lc8/UWo;->startDiv(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 208
    :cond_4
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/GWo;

    invoke-direct {v1, v2}, Lc8/GWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_5
    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/GWo;

    invoke-direct {v1, v2}, Lc8/GWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_6
    const-string/jumbo v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/NWo;

    invoke-direct {v1, v2}, Lc8/NWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_7
    const-string/jumbo v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 215
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/NWo;

    invoke-direct {v1, v2}, Lc8/NWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 216
    :cond_8
    const-string/jumbo v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/NWo;

    invoke-direct {v1, v2}, Lc8/NWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 218
    :cond_9
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 219
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/NWo;

    invoke-direct {v1, v2}, Lc8/NWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 220
    :cond_a
    const-string/jumbo v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/EWo;

    invoke-direct {v1, v2}, Lc8/EWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 222
    :cond_b
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 223
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/QWo;

    invoke-direct {v1, v2}, Lc8/QWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 224
    :cond_c
    const-string/jumbo v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lc8/UWo;->startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 226
    :cond_d
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 227
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 228
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0, p2}, Lc8/UWo;->startBlockQuote(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 229
    :cond_e
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 230
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/OWo;

    invoke-direct {v1, v2}, Lc8/OWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 231
    :cond_f
    const-string/jumbo v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lc8/UWo;->startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 233
    :cond_10
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 234
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/TWo;

    invoke-direct {v1, v2}, Lc8/TWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 235
    :cond_11
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 236
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/SWo;

    invoke-direct {v1, v2}, Lc8/SWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 237
    :cond_12
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 238
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/RWo;

    invoke-direct {v1, v2}, Lc8/RWo;-><init>(Lc8/DWo;)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 239
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_14

    .line 241
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_14

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_14

    .line 242
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lc8/UWo;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 243
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lc8/LWo;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lc8/LWo;-><init>(I)V

    invoke-static {v0, v1}, Lc8/UWo;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 244
    :cond_14
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lc8/UWo;->mImageGetter:Lc8/AWo;

    invoke-static {v0, p2, v1}, Lc8/UWo;->startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lc8/AWo;)V

    goto/16 :goto_0
.end method

.method private parseCustomEllipsis(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "customEllipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/HWo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$CustomEllipsis;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 709
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 710
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 711
    new-instance v2, Lc8/HWo;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lc8/HWo;-><init>(Lc8/DWo;)V

    .line 712
    .local v2, "ellipsis":Lc8/HWo;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6}, Lc8/HWo;->access$1102(Lc8/HWo;Ljava/lang/String;)Ljava/lang/String;

    .line 713
    invoke-static {v2}, Lc8/HWo;->access$1100(Lc8/HWo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 714
    .local v0, "attr":Lorg/json/JSONObject;
    const-string/jumbo v6, "color"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 715
    const-string/jumbo v6, "color"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/UWo;->getHtmlColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v6}, Lc8/HWo;->access$1202(Lc8/HWo;I)I

    .line 717
    :cond_0
    const-string/jumbo v6, "fontSize"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 718
    const-string/jumbo v6, "fontSize"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/UWo;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lc8/hXo;->dip2px(F)I

    move-result v6

    invoke-static {v2, v6}, Lc8/HWo;->access$1302(Lc8/HWo;I)I

    .line 723
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    .end local v0    # "attr":Lorg/json/JSONObject;
    .end local v2    # "ellipsis":Lc8/HWo;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v5
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 369
    if-nez p0, :cond_0

    .line 377
    :goto_0
    return v1

    .line 373
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "mark"    # Ljava/lang/Object;

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 350
    .local v0, "len":I
    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 351
    return-void
.end method

.method private static startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 466
    const-string/jumbo v3, ""

    const-string/jumbo v4, "href"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "href":Ljava/lang/String;
    const-string/jumbo v3, ""

    const-string/jumbo v4, "id"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 470
    .local v2, "len":I
    new-instance v3, Lc8/MWo;

    invoke-direct {v3, v0, v1}, Lc8/MWo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-virtual {p0, v3, v2, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 471
    return-void
.end method

.method private startDiv(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 492
    const-string/jumbo v2, ""

    const-string/jumbo v3, "align"

    invoke-interface {p2, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "align":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 494
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/UWo;->mDivHasAlign:Z

    .line 495
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 496
    .local v1, "len":I
    new-instance v2, Lc8/JWo;

    invoke-direct {v2, v0}, Lc8/JWo;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 500
    .end local v1    # "len":I
    :goto_0
    invoke-static {p1}, Lc8/UWo;->handleDiv(Landroid/text/SpannableStringBuilder;)V

    .line 501
    return-void

    .line 498
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/UWo;->mDivHasAlign:Z

    goto :goto_0
.end method

.method private static startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 415
    const-string/jumbo v4, ""

    const-string/jumbo v5, "color"

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "color":Ljava/lang/String;
    const-string/jumbo v4, ""

    const-string/jumbo v5, "face"

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "face":Ljava/lang/String;
    const-string/jumbo v4, ""

    const-string/jumbo v5, "fontsize"

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/UWo;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lc8/hXo;->toPixelFromDIP(F)F

    move-result v4

    float-to-int v3, v4

    .line 419
    .local v3, "size":I
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 420
    .local v2, "len":I
    new-instance v4, Lc8/KWo;

    invoke-direct {v4, v0, v1, v3}, Lc8/KWo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v5, 0x11

    invoke-virtual {p0, v4, v2, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 421
    return-void
.end method

.method private static startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lc8/AWo;)V
    .locals 8
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "img"    # Lc8/AWo;

    .prologue
    .line 390
    const-string/jumbo v5, ""

    const-string/jumbo v6, "src"

    invoke-interface {p1, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "src":Ljava/lang/String;
    const/4 v0, 0x0

    .line 394
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v5, ""

    const-string/jumbo v6, "width"

    invoke-interface {p1, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/UWo;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 395
    .local v4, "width":I
    const-string/jumbo v5, ""

    const-string/jumbo v6, "height"

    invoke-interface {p1, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/UWo;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 396
    .local v1, "height":I
    int-to-float v5, v4

    invoke-static {v5}, Lc8/hXo;->toPixelFromDIP(F)F

    move-result v5

    float-to-int v4, v5

    .line 397
    int-to-float v5, v1

    invoke-static {v5}, Lc8/hXo;->toPixelFromDIP(F)F

    move-result v5

    float-to-int v1, v5

    .line 398
    if-eqz p2, :cond_0

    .line 399
    invoke-interface {p2, v3, v4, v1}, Lc8/AWo;->getDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 402
    :cond_0
    if-nez v0, :cond_1

    .line 411
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 407
    .local v2, "len":I
    const-string/jumbo v5, "\ufffc"

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 409
    new-instance v5, Lc8/PWo;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v3, v6}, Lc8/PWo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {p0, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 9
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x20

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-boolean v5, p0, Lc8/UWo;->mNeedControlDisplayCount:Z

    if-eqz v5, :cond_2

    .line 632
    iget v5, p0, Lc8/UWo;->mDisplayCount:I

    if-gtz v5, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget v5, p0, Lc8/UWo;->mDisplayCount:I

    sub-int/2addr v5, p3

    if-gtz v5, :cond_2

    .line 637
    iget p3, p0, Lc8/UWo;->mDisplayCount:I

    .line 638
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/UWo;->mNeedAddEllipse:Z

    .line 648
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_8

    .line 649
    add-int v5, v1, p2

    aget-char v0, p1, v5

    .line 651
    .local v0, "c":C
    if-eq v0, v7, :cond_3

    if-ne v0, v8, :cond_7

    .line 653
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 654
    .local v2, "len":I
    if-nez v2, :cond_6

    .line 655
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 657
    if-nez v2, :cond_5

    .line 658
    const/16 v3, 0xa

    .line 666
    .local v3, "pred":C
    :goto_2
    if-eq v3, v7, :cond_4

    if-eq v3, v8, :cond_4

    .line 667
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 660
    .restart local v2    # "len":I
    :cond_5
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .restart local v3    # "pred":C
    goto :goto_2

    .line 663
    .end local v3    # "pred":C
    :cond_6
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .restart local v3    # "pred":C
    goto :goto_2

    .line 670
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 675
    .end local v0    # "c":C
    :cond_8
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 676
    iget-boolean v5, p0, Lc8/UWo;->mNeedAddEllipse:Z

    if-eqz v5, :cond_9

    .line 677
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lc8/UWo;->mCustomEllipsis:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lc8/UWo;->addEllipse(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 680
    :cond_9
    iget-boolean v5, p0, Lc8/UWo;->mNeedControlDisplayCount:Z

    if-eqz v5, :cond_0

    .line 681
    iget v5, p0, Lc8/UWo;->mDisplayCount:I

    sub-int/2addr v5, p3

    iput v5, p0, Lc8/UWo;->mDisplayCount:I

    goto :goto_0
.end method

.method public convert(I)Landroid/text/Spanned;
    .locals 11
    .param p1, "lineHeight"    # I

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 139
    iget-object v5, p0, Lc8/UWo;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 141
    :try_start_0
    iget-object v5, p0, Lc8/UWo;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    iget-object v8, p0, Lc8/UWo;->mSource:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    if-lez p1, :cond_0

    .line 151
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Lc8/LYf;

    invoke-direct {v6, p1}, Lc8/LYf;-><init>(I)V

    iget-object v7, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :cond_0
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v7, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v5, v9, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 155
    .local v3, "obj":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 156
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 157
    .local v4, "start":I
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 160
    .local v1, "end":I
    add-int/lit8 v5, v1, -0x2

    if-ltz v5, :cond_1

    .line 161
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_1

    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v1, -0x2

    .line 162
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_1

    .line 163
    add-int/lit8 v1, v1, -0x1

    .line 167
    :cond_1
    if-ne v1, v4, :cond_2

    .line 168
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 155
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "obj":[Ljava/lang/Object;
    .end local v4    # "start":I
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 170
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v3    # "obj":[Ljava/lang/Object;
    .restart local v4    # "start":I
    :cond_2
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    const/16 v7, 0x33

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 175
    .end local v1    # "end":I
    .end local v4    # "start":I
    :cond_3
    iget-object v5, p0, Lc8/UWo;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v5
.end method

.method public endBlockQuote(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v5, 0x21

    .line 607
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 609
    .local v1, "len":I
    iget-boolean v4, p0, Lc8/UWo;->mHasCustomSpan:Z

    if-eqz v4, :cond_1

    .line 610
    const-class v4, Lc8/IWo;

    invoke-static {p1, v4}, Lc8/UWo;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 614
    .local v2, "obj":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 616
    .local v3, "where":I
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 618
    if-eq v3, v1, :cond_0

    .line 619
    iget-boolean v4, p0, Lc8/UWo;->mHasCustomSpan:Z

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 620
    check-cast v0, Lc8/IWo;

    .line 621
    .local v0, "customQuoteSpan":Lc8/IWo;
    new-instance v4, Lc8/IWo;

    invoke-direct {v4, p0, v0}, Lc8/IWo;-><init>(Lc8/UWo;Lc8/IWo;)V

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 626
    .end local v0    # "customQuoteSpan":Lc8/IWo;
    :cond_0
    :goto_1
    return-void

    .line 612
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "where":I
    :cond_1
    const-class v4, Lc8/FWo;

    invoke-static {p1, v4}, Lc8/UWo;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 623
    .restart local v3    # "where":I
    :cond_2
    new-instance v4, Landroid/text/style/QuoteSpan;

    invoke-direct {v4}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 552
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0, p2}, Lc8/UWo;->handleEndTag(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 560
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 733
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 737
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 544
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 741
    return-void
.end method

.method public startBlockQuote(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/16 v12, 0x11

    .line 575
    const-string/jumbo v0, "backgroundcolor"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 576
    .local v6, "bgColor":Ljava/lang/String;
    const-string/jumbo v0, "stripecolor"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 577
    .local v10, "stripeColor":Ljava/lang/String;
    const-string/jumbo v0, "stripewidth"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 578
    .local v11, "stripeWidth":Ljava/lang/String;
    const-string/jumbo v0, "gap"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, "gap":Ljava/lang/String;
    if-nez v6, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    if-eqz v8, :cond_1

    .line 580
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/UWo;->mHasCustomSpan:Z

    .line 585
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 586
    .local v9, "len":I
    iget-boolean v0, p0, Lc8/UWo;->mHasCustomSpan:Z

    if-eqz v0, :cond_2

    .line 587
    const/4 v2, -0x1

    .line 588
    .local v2, "bgColorInt":I
    const/4 v3, -0x1

    .line 589
    .local v3, "stripeColorInt":I
    const/4 v4, 0x0

    .line 590
    .local v4, "stripeWidthF":F
    const/4 v5, 0x0

    .line 592
    .local v5, "gapF":F
    :try_start_0
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 593
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 594
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 595
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 600
    :goto_1
    new-instance v0, Lc8/IWo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/IWo;-><init>(Lc8/UWo;IIFF)V

    invoke-virtual {p1, v0, v9, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 604
    .end local v2    # "bgColorInt":I
    .end local v3    # "stripeColorInt":I
    .end local v4    # "stripeWidthF":F
    .end local v5    # "gapF":F
    :goto_2
    return-void

    .line 582
    .end local v9    # "len":I
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/UWo;->mHasCustomSpan:Z

    goto :goto_0

    .line 596
    .restart local v2    # "bgColorInt":I
    .restart local v3    # "stripeColorInt":I
    .restart local v4    # "stripeWidthF":F
    .restart local v5    # "gapF":F
    .restart local v9    # "len":I
    :catch_0
    move-exception v7

    .line 597
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 602
    .end local v2    # "bgColorInt":I
    .end local v3    # "stripeColorInt":I
    .end local v4    # "stripeWidthF":F
    .end local v5    # "gapF":F
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Lc8/FWo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/FWo;-><init>(Lc8/DWo;)V

    invoke-virtual {p1, v0, v9, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 548
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0, p2, p4}, Lc8/UWo;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 566
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 556
    return-void
.end method
