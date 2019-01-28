.class public Lc8/IZb;
.super Landroid/widget/FrameLayout;
.source "Window.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/HZb;,
        Lc8/GZb;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Window"

.field public static final VISIBILITY_GONE:I = 0x0

.field public static final VISIBILITY_TRANSITION:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x1


# instance fields
.field public cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;"
        }
    .end annotation
.end field

.field public data:Landroid/os/Bundle;

.field displayHeight:I

.field displayWidth:I

.field public flags:I

.field public focused:Z

.field public id:I

.field private final mContext:Lc8/uZb;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public originalParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

.field public touchInfo:Lc8/vZb;

.field public visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IZb;->mContext:Lc8/uZb;

    .line 88
    return-void
.end method

.method public constructor <init>(Lc8/uZb;I)V
    .locals 6
    .param p1, "context"    # Lc8/uZb;
    .param p2, "id"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lc8/uZb;->setTheme(I)V

    .line 94
    iput-object p1, p0, Lc8/IZb;->mContext:Lc8/uZb;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lc8/IZb;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lc8/IZb;->cls:Ljava/lang/Class;

    .line 98
    iput p2, p0, Lc8/IZb;->id:I

    .line 99
    invoke-virtual {p1, p2, p0}, Lc8/uZb;->getParams(ILc8/IZb;)Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v3

    iput-object v3, p0, Lc8/IZb;->originalParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    .line 100
    iget v3, p1, Lc8/uZb;->mFlags:I

    iput v3, p0, Lc8/IZb;->flags:I

    .line 101
    new-instance v3, Lc8/vZb;

    invoke-direct {v3}, Lc8/vZb;-><init>()V

    iput-object v3, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    .line 102
    iget-object v3, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-object v4, p0, Lc8/IZb;->originalParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v4, v4, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v4, v4

    iget-object v5, p0, Lc8/IZb;->originalParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v5, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lc8/vZb;->ratio:F

    .line 103
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lc8/IZb;->data:Landroid/os/Bundle;

    .line 104
    iget-object v3, p0, Lc8/IZb;->mContext:Lc8/uZb;

    invoke-virtual {v3}, Lc8/uZb;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 105
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lc8/IZb;->displayWidth:I

    .line 106
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x41c80000    # 25.0f

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lc8/IZb;->displayHeight:I

    .line 112
    iget v3, p0, Lc8/IZb;->flags:I

    sget v4, Lc8/pZb;->FLAG_DECORATION_SYSTEM:I

    invoke-static {v3, v4}, Lc8/wZb;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-direct {p0}, Lc8/IZb;->getSystemDecorations()Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "content":Landroid/view/View;
    sget v3, Lcom/youku/phone/R$id;->body:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 123
    .local v0, "body":Landroid/widget/FrameLayout;
    :goto_0
    invoke-virtual {p0, v1}, Lc8/IZb;->addView(Landroid/view/View;)V

    .line 125
    new-instance v3, Lc8/xZb;

    invoke-direct {v3, p0, p1, p2}, Lc8/xZb;-><init>(Lc8/IZb;Lc8/uZb;I)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    invoke-virtual {p1, p2, v0}, Lc8/uZb;->createAndAttachView(ILandroid/widget/FrameLayout;)V

    .line 147
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 148
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "You must attach your view to the given frame in createAndAttachView()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    .end local v0    # "body":Landroid/widget/FrameLayout;
    .end local v1    # "content":Landroid/view/View;
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v1    # "content":Landroid/view/View;
    sget v3, Lcom/youku/phone/R$id;->content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    move-object v0, v1

    .line 120
    check-cast v0, Landroid/widget/FrameLayout;

    .restart local v0    # "body":Landroid/widget/FrameLayout;
    goto :goto_0

    .line 152
    :cond_1
    iget v3, p0, Lc8/IZb;->flags:I

    sget v4, Lc8/pZb;->FLAG_FIX_COMPATIBILITY_ALL_DISABLE:I

    invoke-static {v3, v4}, Lc8/wZb;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    invoke-virtual {p0, v0}, Lc8/IZb;->fixCompatibility(Landroid/view/View;)V

    .line 156
    :cond_2
    iget v3, p0, Lc8/IZb;->flags:I

    sget v4, Lc8/pZb;->FLAG_ADD_FUNCTIONALITY_ALL_DISABLE:I

    invoke-static {v3, v4}, Lc8/wZb;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 157
    invoke-virtual {p0, v0}, Lc8/IZb;->addFunctionality(Landroid/view/View;)V

    .line 161
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/IZb;->setTag(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lc8/IZb;)Lc8/uZb;
    .locals 1
    .param p0, "x0"    # Lc8/IZb;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/IZb;->mContext:Lc8/uZb;

    return-object v0
