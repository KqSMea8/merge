.class public Lc8/eWf;
.super Lc8/MXf;
.source "WXPickersModule.java"


# static fields
.field private static final CANCEL:Ljava/lang/String; = "cancel"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final KEY_CANCEL_TITLE:Ljava/lang/String; = "cancelTitle"

.field private static final KEY_CANCEL_TITLE_COLOR:Ljava/lang/String; = "cancelTitleColor"

.field private static final KEY_CONFIRM_TITLE:Ljava/lang/String; = "confirmTitle"

.field private static final KEY_CONFIRM_TITLE_COLOR:Ljava/lang/String; = "confirmTitleColor"

.field private static final KEY_INDEX:Ljava/lang/String; = "index"

.field private static final KEY_ITEMS:Ljava/lang/String; = "items"

.field private static final KEY_MAX:Ljava/lang/String; = "max"

.field private static final KEY_MIN:Ljava/lang/String; = "min"

.field private static final KEY_SELECTION_COLOR:Ljava/lang/String; = "selectionColor"

.field private static final KEY_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TITLE_BACKGROUND_COLOR:Ljava/lang/String; = "titleBackgroundColor"

.field private static final KEY_TITLE_COLOR:Ljava/lang/String; = "titleColor"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private selected:I

.field private selectedView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/eWf;)I
    .locals 1
    .param p0, "x0"    # Lc8/eWf;

    .prologue
    .line 53
    iget v0, p0, Lc8/eWf;->selected:I

    return v0
.end method

.method static synthetic access$002(Lc8/eWf;I)I
    .locals 0
    .param p0, "x0"    # Lc8/eWf;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lc8/eWf;->selected:I

    return p1
.end method

.method static synthetic access$100(Lc8/eWf;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lc8/eWf;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/eWf;->selectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lc8/eWf;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lc8/eWf;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/eWf;->selectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lc8/eWf;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lc8/eWf;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lc8/eWf;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lc8/eWf;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/eWf;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getColor(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 2
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 128
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .restart local p3    # "defValue":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0
.end method

.method private getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "defValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 115
    .end local p3    # "defValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p3

    .restart local p3    # "defValue":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method private makeTitleView(Landroid/content/Context;Ljava/util/Map;)Landroid/widget/TextView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/widget/TextView;"
        }
    .end annotation

    .prologue
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 312
    const-string/jumbo v3, "title"

    invoke-direct {p0, p2, v3, v2}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 325
    :goto_0
    return-object v2

    .line 316
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 317
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    const/4 v3, 0x2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 319
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    .line 320
    .local v0, "padding":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 321
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 322
    const-string/jumbo v3, "titleBackgroundColor"

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Lc8/eWf;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 323
    const-string/jumbo v3, "titleColor"

    const/high16 v4, -0x1000000

    invoke-direct {p0, p2, v3, v4}, Lc8/eWf;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private performPickDate(Ljava/util/Map;Lc8/EWf;)V
    .locals 6
    .param p2, "callback"    # Lc8/EWf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "value"

    const-string/jumbo v4, ""

    invoke-direct {p0, p1, v0, v4}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v0, "max"

    const-string/jumbo v4, ""

    invoke-direct {p0, p1, v0, v4}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "max":Ljava/lang/String;
    const-string/jumbo v0, "min"

    const-string/jumbo v4, ""

    invoke-direct {p0, p1, v0, v4}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "min":Ljava/lang/String;
    iget-object v0, p0, Lc8/eWf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lc8/XVf;

    invoke-direct {v4, p0, p2}, Lc8/XVf;-><init>(Lc8/eWf;Lc8/EWf;)V

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lc8/VVf;->pickDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/UVf;Ljava/util/Map;)V

    .line 182
    return-void
.end method

.method private performPickTime(Ljava/util/Map;Lc8/EWf;)V
    .locals 3
    .param p2, "callback"    # Lc8/EWf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "value"

    const-string/jumbo v2, ""

    invoke-direct {p0, p1, v1, v2}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lc8/eWf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lc8/WVf;

    invoke-direct {v2, p0, p2}, Lc8/WVf;-><init>(Lc8/eWf;Lc8/EWf;)V

    invoke-static {v1, v0, v2, p1}, Lc8/VVf;->pickTime(Landroid/content/Context;Ljava/lang/String;Lc8/UVf;Ljava/util/Map;)V

    .line 153
    return-void
.end method

.method private performSinglePick(Ljava/util/List;Ljava/util/Map;Lc8/EWf;)V
    .locals 9
    .param p3, "callback"    # Lc8/EWf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 185
    const-string/jumbo v0, "index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lc8/eWf;->selected:I

    .line 186
    const-string/jumbo v0, "textColor"

    invoke-direct {p0, p2, v0, v2}, Lc8/eWf;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    .line 188
    .local v5, "textColor":I
    new-instance v8, Lc8/On;

    iget-object v0, p0, Lc8/eWf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lc8/On;-><init>(Landroid/content/Context;)V

    new-instance v0, Lc8/aWf;

    iget-object v1, p0, Lc8/eWf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x109000f

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lc8/aWf;-><init>(Lc8/eWf;Landroid/content/Context;ILjava/util/List;I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lc8/On;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lc8/ZVf;

    invoke-direct {v2, p0, p3}, Lc8/ZVf;-><init>(Lc8/eWf;Lc8/EWf;)V

    invoke-virtual {v0, v1, v2}, Lc8/On;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lc8/YVf;

    invoke-direct {v2, p0, p3}, Lc8/YVf;-><init>(Lc8/eWf;Lc8/EWf;)V

    invoke-virtual {v0, v1, v2}, Lc8/On;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;

    move-result-object v0

    iget-object v1, p0, Lc8/eWf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lc8/eWf;->makeTitleView(Landroid/content/Context;Ljava/util/Map;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/On;->setCustomTitle(Landroid/view/View;)Lc8/On;

    move-result-object v0

    invoke-virtual {v0}, Lc8/On;->create()Lc8/Pn;

    move-result-object v6

    .line 232
    .local v6, "dialog":Lc8/Pn;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 235
    invoke-virtual {v6}, Lc8/Pn;->create()V

    .line 238
    :cond_0
    invoke-virtual {v6}, Lc8/Pn;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 239
    .local v7, "listView":Landroid/widget/ListView;
    new-instance v0, Lc8/bWf;

    invoke-direct {v0, p0, p2}, Lc8/bWf;-><init>(Lc8/eWf;Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    new-instance v0, Lc8/cWf;

    invoke-direct {v0, p0, v7}, Lc8/cWf;-><init>(Lc8/eWf;Landroid/widget/ListView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 272
    invoke-virtual {v6}, Lc8/Pn;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/dWf;

    invoke-direct {v1, p0, v6, p2}, Lc8/dWf;-><init>(Lc8/eWf;Lc8/Pn;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 308
    invoke-virtual {v6}, Lc8/Pn;->show()V

    .line 309
    return-void
.end method

.method private safeConvert(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "src"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "obj":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public pick(Ljava/util/Map;Lc8/EWf;)V
    .locals 4
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "items"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v2, v3}, Lc8/eWf;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lc8/eWf;->safeConvert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lc8/eWf;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lc8/EWf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public pickDate(Ljava/util/Map;Lc8/EWf;)V
    .locals 0
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lc8/eWf;->performPickDate(Ljava/util/Map;Lc8/EWf;)V

    .line 94
    return-void
.end method

.method public pickTime(Ljava/util/Map;Lc8/EWf;)V
    .locals 0
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lc8/eWf;->performPickTime(Ljava/util/Map;Lc8/EWf;)V

    .line 99
    return-void
.end method