.end method

.method private getSystemDecorations()Landroid/view/View;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 343
    iget-object v8, p0, Lc8/IZb;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/youku/phone/R$layout;->console_window_bar:I

    invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, "decorations":Landroid/view/View;
    sget v8, Lcom/youku/phone/R$id;->window_icon:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 347
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v8, p0, Lc8/IZb;->mContext:Lc8/uZb;

    iget v8, v8, Lc8/uZb;->mIcon:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    new-instance v8, Lc8/yZb;

    invoke-direct {v8, p0, v4}, Lc8/yZb;-><init>(Lc8/IZb;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    sget v8, Lcom/youku/phone/R$id;->title:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 361
    .local v6, "title":Landroid/widget/TextView;
    iget-object v8, p0, Lc8/IZb;->mContext:Lc8/uZb;

    iget-object v8, v8, Lc8/uZb;->mAppName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    sget v8, Lcom/youku/phone/R$id;->min_window:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 365
    .local v3, "hide":Landroid/view/View;
    new-instance v8, Lc8/zZb;

    invoke-direct {v8, p0}, Lc8/zZb;-><init>(Lc8/IZb;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 375
    sget v8, Lcom/youku/phone/R$id;->max_window:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 376
    .local v5, "maximize":Landroid/view/View;
    new-instance v8, Lc8/AZb;

    invoke-direct {v8, p0}, Lc8/AZb;-><init>(Lc8/IZb;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    sget v8, Lcom/youku/phone/R$id;->close_window:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "close":Landroid/view/View;
    new-instance v8, Lc8/BZb;

    invoke-direct {v8, p0}, Lc8/BZb;-><init>(Lc8/IZb;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    sget v8, Lcom/youku/phone/R$id;->ll_console_windowbar:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 413
    .local v7, "titlebar":Landroid/view/View;
    new-instance v8, Lc8/CZb;

    invoke-direct {v8, p0}, Lc8/CZb;-><init>(Lc8/IZb;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    sget v8, Lcom/youku/phone/R$id;->corner:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 425
    .local v1, "corner":Landroid/view/View;
    new-instance v8, Lc8/DZb;

    invoke-direct {v8, p0}, Lc8/DZb;-><init>(Lc8/IZb;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    iget v8, p0, Lc8/IZb;->flags:I

    sget v9, Lc8/pZb;->FLAG_WINDOW_HIDE_ENABLE:I

    invoke-static {v8, v9}, Lc8/wZb;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 438
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_0
    iget v8, p0, Lc8/IZb;->flags:I

    sget v9, Lc8/pZb;->FLAG_DECORATION_MAXIMIZE_DISABLE:I

    invoke-static {v8, v9}, Lc8/wZb;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 441
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_1
    iget v8, p0, Lc8/IZb;->flags:I

    sget v9, Lc8/pZb;->FLAG_DECORATION_CLOSE_DISABLE:I

    invoke-static {v8, v9}, Lc8/wZb;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 444
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_2
    iget v8, p0, Lc8/IZb;->flags:I

    sget v9, Lc8/pZb;->FLAG_DECORATION_MOVE_DISABLE:I

    invoke-static {v8, v9}, Lc8/wZb;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 447
    invoke-virtual {v7, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    :cond_3
    iget v8, p0, Lc8/IZb;->flags:I

    sget v9, Lc8/pZb;->FLAG_DECORATION_RESIZE_DISABLE:I

    invoke-static {v8, v9}, Lc8/wZb;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 450
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_4
    return-object v2
.end method


# virtual methods
.method addFunctionality(Landroid/view/View;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 471
    iget v2, p0, Lc8/IZb;->flags:I

    sget v3, Lc8/pZb;->FLAG_ADD_FUNCTIONALITY_RESIZE_DISABLE:I

    invoke-static {v2, v3}, Lc8/wZb;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    sget v2, Lcom/youku/phone/R$id;->corner:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 473
    .local v0, "corner":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 474
    new-instance v2, Lc8/EZb;

    invoke-direct {v2, p0}, Lc8/EZb;-><init>(Lc8/IZb;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    .end local v0    # "corner":Landroid/view/View;
    :cond_0
    iget v2, p0, Lc8/IZb;->flags:I

    sget v3, Lc8/pZb;->FLAG_ADD_FUNCTIONALITY_DROP_DOWN_DISABLE:I

    invoke-static {v2, v3}, Lc8/wZb;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 489
    sget v2, Lcom/youku/phone/R$id;->window_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, "icon":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 491
    new-instance v2, Lc8/FZb;

    invoke-direct {v2, p0, v1}, Lc8/FZb;-><init>(Lc8/IZb;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    .end local v1    # "icon":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 244
    :pswitch_0
    iget-object v1, p0, Lc8/IZb;->mContext:Lc8/uZb;

    invoke-virtual {v1, p0}, Lc8/uZb;->unfocus(Lc8/IZb;)Z

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public edit()Lc8/GZb;
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lc8/GZb;

    invoke-direct {v0, p0}, Lc8/GZb;-><init>(Lc8/IZb;)V

    return-object v0
.end method

.method fixCompatibility(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 518
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 519
    .local v2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 526
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 527
    check-cast v0, Landroid/view/ViewGroup;

    .line 528
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 529
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    .line 335
    .local v0, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lc8/IZb;->originalParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    .line 338
    :cond_0
    return-object v0
.end method

.method public onFocus(Z)Z
    .locals 5
    .param p1, "focus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 260
    iget v3, p0, Lc8/IZb;->flags:I

    sget v4, Lc8/pZb;->FLAG_WINDOW_FOCUSABLE_DISABLE:I

    invoke-static {v3, v4}, Lc8/wZb;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    iget-boolean v3, p0, Lc8/IZb;->focused:Z

    if-ne p1, v3, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v2

    .line 268
    :cond_1
    iput-boolean p1, p0, Lc8/IZb;->focused:Z

    .line 277
    iget v3, p0, Lc8/IZb;->flags:I

    sget v4, Lc8/pZb;->FLAG_WINDOW_FOCUS_INDICATOR_DISABLE:I

    invoke-static {v3, v4}, Lc8/wZb;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    sget v3, Lcom/youku/phone/R$id;->content:I

    invoke-virtual {p0, v3}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "content":Landroid/view/View;
    if-eqz p1, :cond_4

    .line 282
    sget v2, Lcom/youku/phone/R$drawable;->border_focused:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    .end local v0    # "content":Landroid/view/View;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    .line 297
    .local v1, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    invoke-virtual {v1, p1}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->setFocusFlag(Z)V

    .line 298
    iget-object v2, p0, Lc8/IZb;->mContext:Lc8/uZb;

    iget v3, p0, Lc8/IZb;->id:I

    invoke-virtual {v2, v3, v1}, Lc8/uZb;->updateViewLayout(ILcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;)V

    .line 300
    if-eqz p1, :cond_6

    .line 301
    iget-object v2, p0, Lc8/IZb;->mContext:Lc8/uZb;

    invoke-virtual {v2, p0}, Lc8/uZb;->setFocusedWindow(Lc8/IZb;)V

    .line 308
    :cond_3
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    .restart local v0    # "content":Landroid/view/View;
    :cond_4
    iget v3, p0, Lc8/IZb;->flags:I

    sget v4, Lc8/pZb;->FLAG_DECORATION_SYSTEM:I

    invoke-static {v3, v4}, Lc8/wZb;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 287
    sget v2, Lcom/youku/phone/R$drawable;->border:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 290
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 303
    .end local v0    # "content":Landroid/view/View;
    .restart local v1    # "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    :cond_6
    iget-object v2, p0, Lc8/IZb;->mContext:Lc8/uZb;

    invoke-virtual {v2}, Lc8/uZb;->getFocusedWindow()Lc8/IZb;

    move-result-object v2

    if-ne v2, p0, :cond_3

    .line 304
    iget-object v2, p0, Lc8/IZb;->mContext:Lc8/uZb;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/uZb;->setFocusedWindow(Lc8/IZb;)V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    invoke-virtual {p0}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    .line 169
    .local v0, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lc8/IZb;->mContext:Lc8/uZb;

    invoke-virtual {v1}, Lc8/uZb;->getFocusedWindow()Lc8/IZb;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 171
    iget-object v1, p0, Lc8/IZb;->mContext:Lc8/uZb;

    iget v2, p0, Lc8/IZb;->id:I

    invoke-virtual {v1, v2}, Lc8/uZb;->focus(I)Z

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget v1, p0, Lc8/IZb;->flags:I

    sget v2, Lc8/pZb;->FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

    invoke-static {v1, v2}, Lc8/wZb;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 178
    iget-object v1, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lc8/vZb;->scale:D

    .line 179
    iget-object v1, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Lc8/vZb;->dist:D

    .line 180
    iget-object v1, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v2, v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-double v2, v2

    iput-wide v2, v1, Lc8/vZb;->firstWidth:D

    .line 181
    iget-object v1, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v2, v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-double v2, v2

    iput-wide v2, v1, Lc8/vZb;->firstHeight:D

    .line 182
    const/4 v1, 0x1

    .line 185
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v12, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    iget v6, p0, Lc8/IZb;->flags:I

    sget v7, Lc8/pZb;->FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

    invoke-static {v6, v7}, Lc8/wZb;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 207
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 208
    .local v2, "x0":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 209
    .local v4, "y0":F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 210
    .local v3, "x1":F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 212
    .local v5, "y1":F
    sub-float v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-float v8, v4, v5

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 214
    .local v0, "dist":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_1

    .line 231
    .end local v0    # "dist":D
    .end local v2    # "x0":F
    .end local v3    # "x1":F
    .end local v4    # "y0":F
    .end local v5    # "y1":F
    :cond_1
    :goto_1
    return v12

    .line 194
    :pswitch_0
    iget-object v6, p0, Lc8/IZb;->mContext:Lc8/uZb;

    invoke-virtual {v6}, Lc8/uZb;->getFocusedWindow()Lc8/IZb;

    move-result-object v6

    if-ne v6, p0, :cond_0

    .line 195
    iget-object v6, p0, Lc8/IZb;->mContext:Lc8/uZb;

    invoke-virtual {v6, p0}, Lc8/uZb;->unfocus(Lc8/IZb;)Z

    goto :goto_0

    .line 216
    .restart local v0    # "dist":D
    .restart local v2    # "x0":F
    .restart local v3    # "x1":F
    .restart local v4    # "y0":F
    .restart local v5    # "y1":F
    :pswitch_1
    iget-object v6, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-wide v6, v6, Lc8/vZb;->dist:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 217
    iget-object v6, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iput-wide v0, v6, Lc8/vZb;->dist:D

    .line 219
    :cond_2
    iget-object v6, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-wide v8, v6, Lc8/vZb;->scale:D

    iget-object v7, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-wide v10, v7, Lc8/vZb;->dist:D

    div-double v10, v0, v10

    mul-double/2addr v8, v10

    iput-wide v8, v6, Lc8/vZb;->scale:D

    .line 220
    iget-object v6, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iput-wide v0, v6, Lc8/vZb;->dist:D

    .line 223
    invoke-virtual {p0}, Lc8/IZb;->edit()Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6, v13, v13}, Lc8/GZb;->setAnchorPoint(FF)Lc8/GZb;

    move-result-object v6

    iget-object v7, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-wide v8, v7, Lc8/vZb;->firstWidth:D

    iget-object v7, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-wide v10, v7, Lc8/vZb;->scale:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iget-object v8, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-wide v8, v8, Lc8/vZb;->firstHeight:D

    iget-object v10, p0, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-wide v10, v10, Lc8/vZb;->scale:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lc8/GZb;->setSize(II)Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/GZb;->commit()V

    goto :goto_1

    .line 191
    .line 214
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 315
    instance-of v0, p1, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_0

    .line 316
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IZb;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": LayoutParams must be an instance of StandOutLayoutParams."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
